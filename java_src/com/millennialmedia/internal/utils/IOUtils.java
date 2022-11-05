package com.millennialmedia.internal.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.HttpUtils;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
/* loaded from: classes3.dex */
public class IOUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4172a = IOUtils.class.getSimpleName();

    /* loaded from: classes3.dex */
    public interface DownloadListener {
        void onDownloadFailed(Throwable th);

        void onDownloadSucceeded(File file);
    }

    public static byte[] read(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        read(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static void read(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr, 0, 4096);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static String read(InputStream inputStream, String str) throws IOException {
        if (str == null) {
            str = "UTF-8";
        }
        return new String(read(inputStream), str);
    }

    public static void write(OutputStream outputStream, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);
        try {
            outputStreamWriter.write(str);
        } finally {
            if (outputStreamWriter != null) {
                outputStreamWriter.close();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public static String convertStreamToString(InputStream inputStream) {
        BufferedReader bufferedReader;
        String str = 0;
        str = 0;
        str = 0;
        str = 0;
        try {
            if (inputStream == null) {
                MMLog.e(f4172a, "Unable to convert to string, input stream is null");
            } else {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 4096);
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(readLine);
                            sb.append('\n');
                        }
                        String sb2 = sb.toString();
                        str = sb2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                                str = sb2;
                            } catch (IOException e) {
                                MMLog.e(f4172a, "Error closing input stream reader", e);
                                str = sb2;
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        MMLog.e(f4172a, "Error occurred when converting stream to string", e);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                                MMLog.e(f4172a, "Error closing input stream reader", e3);
                            }
                        }
                        return str;
                    }
                } catch (IOException e4) {
                    e = e4;
                    bufferedReader = null;
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        try {
                            str.close();
                        } catch (IOException e5) {
                            MMLog.e(f4172a, "Error closing input stream reader", e5);
                        }
                    }
                    throw th;
                }
            }
            return str;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Bitmap convertStreamToBitmap(InputStream inputStream) {
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
        if (decodeStream == null) {
            MMLog.e(f4172a, "Unable to create bitmap from input stream");
        }
        return decodeStream;
    }

    /* loaded from: classes3.dex */
    public static class StringStreamer implements HttpUtils.ResponseStreamer {
        @Override // com.millennialmedia.internal.utils.HttpUtils.ResponseStreamer
        public void streamContent(InputStream inputStream, HttpUtils.Response response) {
            response.content = IOUtils.convertStreamToString(inputStream);
        }
    }

    /* loaded from: classes3.dex */
    public static class BitmapStreamer implements HttpUtils.ResponseStreamer {
        @Override // com.millennialmedia.internal.utils.HttpUtils.ResponseStreamer
        public void streamContent(InputStream inputStream, HttpUtils.Response response) {
            response.bitmap = IOUtils.convertStreamToBitmap(inputStream);
        }
    }

    /* loaded from: classes3.dex */
    public static class FileStreamer implements HttpUtils.ResponseStreamer {

        /* renamed from: a  reason: collision with root package name */
        private File f4174a;

        public FileStreamer(File file) {
            this.f4174a = file;
        }

        @Override // com.millennialmedia.internal.utils.HttpUtils.ResponseStreamer
        public void streamContent(InputStream inputStream, HttpUtils.Response response) {
            FileOutputStream fileOutputStream;
            try {
                fileOutputStream = new FileOutputStream(this.f4174a);
                try {
                    try {
                        IOUtils.read(inputStream, fileOutputStream);
                        response.file = this.f4174a;
                        IOUtils.closeStream(fileOutputStream);
                    } catch (IOException e) {
                        e = e;
                        MMLog.e(IOUtils.f4172a, "Unable to create file from input stream", e);
                        IOUtils.closeStream(fileOutputStream);
                    }
                } catch (Throwable th) {
                    th = th;
                    IOUtils.closeStream(fileOutputStream);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                IOUtils.closeStream(fileOutputStream);
                throw th;
            }
        }
    }

    public static void downloadFile(final String str, final Integer num, final File file, final DownloadListener downloadListener) {
        if (str == null || file == null || downloadListener == null) {
            throw new IllegalArgumentException("url, file, and download listener are required");
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.utils.IOUtils.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HttpUtils.Response sendHttpRequest = HttpUtils.httpRequestHandler.sendHttpRequest(str, null, null, num, new FileStreamer(file.isDirectory() ? File.createTempFile("_mm_", null, file) : file));
                    if (sendHttpRequest.file != null) {
                        downloadListener.onDownloadSucceeded(sendHttpRequest.file);
                    } else {
                        downloadListener.onDownloadFailed(new Throwable("Error creating file"));
                    }
                } catch (IOException e) {
                    MMLog.e(IOUtils.f4172a, "An error occurred downloading file from url = " + str, e);
                    downloadListener.onDownloadFailed(e);
                }
            }
        });
    }

    public static File getUniqueFileName(File file, String str) {
        int i = 1;
        file.mkdirs();
        File file2 = new File(file, str);
        if (file2.exists()) {
            String[] split = str.split("\\.(?=[^\\.]+$)");
            String str2 = split[0];
            String str3 = split.length > 1 ? split[1] : "";
            while (true) {
                int i2 = i;
                if (i2 < 1000) {
                    File file3 = new File(file, str2 + "(" + i2 + ")." + str3);
                    if (!file3.exists()) {
                        return file3;
                    }
                    i = i2 + 1;
                } else {
                    return null;
                }
            }
        } else {
            return file2;
        }
    }

    public static boolean closeStream(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
                return true;
            } catch (IOException e) {
                MMLog.e(f4172a, "Error closing stream", e);
            }
        }
        return false;
    }
}
