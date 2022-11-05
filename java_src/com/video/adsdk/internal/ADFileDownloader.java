package com.video.adsdk.internal;

import android.content.Context;
import android.os.Environment;
import com.video.adsdk.interfaces.DownloadProgressListener;
import com.video.adsdk.interfaces.FileDownloader;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3.dex */
public class ADFileDownloader implements FileDownloader {
    private static final String CACHEDIRECTORY = "VideoAdSDKCache";
    private Context context;
    private DownloadProgressListener listener;
    private boolean storeOnSDCard;
    private final String expirationSuffix = ".expiration";
    private int downloadAttempts = 0;

    public ADFileDownloader(Context context, boolean z) {
        this.storeOnSDCard = z;
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.FileDownloader
    public void downloadFile(ADVideoFile aDVideoFile) throws Exception {
        this.downloadAttempts = 0;
        downloadFileInternal(aDVideoFile);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void downloadFileInternal(ADVideoFile aDVideoFile) throws Exception {
        BufferedInputStream bufferedInputStream;
        File file;
        String filename;
        File file2;
        boolean equals = Environment.getExternalStorageState().equals("mounted");
        if (!this.storeOnSDCard || equals) {
            InputStream inputStream = null;
            try {
                try {
                    filename = aDVideoFile.getFilename();
                    file2 = new File(getTargetDirectoryPath() + filename);
                    try {
                    } catch (IOException e) {
                        e = e;
                        bufferedInputStream = null;
                        file = file2;
                    }
                } catch (IOException e2) {
                    e = e2;
                    file = null;
                    bufferedInputStream = null;
                }
                if (file2.exists()) {
                    if (0 == 0) {
                        return;
                    }
                    inputStream.close();
                    return;
                }
                URLConnection openConnection = new URL(aDVideoFile.getUrl()).openConnection();
                openConnection.connect();
                bufferedInputStream = new BufferedInputStream(openConnection.getInputStream());
                try {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        byte[] bArr = new byte[1024];
                        long j = 0;
                        int contentLength = openConnection.getContentLength();
                        while (true) {
                            int read = bufferedInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                            j += read;
                            if (this.listener != null) {
                                this.listener.onProgress((j * 100.0d) / contentLength);
                            }
                        }
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(new File(getTargetDirectoryPath() + filename + ".expiration"));
                        fileOutputStream2.write(String.valueOf(aDVideoFile.getExpirationDate()).getBytes());
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                    } catch (IOException e3) {
                        e = e3;
                        file = file2;
                        if (file.exists()) {
                            file.delete();
                        }
                        e.printStackTrace();
                        this.downloadAttempts++;
                        if (this.downloadAttempts >= 2) {
                            throw e;
                        }
                        downloadFileInternal(aDVideoFile);
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        if (this.listener != null) {
                        }
                    }
                    if (this.listener != null) {
                        return;
                    }
                    this.listener.onProgress(100.0d);
                } catch (Throwable th) {
                    th = th;
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = null;
            }
        } else {
            throw new Exception("No SD-Card found!");
        }
    }

    @Override // com.video.adsdk.interfaces.FileDownloader
    public String getTargetDirectoryPath() throws IOException {
        return (this.storeOnSDCard ? getExternalPath() : getInternalPath()) + "/";
    }

    private String getInternalPath() throws IOException {
        return getCachePath(this.context.getFilesDir());
    }

    private String getExternalPath() throws IOException {
        return getCachePath(this.context.getExternalFilesDir(null));
    }

    private String getCachePath(File file) throws IOException {
        File file2 = new File(file, CACHEDIRECTORY);
        if (!file2.exists() && !file2.mkdirs()) {
            throw new IOException("Target directory '" + file2.getAbsolutePath() + "' could not be created");
        }
        return file2.getAbsolutePath();
    }

    @Override // com.video.adsdk.interfaces.FileDownloader
    public String copyInternalToExternal(String str) throws IOException {
        File file = new File(str);
        File file2 = new File(getExternalPath(), file.getName());
        if (!file.exists() || file.getAbsolutePath().equals(file2.getAbsolutePath())) {
            return null;
        }
        streamCopy(new FileInputStream(file), new FileOutputStream(file2));
        return file2.getAbsolutePath();
    }

    private void streamCopy(InputStream inputStream, OutputStream outputStream) throws IOException {
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                outputStream.write(bArr, 0, read);
            }
            if (inputStream != null) {
                try {
                } catch (IOException e) {
                    return;
                }
            }
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }

    private List<File> getAllFiles() {
        String str = "";
        String str2 = "";
        try {
            str = getInternalPath();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            str2 = getExternalPath();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        List<File> filesInDirectory = getFilesInDirectory(str);
        filesInDirectory.addAll(getFilesInDirectory(str2));
        return filesInDirectory;
    }

    private List<File> getFilesInDirectory(String str) {
        File[] listFiles = new File(str).listFiles();
        return listFiles != null ? new ArrayList(Arrays.asList(listFiles)) : new ArrayList();
    }

    @Override // com.video.adsdk.interfaces.FileDownloader
    public void deleteExpiredFiles() {
        deleteExpiredFiles(getAllFiles());
    }

    private void deleteExpiredFiles(List<File> list) {
        for (File file : list) {
            if (!file.getName().contains(".expiration")) {
                try {
                    if (System.currentTimeMillis() > readExpirationDate(file)) {
                        removeCachedFile(file);
                    }
                } catch (Exception e) {
                    removeCachedFile(file);
                    e.printStackTrace();
                }
            }
        }
    }

    protected long readExpirationDate(File file) throws Exception {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file.getPath() + ".expiration"));
        String readLine = bufferedReader.readLine();
        bufferedReader.close();
        return Long.parseLong(readLine);
    }

    protected void removeCachedFile(File file) {
        File file2 = new File(file.getPath() + ".expiration");
        file.delete();
        file2.delete();
    }

    @Override // com.video.adsdk.interfaces.FileDownloader
    public void setDownloadProgressListener(DownloadProgressListener downloadProgressListener) {
        this.listener = downloadProgressListener;
    }

    @Override // com.video.adsdk.interfaces.FileDownloader
    public void deleteAllFiles() {
        deleteAllFiles(getAllFiles());
    }

    private void deleteAllFiles(List<File> list) {
        for (File file : list) {
            file.delete();
        }
    }
}
