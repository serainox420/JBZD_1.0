package com.smartadserver.android.library.g;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.http.HttpResponseCache;
import android.os.Build;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
/* compiled from: SASFileUtil.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5435a = b.class.getSimpleName();

    @SuppressLint({"NewApi"})
    public static void a(Context context) {
        if (Build.VERSION.SDK_INT >= 14) {
            try {
                if (HttpResponseCache.getInstalled() == null) {
                    HttpResponseCache.install(new File(context.getApplicationContext().getCacheDir(), "http"), 10485760L);
                }
            } catch (Exception e) {
                Log.d(f5435a, "HTTP response cache is unavailable.");
            }
        }
    }

    public static FileOutputStream a(Context context, String str, String str2) {
        File dir;
        int i = 0;
        if (context == null || str2 == null || str == null || (dir = context.getDir(str, 0)) == null || !dir.exists()) {
            return null;
        }
        String[] split = str2.split("/");
        while (i < split.length - 1) {
            File file = new File(dir, split[i]);
            if (!file.exists()) {
                file.mkdir();
            }
            i++;
            dir = file;
        }
        try {
            return new FileOutputStream(new File(dir, split[split.length - 1]));
        } catch (FileNotFoundException e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0053 A[Catch: IOException -> 0x0074, TRY_LEAVE, TryCatch #3 {IOException -> 0x0074, blocks: (B:12:0x004e, B:14:0x0053), top: B:36:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.BufferedInputStream, java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(Context context, String str, String str2, String str3) throws IOException {
        ?? r1 = 0;
        try {
            try {
                URLConnection openConnection = new URL(str).openConnection();
                openConnection.setConnectTimeout(3000);
                openConnection.setReadTimeout(3000);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(openConnection.getInputStream(), 4096);
                try {
                    FileOutputStream a2 = a(context, str2, str3);
                    if (a2 == null) {
                        throw new FileNotFoundException("Can not write file to location :" + str2 + "/" + str3);
                    }
                    byte[] bArr = new byte[4096];
                    for (int i = 0; i != -1; i = bufferedInputStream.read(bArr)) {
                        a2.write(bArr, 0, i);
                    }
                    if (a2 != null) {
                        try {
                            a2.close();
                        } catch (IOException e) {
                            throw e;
                        }
                    }
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                } catch (IOException e2) {
                    throw e2;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        r1.close();
                    } catch (IOException e3) {
                        throw e3;
                    }
                }
                if (0 != 0) {
                    r1.close();
                }
                throw th;
            }
        } catch (IOException e4) {
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            if (0 != 0) {
            }
            throw th;
        }
    }

    public static Object b(Context context, String str, String str2) {
        Exception e;
        Object obj;
        ObjectInputStream objectInputStream;
        int i = 0;
        File dir = context.getDir(str, 0);
        if (dir == null || !dir.exists()) {
            return null;
        }
        String[] split = str2.split("/");
        while (i < split.length - 1) {
            i++;
            dir = new File(dir, split[i]);
        }
        try {
            objectInputStream = new ObjectInputStream(new BufferedInputStream(new FileInputStream(new File(dir, split[split.length - 1]))));
            obj = objectInputStream.readObject();
        } catch (Exception e2) {
            e = e2;
            obj = null;
        }
        try {
            objectInputStream.close();
            return obj;
        } catch (Exception e3) {
            e = e3;
            c.a(f5435a, e.getMessage());
            return obj;
        }
    }

    public static boolean a(Context context, Serializable serializable, String str, String str2) {
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(a(context, str, str2)));
            objectOutputStream.writeObject(serializable);
            objectOutputStream.flush();
            objectOutputStream.close();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static void a(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                a(file2);
            }
        }
        file.delete();
    }

    public static String a(String str) {
        try {
            return a(new URL(str));
        } catch (MalformedURLException e) {
            return null;
        }
    }

    public static String a(URL url) {
        return a(url, null);
    }

    public static String a(URL url, String[] strArr) {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        String str = null;
        try {
            URLConnection openConnection = url.openConnection();
            InputStream inputStream = openConnection.getInputStream();
            if (strArr != null && strArr.length > 0) {
                strArr[0] = openConnection.getURL().toString();
            }
            bufferedInputStream = new BufferedInputStream(inputStream, 4096);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream(4096);
            } catch (IOException e) {
                byteArrayOutputStream = null;
            } catch (Throwable th2) {
                byteArrayOutputStream = null;
                th = th2;
            }
            try {
                byte[] bArr = new byte[4096];
                for (int i = 0; i != -1; i = bufferedInputStream.read(bArr)) {
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                if (byteArrayOutputStream != null) {
                    try {
                        str = byteArrayOutputStream.toString();
                        byteArrayOutputStream.close();
                    } catch (IOException e2) {
                    }
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
            } catch (IOException e3) {
                if (byteArrayOutputStream != null) {
                    try {
                        str = byteArrayOutputStream.toString();
                        byteArrayOutputStream.close();
                    } catch (IOException e4) {
                    }
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                return str;
            } catch (Throwable th3) {
                th = th3;
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.toString();
                        byteArrayOutputStream.close();
                    } catch (IOException e5) {
                        throw th;
                    }
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                throw th;
            }
        } catch (IOException e6) {
            byteArrayOutputStream = null;
            bufferedInputStream = null;
        } catch (Throwable th4) {
            bufferedInputStream = null;
            th = th4;
            byteArrayOutputStream = null;
        }
        return str;
    }
}
