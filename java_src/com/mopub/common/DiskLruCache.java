package com.mopub.common;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public final class DiskLruCache implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f4328a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new OutputStream() { // from class: com.mopub.common.DiskLruCache.2
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    };
    private final File c;
    private final File d;
    private final File e;
    private final File f;
    private final int g;
    private long h;
    private final int i;
    private Writer k;
    private int m;
    private long j = 0;
    private final LinkedHashMap<String, a> l = new LinkedHashMap<>(0, 0.75f, true);
    private long n = 0;
    final ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> o = new Callable<Void>() { // from class: com.mopub.common.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.k != null) {
                    DiskLruCache.this.g();
                    if (DiskLruCache.this.e()) {
                        DiskLruCache.this.d();
                        DiskLruCache.this.m = 0;
                    }
                }
            }
            return null;
        }
    };

    private DiskLruCache(File file, int i, int i2, long j) {
        this.c = file;
        this.g = i;
        this.d = new File(file, "journal");
        this.e = new File(file, "journal.tmp");
        this.f = new File(file, "journal.bkp");
        this.i = i2;
        this.h = j;
    }

    public static DiskLruCache open(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                a(file2, file3, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
        if (diskLruCache.d.exists()) {
            try {
                diskLruCache.b();
                diskLruCache.c();
                diskLruCache.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.d, true), DiskLruCacheUtil.f4334a));
                return diskLruCache;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                diskLruCache.delete();
            }
        }
        file.mkdirs();
        DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
        diskLruCache2.d();
        return diskLruCache2;
    }

    private void b() throws IOException {
        b bVar = new b(new FileInputStream(this.d), DiskLruCacheUtil.f4334a);
        try {
            String readLine = bVar.readLine();
            String readLine2 = bVar.readLine();
            String readLine3 = bVar.readLine();
            String readLine4 = bVar.readLine();
            String readLine5 = bVar.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.g).equals(readLine3) || !Integer.toString(this.i).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    a(bVar.readLine());
                    i++;
                } catch (EOFException e) {
                    this.m = i - this.l.size();
                    DiskLruCacheUtil.a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            DiskLruCacheUtil.a(bVar);
            throw th;
        }
    }

    private void a(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            String substring2 = str.substring(i);
            if (indexOf == "REMOVE".length() && str.startsWith("REMOVE")) {
                this.l.remove(substring2);
                return;
            }
            substring = substring2;
        } else {
            substring = str.substring(i, indexOf2);
        }
        a aVar = this.l.get(substring);
        if (aVar == null) {
            aVar = new a(substring);
            this.l.put(substring, aVar);
        }
        if (indexOf2 != -1 && indexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            aVar.d = true;
            aVar.e = null;
            aVar.a(split);
        } else if (indexOf2 != -1 || indexOf != "DIRTY".length() || !str.startsWith("DIRTY")) {
            if (indexOf2 != -1 || indexOf != "READ".length() || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            aVar.e = new Editor(aVar);
        }
    }

    private void c() throws IOException {
        a(this.e);
        Iterator<a> it = this.l.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.e == null) {
                for (int i = 0; i < this.i; i++) {
                    this.j += next.c[i];
                }
            } else {
                next.e = null;
                for (int i2 = 0; i2 < this.i; i2++) {
                    a(next.getCleanFile(i2));
                    a(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() throws IOException {
        if (this.k != null) {
            this.k.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), DiskLruCacheUtil.f4334a));
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write("\n");
        bufferedWriter.write("1");
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.g));
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.i));
        bufferedWriter.write("\n");
        bufferedWriter.write("\n");
        for (a aVar : this.l.values()) {
            if (aVar.e != null) {
                bufferedWriter.write("DIRTY " + aVar.b + '\n');
            } else {
                bufferedWriter.write("CLEAN " + aVar.b + aVar.getLengths() + '\n');
            }
        }
        bufferedWriter.close();
        if (this.d.exists()) {
            a(this.d, this.f, true);
        }
        a(this.e, this.d, false);
        this.f.delete();
        this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), DiskLruCacheUtil.f4334a));
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public synchronized Snapshot get(String str) throws IOException {
        Snapshot snapshot = null;
        synchronized (this) {
            f();
            b(str);
            a aVar = this.l.get(str);
            if (aVar != null && aVar.d) {
                InputStream[] inputStreamArr = new InputStream[this.i];
                for (int i = 0; i < this.i; i++) {
                    try {
                        inputStreamArr[i] = new FileInputStream(aVar.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        for (int i2 = 0; i2 < this.i && inputStreamArr[i2] != null; i2++) {
                            DiskLruCacheUtil.a(inputStreamArr[i2]);
                        }
                    }
                }
                this.m++;
                this.k.append((CharSequence) ("READ " + str + '\n'));
                if (e()) {
                    this.b.submit(this.o);
                }
                snapshot = new Snapshot(str, aVar.f, inputStreamArr, aVar.c);
            }
        }
        return snapshot;
    }

    public Editor edit(String str) throws IOException {
        return a(str, -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Editor a(String str, long j) throws IOException {
        a aVar;
        Editor editor;
        f();
        b(str);
        a aVar2 = this.l.get(str);
        if (j == -1 || (aVar2 != null && aVar2.f == j)) {
            if (aVar2 == null) {
                a aVar3 = new a(str);
                this.l.put(str, aVar3);
                aVar = aVar3;
            } else if (aVar2.e != null) {
                editor = null;
            } else {
                aVar = aVar2;
            }
            editor = new Editor(aVar);
            aVar.e = editor;
            this.k.write("DIRTY " + str + '\n');
            this.k.flush();
        } else {
            editor = null;
        }
        return editor;
    }

    public File getDirectory() {
        return this.c;
    }

    public synchronized long getMaxSize() {
        return this.h;
    }

    public synchronized void setMaxSize(long j) {
        this.h = j;
        this.b.submit(this.o);
    }

    public synchronized long size() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(Editor editor, boolean z) throws IOException {
        synchronized (this) {
            a aVar = editor.b;
            if (aVar.e != editor) {
                throw new IllegalStateException();
            }
            if (z && !aVar.d) {
                for (int i = 0; i < this.i; i++) {
                    if (!editor.c[i]) {
                        editor.abort();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    } else if (!aVar.getDirtyFile(i).exists()) {
                        editor.abort();
                        break;
                    }
                }
            }
            for (int i2 = 0; i2 < this.i; i2++) {
                File dirtyFile = aVar.getDirtyFile(i2);
                if (z) {
                    if (dirtyFile.exists()) {
                        File cleanFile = aVar.getCleanFile(i2);
                        dirtyFile.renameTo(cleanFile);
                        long j = aVar.c[i2];
                        long length = cleanFile.length();
                        aVar.c[i2] = length;
                        this.j = (this.j - j) + length;
                    }
                } else {
                    a(dirtyFile);
                }
            }
            this.m++;
            aVar.e = null;
            if (aVar.d | z) {
                aVar.d = true;
                this.k.write("CLEAN " + aVar.b + aVar.getLengths() + '\n');
                if (z) {
                    long j2 = this.n;
                    this.n = 1 + j2;
                    aVar.f = j2;
                }
            } else {
                this.l.remove(aVar.b);
                this.k.write("REMOVE " + aVar.b + '\n');
            }
            this.k.flush();
            if (this.j > this.h || e()) {
                this.b.submit(this.o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        return this.m >= 2000 && this.m >= this.l.size();
    }

    public synchronized boolean remove(String str) throws IOException {
        boolean z;
        synchronized (this) {
            f();
            b(str);
            a aVar = this.l.get(str);
            if (aVar == null || aVar.e != null) {
                z = false;
            } else {
                for (int i = 0; i < this.i; i++) {
                    File cleanFile = aVar.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.j -= aVar.c[i];
                    aVar.c[i] = 0;
                }
                this.m++;
                this.k.append((CharSequence) ("REMOVE " + str + '\n'));
                this.l.remove(str);
                if (e()) {
                    this.b.submit(this.o);
                }
                z = true;
            }
        }
        return z;
    }

    public synchronized boolean isClosed() {
        return this.k == null;
    }

    private void f() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void flush() throws IOException {
        f();
        g();
        this.k.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.k != null) {
            Iterator it = new ArrayList(this.l.values()).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                if (aVar.e != null) {
                    aVar.e.abort();
                }
            }
            g();
            this.k.close();
            this.k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() throws IOException {
        while (this.j > this.h) {
            remove(this.l.entrySet().iterator().next().getKey());
        }
    }

    public void delete() throws IOException {
        close();
        DiskLruCacheUtil.a(this.c);
    }

    private void b(String str) {
        if (!f4328a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(InputStream inputStream) throws IOException {
        return DiskLruCacheUtil.a((Reader) new InputStreamReader(inputStream, DiskLruCacheUtil.b));
    }

    /* loaded from: classes3.dex */
    public final class Snapshot implements Closeable {
        private final String b;
        private final long c;
        private final InputStream[] d;
        private final long[] e;

        private Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.b = str;
            this.c = j;
            this.d = inputStreamArr;
            this.e = jArr;
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.a(this.b, this.c);
        }

        public InputStream getInputStream(int i) {
            return this.d[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.b(getInputStream(i));
        }

        public long getLength(int i) {
            return this.e[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.d) {
                DiskLruCacheUtil.a(inputStream);
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class Editor {
        private final a b;
        private final boolean[] c;
        private boolean d;
        private boolean e;

        private Editor(a aVar) {
            this.b = aVar;
            this.c = aVar.d ? null : new boolean[DiskLruCache.this.i];
        }

        public InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.b.e != this) {
                    throw new IllegalStateException();
                }
                if (!this.b.d) {
                    return null;
                }
                try {
                    return new FileInputStream(this.b.getCleanFile(i));
                } catch (FileNotFoundException e) {
                    return null;
                }
            }
        }

        public String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            if (newInputStream != null) {
                return DiskLruCache.b(newInputStream);
            }
            return null;
        }

        public OutputStream newOutputStream(int i) throws IOException {
            OutputStream outputStream;
            FileOutputStream fileOutputStream;
            synchronized (DiskLruCache.this) {
                if (this.b.e != this) {
                    throw new IllegalStateException();
                }
                if (!this.b.d) {
                    this.c[i] = true;
                }
                File dirtyFile = this.b.getDirtyFile(i);
                try {
                    fileOutputStream = new FileOutputStream(dirtyFile);
                } catch (FileNotFoundException e) {
                    DiskLruCache.this.c.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e2) {
                        outputStream = DiskLruCache.p;
                    }
                }
                outputStream = new a(fileOutputStream);
            }
            return outputStream;
        }

        public void set(int i, String str) throws IOException {
            OutputStreamWriter outputStreamWriter;
            try {
                outputStreamWriter = new OutputStreamWriter(newOutputStream(i), DiskLruCacheUtil.b);
            } catch (Throwable th) {
                th = th;
                outputStreamWriter = null;
            }
            try {
                outputStreamWriter.write(str);
                DiskLruCacheUtil.a(outputStreamWriter);
            } catch (Throwable th2) {
                th = th2;
                DiskLruCacheUtil.a(outputStreamWriter);
                throw th;
            }
        }

        public void commit() throws IOException {
            if (this.d) {
                DiskLruCache.this.a(this, false);
                DiskLruCache.this.remove(this.b.b);
            } else {
                DiskLruCache.this.a(this, true);
            }
            this.e = true;
        }

        public void abort() throws IOException {
            DiskLruCache.this.a(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.e) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public class a extends FilterOutputStream {
            private a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class a {
        private final String b;
        private final long[] c;
        private boolean d;
        private Editor e;
        private long f;

        private a(String str) {
            this.b = str;
            this.c = new long[DiskLruCache.this.i];
        }

        public String getLengths() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.c) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.i) {
                throw b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.c[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw b(strArr);
                }
            }
        }

        private IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File getCleanFile(int i) {
            return new File(DiskLruCache.this.c, this.b + "." + i);
        }

        public File getDirtyFile(int i) {
            return new File(DiskLruCache.this.c, this.b + "." + i + ".tmp");
        }
    }
}
