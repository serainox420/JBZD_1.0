package com.facebook.internal;

import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.common.util.ByteConstants;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes.dex */
public final class FileLruCache {
    private static final String HEADER_CACHEKEY_KEY = "key";
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    static final String TAG = FileLruCache.class.getSimpleName();
    private static final AtomicLong bufferIndex = new AtomicLong();
    private final File directory;
    private boolean isTrimInProgress;
    private boolean isTrimPending;
    private final Limits limits;
    private final String tag;
    private AtomicLong lastClearCacheTime = new AtomicLong(0);
    private final Object lock = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface StreamCloseCallback {
        void onClose();
    }

    public FileLruCache(String str, Limits limits) {
        this.tag = str;
        this.limits = limits;
        this.directory = new File(FacebookSdk.getCacheDir(), str);
        if (this.directory.mkdirs() || this.directory.isDirectory()) {
            BufferFile.deleteAll(this.directory);
        }
    }

    long sizeInBytesForTest() {
        synchronized (this.lock) {
            while (true) {
                if (!this.isTrimPending && !this.isTrimInProgress) {
                    break;
                }
                try {
                    this.lock.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        File[] listFiles = this.directory.listFiles();
        long j = 0;
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            while (i < length) {
                long length2 = listFiles[i].length() + j;
                i++;
                j = length2;
            }
        }
        return j;
    }

    public InputStream get(String str) throws IOException {
        return get(str, null);
    }

    public InputStream get(String str, String str2) throws IOException {
        File file = new File(this.directory, Utility.md5hash(str));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), Utility.DEFAULT_STREAM_BUFFER_SIZE);
            try {
                JSONObject readHeader = StreamHeader.readHeader(bufferedInputStream);
                if (readHeader == null) {
                    return null;
                }
                String optString = readHeader.optString("key");
                if (optString == null || !optString.equals(str)) {
                    return null;
                }
                String optString2 = readHeader.optString(HEADER_CACHE_CONTENT_TAG_KEY, null);
                if ((str2 == null && optString2 != null) || (str2 != null && !str2.equals(optString2))) {
                    return null;
                }
                long time = new Date().getTime();
                Logger.log(LoggingBehavior.CACHE, TAG, "Setting lastModified to " + Long.valueOf(time) + " for " + file.getName());
                file.setLastModified(time);
                return bufferedInputStream;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException e) {
            return null;
        }
    }

    public OutputStream openPutStream(String str) throws IOException {
        return openPutStream(str, null);
    }

