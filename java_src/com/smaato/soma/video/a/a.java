package com.smaato.soma.video.a;

import android.content.Context;
import android.os.StatFs;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.l;
import com.smaato.soma.video.a.b;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: DiskCacheService.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static b f5281a;

    public static boolean a(final Context context) {
        if (context == null) {
            return false;
        }
        if (f5281a == null) {
            return new l<Boolean>() { // from class: com.smaato.soma.video.a.a.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Boolean b() throws Exception {
                    File c = a.c(context);
                    if (c != null) {
                        try {
                            b unused = a.f5281a = b.a(c, 1, 1, a.a(c));
                        } catch (IOException e) {
                            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("DiskCacheService", "DiskCacheServiceUnable to create DiskLruCache.", 1, DebugCategory.DEBUG));
                        }
                        return true;
                    }
                    return false;
                }
            }.c().booleanValue();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File c(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        return new File(cacheDir.getPath() + File.separator + "smaato-cache");
    }

    public static long a(File file) {
        return a(file, 31457280L);
    }

    public static long a(File file, long j) {
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = (statFs.getBlockSize() * statFs.getBlockCount()) / 50;
        } catch (IllegalArgumentException e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("DiskCacheService", "DiskCacheServiceUnable to calculate 2% of available disk space, defaulting to minimum", 1, DebugCategory.DEBUG));
        }
        return Math.max(Math.min(j, 104857600L), 31457280L);
    }

    public static String a(String str) {
        return com.smaato.soma.internal.c.d.a().a(str);
    }

    public static boolean b(String str) {
        if (f5281a == null) {
            return false;
        }
        try {
            return f5281a.a(a(str)) != null;
        } catch (Exception e) {
            return false;
        }
    }

    public static String c(String str) {
        if (f5281a == null) {
            return null;
        }
        return f5281a.a() + File.separator + a(str) + ".0";
    }

    public static boolean a(String str, InputStream inputStream) {
        if (f5281a == null) {
            return false;
        }
        b.a aVar = null;
        try {
            aVar = f5281a.b(a(str));
            if (aVar == null) {
                return false;
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(aVar.a(0));
            g.a(inputStream, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            f5281a.b();
            aVar.a();
            return true;
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("DiskCacheService", "DiskCacheServiceUnable to put to DiskLruCache", 1, DebugCategory.DEBUG));
            if (aVar == null) {
                return false;
            }
            try {
                aVar.b();
                return false;
            } catch (IOException e2) {
                return false;
            }
        }
    }
}
