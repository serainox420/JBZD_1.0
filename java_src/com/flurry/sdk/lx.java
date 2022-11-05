package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/* loaded from: classes.dex */
public final class lx {

    /* renamed from: a  reason: collision with root package name */
    private static String f3044a = lx.class.getSimpleName();

    public static File a() {
        File file = null;
        Context context = jy.a().f2947a;
        if ("mounted".equals(Environment.getExternalStorageState()) && (Build.VERSION.SDK_INT >= 19 || context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0)) {
            file = context.getExternalFilesDir(null);
        }
        if (file == null) {
            return context.getFilesDir();
        }
        return file;
    }

    public static File b() {
        Context context = jy.a().f2947a;
        File file = null;
        if ("mounted".equals(Environment.getExternalStorageState()) && (Build.VERSION.SDK_INT >= 19 || context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0)) {
            file = context.getExternalCacheDir();
        }
        if (file == null) {
            return context.getCacheDir();
        }
        return file;
    }

    public static boolean a(File file) {
        if (file == null || file.getAbsoluteFile() == null) {
            return false;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            return true;
        }
        if (parentFile.mkdirs() || parentFile.isDirectory()) {
            return true;
        }
        km.a(6, f3044a, "Unable to create persistent dir: " + parentFile);
        return false;
    }

    public static boolean b(File file) {
        if (file != null && file.isDirectory()) {
            for (String str : file.list()) {
                if (!b(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String c(File file) {
        FileInputStream fileInputStream;
        StringBuilder sb;
        if (file == null || !file.exists()) {
            km.a(4, f3044a, "Persistent file doesn't exist.");
            return null;
        }
        km.a(4, f3044a, "Loading persistent data: " + file.getAbsolutePath());
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            sb = new StringBuilder();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                sb.append(new String(bArr, 0, read));
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                km.a(6, f3044a, "Error when loading persistent file", th);
                ly.a((Closeable) fileInputStream);
                sb = null;
                if (sb != null) {
                }
            } finally {
                ly.a((Closeable) fileInputStream);
            }
        }
        if (sb != null) {
            return null;
        }
        return sb.toString();
    }

    @Deprecated
    public static void a(File file, String str) {
        FileOutputStream fileOutputStream;
        if (file == null) {
            km.a(4, f3044a, "No persistent file specified.");
        } else if (str == null) {
            km.a(4, f3044a, "No data specified; deleting persistent file: " + file.getAbsolutePath());
            file.delete();
        } else {
            km.a(4, f3044a, "Writing persistent data: " + file.getAbsolutePath());
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
            }
            try {
                fileOutputStream.write(str.getBytes());
            } catch (Throwable th2) {
                th = th2;
                try {
                    km.a(6, f3044a, "Error writing persistent file", th);
                } finally {
                    ly.a(fileOutputStream);
                }
            }
        }
    }
}