    public OutputStream openPutStream(final String str, String str2) throws IOException {
        final File newFile = BufferFile.newFile(this.directory);
        newFile.delete();
        if (!newFile.createNewFile()) {
            throw new IOException("Could not create file at " + newFile.getAbsolutePath());
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(newFile);
            final long currentTimeMillis = System.currentTimeMillis();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new CloseCallbackOutputStream(fileOutputStream, new StreamCloseCallback() { // from class: com.facebook.internal.FileLruCache.1
                @Override // com.facebook.internal.FileLruCache.StreamCloseCallback
                public void onClose() {
                    if (currentTimeMillis >= FileLruCache.this.lastClearCacheTime.get()) {
                        FileLruCache.this.renameToTargetAndTrim(str, newFile);
                    } else {
                        newFile.delete();
                    }
                }
            }), Utility.DEFAULT_STREAM_BUFFER_SIZE);
            try {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", str);
                    if (!Utility.isNullOrEmpty(str2)) {
                        jSONObject.put(HEADER_CACHE_CONTENT_TAG_KEY, str2);
                    }
                    StreamHeader.writeHeader(bufferedOutputStream, jSONObject);
                    return bufferedOutputStream;
                } catch (JSONException e) {
                    Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error creating JSON header for cache file: " + e);
                    throw new IOException(e.getMessage());
                }
            } catch (Throwable th) {
                bufferedOutputStream.close();
                throw th;
            }
        } catch (FileNotFoundException e2) {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error creating buffer output stream: " + e2);
            throw new IOException(e2.getMessage());
        }
    }

    public void clearCache() {
        final File[] listFiles = this.directory.listFiles(BufferFile.excludeBufferFiles());
        this.lastClearCacheTime.set(System.currentTimeMillis());
        if (listFiles != null) {
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.internal.FileLruCache.2
                @Override // java.lang.Runnable
                public void run() {
                    for (File file : listFiles) {
                        file.delete();
                    }
                }
            });
        }
    }

    public String getLocation() {
        return this.directory.getPath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renameToTargetAndTrim(String str, File file) {
        if (!file.renameTo(new File(this.directory, Utility.md5hash(str)))) {
            file.delete();
        }
        postTrim();
    }

    public InputStream interceptAndPut(String str, InputStream inputStream) throws IOException {
        return new CopyingInputStream(inputStream, openPutStream(str));
    }

    public String toString() {
        return "{FileLruCache: tag:" + this.tag + " file:" + this.directory.getName() + "}";
    }

    private void postTrim() {
        synchronized (this.lock) {
            if (!this.isTrimPending) {
                this.isTrimPending = true;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.internal.FileLruCache.3
                    @Override // java.lang.Runnable
                    public void run() {
                        FileLruCache.this.trim();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trim() {
        synchronized (this.lock) {
            this.isTrimPending = false;
            this.isTrimInProgress = true;
        }
        try {
            Logger.log(LoggingBehavior.CACHE, TAG, "trim started");
            PriorityQueue priorityQueue = new PriorityQueue();
            long j = 0;
            long j2 = 0;
            File[] listFiles = this.directory.listFiles(BufferFile.excludeBufferFiles());
            if (listFiles != null) {
                int length = listFiles.length;
                int i = 0;
                while (i < length) {
                    File file = listFiles[i];
                    ModifiedFile modifiedFile = new ModifiedFile(file);
                    priorityQueue.add(modifiedFile);
                    Logger.log(LoggingBehavior.CACHE, TAG, "  trim considering time=" + Long.valueOf(modifiedFile.getModified()) + " name=" + modifiedFile.getFile().getName());
                    long length2 = file.length() + j;
                    i++;
                    j2 = 1 + j2;
                    j = length2;
                }
            }
            long j3 = j;
            while (true) {
                long j4 = j2;
                if (j3 > this.limits.getByteCount() || j4 > this.limits.getFileCount()) {
                    File file2 = ((ModifiedFile) priorityQueue.remove()).getFile();
                    Logger.log(LoggingBehavior.CACHE, TAG, "  trim removing " + file2.getName());
                    j3 -= file2.length();
                    j2 = j4 - 1;
                    file2.delete();
                } else {
                    synchronized (this.lock) {
                        this.isTrimInProgress = false;
                        this.lock.notifyAll();
                    }
                    return;
                }
            }
        } catch (Throwable th) {
            synchronized (this.lock) {
                this.isTrimInProgress = false;
                this.lock.notifyAll();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class BufferFile {
        private static final String FILE_NAME_PREFIX = "buffer";
        private static final FilenameFilter filterExcludeBufferFiles = new FilenameFilter() { // from class: com.facebook.internal.FileLruCache.BufferFile.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return !str.startsWith(BufferFile.FILE_NAME_PREFIX);
            }
        };
        private static final FilenameFilter filterExcludeNonBufferFiles = new FilenameFilter() { // from class: com.facebook.internal.FileLruCache.BufferFile.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.startsWith(BufferFile.FILE_NAME_PREFIX);
            }
        };

        private BufferFile() {
        }

        static void deleteAll(File file) {
            File[] listFiles = file.listFiles(excludeNonBufferFiles());
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    file2.delete();
                }
            }
        }

        static FilenameFilter excludeBufferFiles() {
            return filterExcludeBufferFiles;
        }

        static FilenameFilter excludeNonBufferFiles() {
            return filterExcludeNonBufferFiles;
        }

        static File newFile(File file) {
            return new File(file, FILE_NAME_PREFIX + Long.valueOf(FileLruCache.bufferIndex.incrementAndGet()).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class StreamHeader {
        private static final int HEADER_VERSION = 0;

        private StreamHeader() {
        }

        static void writeHeader(OutputStream outputStream, JSONObject jSONObject) throws IOException {
            byte[] bytes = jSONObject.toString().getBytes();
            outputStream.write(0);
            outputStream.write((bytes.length >> 16) & 255);
            outputStream.write((bytes.length >> 8) & 255);
            outputStream.write((bytes.length >> 0) & 255);
            outputStream.write(bytes);
        }

        static JSONObject readHeader(InputStream inputStream) throws IOException {
            JSONObject jSONObject;
            int i = 0;
            if (inputStream.read() != 0) {
                return null;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < 3; i3++) {
                int read = inputStream.read();
                if (read == -1) {
                    Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i2 = (i2 << 8) + (read & 255);
            }
            byte[] bArr = new byte[i2];
            while (i < bArr.length) {
                int read2 = inputStream.read(bArr, i, bArr.length - i);
                if (read2 < 1) {
                    Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + bArr.length);
                    return null;
                }
                i += read2;
            }
            try {
                Object nextValue = new JSONTokener(new String(bArr)).nextValue();
                if (!(nextValue instanceof JSONObject)) {
                    Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: expected JSONObject, got " + nextValue.getClass().getCanonicalName());
                    jSONObject = null;
                } else {
                    jSONObject = (JSONObject) nextValue;
                }
                return jSONObject;
            } catch (JSONException e) {
                throw new IOException(e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CloseCallbackOutputStream extends OutputStream {
        final StreamCloseCallback callback;
        final OutputStream innerStream;

        CloseCallbackOutputStream(OutputStream outputStream, StreamCloseCallback streamCloseCallback) {
            this.innerStream = outputStream;
            this.callback = streamCloseCallback;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.innerStream.close();
            } finally {
                this.callback.onClose();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.innerStream.flush();
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.innerStream.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.innerStream.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.innerStream.write(i);
        }
    }

    /* loaded from: classes.dex */
    private static final class CopyingInputStream extends InputStream {
        final InputStream input;
        final OutputStream output;

        CopyingInputStream(InputStream inputStream, OutputStream outputStream) {
            this.input = inputStream;
            this.output = outputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.input.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.input.close();
            } finally {
                this.output.close();
            }
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            int read = this.input.read(bArr);
            if (read > 0) {
                this.output.write(bArr, 0, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int read = this.input.read();
            if (read >= 0) {
                this.output.write(read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.input.read(bArr, i, i2);
            if (read > 0) {
                this.output.write(bArr, i, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            int read;
            byte[] bArr = new byte[1024];
            long j2 = 0;
            while (j2 < j && (read = read(bArr, 0, (int) Math.min(j - j2, bArr.length))) >= 0) {
                j2 += read;
            }
            return j2;
        }
    }

    /* loaded from: classes.dex */
    public static final class Limits {
        private int fileCount = 1024;
        private int byteCount = ByteConstants.MB;

        int getByteCount() {
            return this.byteCount;
        }

        int getFileCount() {
            return this.fileCount;
        }

        void setByteCount(int i) {
            if (i < 0) {
                throw new InvalidParameterException("Cache byte-count limit must be >= 0");
            }
            this.byteCount = i;
        }

        void setFileCount(int i) {
            if (i < 0) {
                throw new InvalidParameterException("Cache file count limit must be >= 0");
            }
            this.fileCount = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class ModifiedFile implements Comparable<ModifiedFile> {
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        private final File file;
        private final long modified;

        ModifiedFile(File file) {
            this.file = file;
            this.modified = file.lastModified();
        }

        File getFile() {
            return this.file;
        }

        long getModified() {
            return this.modified;
        }

        @Override // java.lang.Comparable
        public int compareTo(ModifiedFile modifiedFile) {
            if (getModified() < modifiedFile.getModified()) {
                return -1;
            }
            if (getModified() > modifiedFile.getModified()) {
                return 1;
            }
            return getFile().compareTo(modifiedFile.getFile());
        }

        public boolean equals(Object obj) {
            return (obj instanceof ModifiedFile) && compareTo((ModifiedFile) obj) == 0;
        }

        public int hashCode() {
            return ((this.file.hashCode() + 1073) * 37) + ((int) (this.modified % 2147483647L));
        }
    }
}
