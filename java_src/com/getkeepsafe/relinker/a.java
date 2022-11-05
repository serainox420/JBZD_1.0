package com.getkeepsafe.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.getkeepsafe.relinker.b;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* compiled from: ApkLibraryInstaller.java */
/* loaded from: classes2.dex */
public class a implements b.a {
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        if (r5 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
        r2 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0083, code lost:
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0084, code lost:
        if (r3 != null) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0089, code lost:
        throw r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        if (r5 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        r18.a("FATAL! Couldn't find application APK!");
     */
    @Override // com.getkeepsafe.relinker.b.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(Context context, String[] strArr, String str, File file, c cVar) {
        ZipFile zipFile;
        int i;
        ZipEntry zipEntry;
        String str2;
        InputStream inputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        Closeable closeable;
        ZipFile zipFile2 = null;
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= 5) {
                    zipFile = null;
                    break;
                } else {
                    try {
                        zipFile = new ZipFile(new File(applicationInfo.sourceDir), 1);
                    } catch (IOException e) {
                        i2 = i3;
                    }
                }
            }
            while (true) {
                int i4 = i + 1;
                if (i >= 5) {
                    cVar.a("FATAL! Couldn't extract the library from the APK!");
                    if (zipFile == null) {
                        return;
                    }
                    try {
                        zipFile.close();
                        return;
                    } catch (IOException e2) {
                        return;
                    }
                }
                int length = strArr.length;
                ZipEntry zipEntry2 = null;
                String str3 = null;
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        zipEntry = zipEntry2;
                        str2 = str3;
                        break;
                    }
                    str3 = "lib" + File.separatorChar + strArr[i5] + File.separatorChar + str;
                    zipEntry2 = zipFile.getEntry(str3);
                    if (zipEntry2 != null) {
                        zipEntry = zipEntry2;
                        str2 = str3;
                        break;
                    }
                    i5++;
                }
                if (str2 != null) {
                    cVar.a("Looking for %s in APK...", str2);
                }
                if (zipEntry == null) {
                    if (str2 == null) {
                        throw new MissingLibraryException(str);
                    }
                    throw new MissingLibraryException(str2);
                }
                cVar.a("Found %s! Extracting...", str2);
                try {
                    if (file.exists() || file.createNewFile()) {
                        Closeable closeable2 = null;
                        try {
                            inputStream = zipFile.getInputStream(zipEntry);
                            try {
                                fileOutputStream = new FileOutputStream(file);
                                try {
                                    long a2 = a(inputStream, fileOutputStream);
                                    fileOutputStream.getFD().sync();
                                    if (a2 == file.length()) {
                                        a(inputStream);
                                        a(fileOutputStream);
                                        file.setReadable(true, false);
                                        file.setExecutable(true, false);
                                        file.setWritable(true);
                                        if (zipFile == null) {
                                            return;
                                        }
                                        try {
                                            zipFile.close();
                                            return;
                                        } catch (IOException e3) {
                                            return;
                                        }
                                    }
                                    a(inputStream);
                                    a(fileOutputStream);
                                    i = i4;
                                } catch (FileNotFoundException e4) {
                                    closeable = inputStream;
                                    a(closeable);
                                    a(fileOutputStream);
                                    i = i4;
                                } catch (IOException e5) {
                                    a(inputStream);
                                    a(fileOutputStream);
                                    i = i4;
                                } catch (Throwable th2) {
                                    closeable2 = fileOutputStream;
                                    th = th2;
                                    a(inputStream);
                                    a(closeable2);
                                    throw th;
                                }
                            } catch (FileNotFoundException e6) {
                                fileOutputStream = null;
                                closeable = inputStream;
                            } catch (IOException e7) {
                                fileOutputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (FileNotFoundException e8) {
                            closeable = null;
                            fileOutputStream = null;
                        } catch (IOException e9) {
                            inputStream = null;
                            fileOutputStream = null;
                        } catch (Throwable th4) {
                            inputStream = null;
                            th = th4;
                        }
                    } else {
                        i = i4;
                    }
                } catch (IOException e10) {
                    i = i4;
                }
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        long j = 0;
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                j += read;
            } else {
                outputStream.flush();
                return j;
            }
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
