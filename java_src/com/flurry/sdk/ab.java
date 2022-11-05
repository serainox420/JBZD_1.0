package com.flurry.sdk;

import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.flurry.sdk.ac;
import com.flurry.sdk.aq;
import com.madsdk.AdView;
import com.pubmatic.sdk.common.CommonConstants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLConnection;
import java.util.List;
/* loaded from: classes2.dex */
public class ab {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2418a = ab.class.getSimpleName();
    public aa b;
    private long d;
    private long e;
    private a f = a.NONE;
    public ao<String> c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum a {
        NONE,
        INIT,
        ACTIVE,
        PAUSED
    }

    public final synchronized void a(long j, long j2) {
        if (!a()) {
            km.a(3, f2418a, "Precaching: Initializing AssetCacheManager.");
            this.d = j;
            this.e = j2;
            try {
                File b = fk.b("fileStreamCacheDownloaderTmp");
                km.a(3, f2418a, "Precaching: Cleaning temp asset directory: " + b);
                lx.b(b);
            } catch (Exception e) {
                km.a(6, f2418a, "Precaching: Error cleaning temp asset directory: " + e.getMessage(), e);
            }
            this.f = a.INIT;
            a(ac.a.INIT);
            this.c = new ao<>();
        }
    }

    public final boolean a() {
        return !a.NONE.equals(this.f);
    }

    private boolean e() {
        return a.ACTIVE.equals(this.f) || a.PAUSED.equals(this.f);
    }

    public final synchronized void b() {
        if (a() && !e()) {
            km.a(3, f2418a, "Precaching: Starting AssetCacheManager.");
            this.b = new aa("fileStreamCacheDownloader", this.d, this.e);
            this.b.c();
            this.f = a.ACTIVE;
            a(ac.a.START);
        }
    }

    public final synchronized void c() {
        if (e()) {
            km.a(3, f2418a, "Precaching: Stopping AssetCacheManager.");
            this.b.d();
            this.f = a.INIT;
            a(ac.a.STOP);
        }
    }

    public final synchronized void d() {
        if (e() && a.PAUSED.equals(this.f)) {
            km.a(3, f2418a, "Precaching: Resuming AssetCacheManager.");
            this.b.e();
            this.f = a.ACTIVE;
            a(ac.a.RESUME);
        }
    }

    public final void a(List<au> list) {
        if (e() && list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                au auVar = list.get(size);
                if (e() && auVar != null) {
                    List<cn> list2 = auVar.b.b.f;
                    for (int i = 0; i < list2.size(); i++) {
                        for (String str : auVar.c(i)) {
                            if (!TextUtils.isEmpty(str)) {
                                this.b.b(str);
                            }
                        }
                    }
                }
            }
            int i2 = 0;
            for (au auVar2 : list) {
                int i3 = (b(auVar2) > 0 ? 1 : 0) + i2;
                if (i3 >= 2) {
                    return;
                }
                i2 = i3;
            }
        }
    }

    public final ag a(au auVar) {
        if (!e()) {
            return ag.ERROR;
        }
        if (auVar == null) {
            return ag.ERROR;
        }
        if (auVar.b.b == null) {
            return ag.COMPLETE;
        }
        ag agVar = ag.NOT_STARTED;
        List<cn> list = auVar.b.b.f;
        boolean z = false;
        int i = 0;
        ag agVar2 = agVar;
        while (i < list.size()) {
            boolean z2 = z;
            ag agVar3 = agVar2;
            for (String str : auVar.c(i)) {
                al b = this.b.b(str);
                if (agVar3 == null) {
                    agVar3 = ag.NOT_STARTED;
                } else if (b != null) {
                    if (al.ERROR.equals(b)) {
                        agVar3 = ag.ERROR;
                    } else if (al.EVICTED.equals(b)) {
                        if (!agVar3.equals(ag.ERROR)) {
                            agVar3 = ag.EVICTED;
                        }
                    } else if (al.NONE.equals(b) || al.CANCELLED.equals(b)) {
                        if (!agVar3.equals(ag.ERROR) && !agVar3.equals(ag.EVICTED)) {
                            agVar3 = ag.INCOMPLETE;
                        }
                    } else if (al.QUEUED.equals(b) || al.IN_PROGRESS.equals(b)) {
                        if (ag.NOT_STARTED.equals(agVar3) || ag.COMPLETE.equals(agVar3)) {
                            agVar3 = ag.IN_PROGRESS;
                        }
                    } else if (al.COMPLETE.equals(b) && ag.NOT_STARTED.equals(agVar3)) {
                        agVar3 = ag.COMPLETE;
                    }
                }
                z2 = true;
            }
            i++;
            agVar2 = agVar3;
            z = z2;
        }
        return !z ? ag.COMPLETE : agVar2;
    }

    public final boolean a(r rVar, au auVar) {
        if (!e() || rVar == null || auVar == null) {
            return false;
        }
        km.a(3, f2418a, "Precaching: Saving local assets for adObject:" + rVar.e());
        List<cn> list = auVar.b.b.f;
        for (int i = 0; i < list.size(); i++) {
            for (String str : auVar.c(i)) {
                if (!e(rVar, str)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void a(r rVar) {
        if (rVar != null) {
            try {
                File a2 = fk.a("fileStreamCacheDownloaderTmp", rVar.e());
                km.a(3, f2418a, "Precaching: Removing local assets for adObject:" + rVar.e());
                lx.b(a2);
            } catch (Exception e) {
                km.a(6, f2418a, "Precaching: Error removing local assets for adObject:" + rVar.e() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + e.getMessage(), e);
            }
        }
    }

    private boolean e(r rVar, String str) {
        String guessContentTypeFromName;
        boolean z = false;
        if (e() && !TextUtils.isEmpty(str)) {
            km.a(3, f2418a, "Precaching: Saving local asset for adObject:" + rVar.e());
            if (!al.COMPLETE.equals(this.b.b(str))) {
                return false;
            }
            if (!TextUtils.isEmpty(str)) {
                try {
                    String path = Uri.parse(str).getPath();
                    if (!TextUtils.isEmpty(path) && (guessContentTypeFromName = URLConnection.guessContentTypeFromName(path)) != null) {
                        if (guessContentTypeFromName.startsWith(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                            z = true;
                        }
                    }
                } catch (Exception e) {
                    km.a(3, f2418a, "Error while getting mime type");
                }
            }
            if ((rVar instanceof x) && z) {
                return true;
            }
            return d(rVar, str);
        }
        return false;
    }

    public static boolean a(au auVar, String str) {
        if (auVar == null || TextUtils.isEmpty(str)) {
            return false;
        }
        List<cn> list = auVar.b.b.f;
        for (int i = 0; i < list.size(); i++) {
            for (String str2 : auVar.c(i)) {
                if (str2.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void a(r rVar, String str) {
        if (str != null && !str.isEmpty()) {
            km.a(3, f2418a, "Video Cache: Removing local assets for adObject: " + rVar.e() + " filename: " + str);
            File file = new File(fk.a("fileStreamCacheDownloaderTmp", rVar.e()).getPath(), str.substring(str.lastIndexOf("/") + 1, str.length()));
            if (file.isFile() && file.exists()) {
                file.delete();
                km.a(3, f2418a, "Video Cache: found asset: " + file.exists());
            }
        }
    }

    public static File b(r rVar, String str) {
        if (rVar == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return a(rVar.e(), str);
    }

    public static File a(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(fk.a("fileStreamCacheDownloaderTmp", i), fk.c(str));
        if (!file.exists()) {
            return null;
        }
        return file;
    }

    public static void a(r rVar, String str, String str2) {
        new fn();
        Bitmap a2 = fn.a(str);
        if (a2 != null) {
            File file = new File(fk.a("fileStreamCacheDownloaderTmp", rVar.e()).getPath(), str2);
            km.a(3, f2418a, "Video Cache: Removing local assets for adObject: " + rVar.e() + " filename: " + str2);
            if (file.exists()) {
                km.a(3, f2418a, "Video Cache: found asset: " + file.exists());
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                a2.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.close();
            } catch (FileNotFoundException e) {
                km.a(6, f2418a, "Precaching: Error saving cache file for filename:" + str2 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + e.getMessage(), e);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static File c(r rVar, String str) {
        File file = new File(fk.a("fileStreamCacheDownloaderTmp", rVar.e()).getPath(), str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public static void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            km.a(3, f2418a, "AdCacheNative: Delete file " + str);
            File file = new File(str);
            if (file.exists()) {
                km.a(3, f2418a, "AdCacheNative: File exists. Deleting it." + file.delete());
            }
        }
    }

    public final int b(au auVar) {
        if (e() && auVar != null) {
            List<cn> list = auVar.b.b.f;
            int i = 0;
            int i2 = 0;
            while (i < list.size()) {
                cn cnVar = list.get(i);
                int i3 = i2;
                for (String str : auVar.c(i)) {
                    if (a(str, cnVar.h)) {
                        i3++;
                    }
                }
                i++;
                i2 = i3;
            }
            return i2;
        }
        return 0;
    }

    public final void c(au auVar) {
        if (e() && auVar != null) {
            List<cn> list = auVar.b.b.f;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < list.size()) {
                    cn cnVar = list.get(i2);
                    for (String str : auVar.c(i2)) {
                        if (a(str, cnVar.h) && e()) {
                            this.b.a(str);
                        }
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private boolean a(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        as asVar = as.UNKNOWN;
        String path = Uri.parse(str).getPath();
        if (!TextUtils.isEmpty(path)) {
            String guessContentTypeFromName = URLConnection.guessContentTypeFromName(path);
            km.a(3, f2418a, "Precaching: assetLink: " + str + " urlPath: " + path + " mimeType: " + guessContentTypeFromName);
            if (guessContentTypeFromName != null) {
                if (guessContentTypeFromName.startsWith(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                    km.a(3, f2418a, "Precaching: asset is a video: " + str);
                    asVar = as.VIDEO;
                } else if (guessContentTypeFromName.startsWith(AdView.DEFAULT_IMAGE_NAME)) {
                    km.a(3, f2418a, "Precaching: asset is an image: " + str);
                    asVar = as.IMAGE;
                } else if (guessContentTypeFromName.startsWith(CommonConstants.RESPONSE_TEXT)) {
                    km.a(3, f2418a, "Precaching: asset is text: " + str);
                    asVar = as.TEXT;
                } else {
                    km.a(5, f2418a, "Precaching: could not identify media type for asset: " + str);
                }
            }
        } else {
            km.a(5, f2418a, "Precaching: could not identify urlPath for asset: " + str);
        }
        return this.b.a(str, asVar, j);
    }

    public static File b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(fk.a("fileAssetCacheFolder"), str);
        if (!file.exists()) {
            return null;
        }
        return file;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(Bitmap bitmap, String str) {
        FileOutputStream fileOutputStream;
        Throwable th;
        IOException e;
        boolean z;
        if (bitmap == null || TextUtils.isEmpty(str)) {
            return false;
        }
        km.a(3, f2418a, "fAssetCache: Creating cache file for " + str);
        File file = new File(fk.a("fileAssetCacheFolder"), str);
        FileOutputStream fileOutputStream2 = null;
        try {
            if (!file.exists()) {
                if (!lx.a(file)) {
                    throw new IOException("Precaching: Error creating directory to save cache file:" + file.getAbsolutePath());
                }
                fileOutputStream = new FileOutputStream(file);
                try {
                    try {
                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        fileOutputStream2 = fileOutputStream;
                    } catch (IOException e2) {
                        e = e2;
                        km.a(6, f2418a, "Precaching: Error saving cache file for filename:" + str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + e.getMessage(), e);
                        ly.a(fileOutputStream);
                        z = false;
                        if (z) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    ly.a(fileOutputStream);
                    throw th;
                }
            }
            ly.a(fileOutputStream2);
            z = true;
        } catch (IOException e3) {
            fileOutputStream = null;
            e = e3;
        } catch (Throwable th3) {
            fileOutputStream = null;
            th = th3;
            ly.a(fileOutputStream);
            throw th;
        }
        if (z) {
            file.delete();
            return z;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean d(r rVar, String str) {
        FileOutputStream fileOutputStream;
        Throwable th;
        aq.b bVar;
        IOException iOException;
        boolean z;
        FileOutputStream fileOutputStream2;
        aq.b bVar2 = null;
        if (rVar == null || TextUtils.isEmpty(str)) {
            return false;
        }
        km.a(3, f2418a, "fAdIdQueue: Creating temp file for " + rVar.e());
        File file = new File(fk.a("fileStreamCacheDownloaderTmp", rVar.e()), fk.c(str));
        try {
            if (file.exists()) {
                fileOutputStream2 = null;
            } else if (!lx.a(file)) {
                throw new IOException("Precaching: Error creating directory to save tmp file:" + file.getAbsolutePath());
            } else {
                fileOutputStream2 = new FileOutputStream(file);
                try {
                    aa aaVar = this.b;
                    if (aaVar.a() && !TextUtils.isEmpty(str)) {
                        bVar2 = aaVar.b.a(str);
                    }
                } catch (IOException e) {
                    fileOutputStream = fileOutputStream2;
                    bVar = null;
                    iOException = e;
                } catch (Throwable th2) {
                    fileOutputStream = fileOutputStream2;
                    bVar = null;
                    th = th2;
                }
                try {
                    if (bVar2 != null) {
                        ly.a(bVar2.f2456a, fileOutputStream2);
                        km.a(3, f2418a, "Precaching: Temp asset " + str + " saved to :" + file.getAbsolutePath());
                    } else {
                        km.a(3, f2418a, "Precaching: Temp asset not saved.  Could not open cache reader: " + str);
                    }
                } catch (IOException e2) {
                    fileOutputStream = fileOutputStream2;
                    bVar = bVar2;
                    iOException = e2;
                    try {
                        km.a(6, f2418a, "Precaching: Error saving temp file for url:" + str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + iOException.getMessage(), iOException);
                        ly.a(bVar);
                        ly.a(fileOutputStream);
                        z = false;
                        if (!z) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        ly.a(bVar);
                        ly.a(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th4) {
                    fileOutputStream = fileOutputStream2;
                    bVar = bVar2;
                    th = th4;
                    ly.a(bVar);
                    ly.a(fileOutputStream);
                    throw th;
                }
            }
            ly.a(bVar2);
            ly.a(fileOutputStream2);
            z = true;
        } catch (IOException e3) {
            fileOutputStream = null;
            iOException = e3;
            bVar = null;
        } catch (Throwable th5) {
            fileOutputStream = null;
            th = th5;
            bVar = null;
        }
        if (!z) {
            return z;
        }
        file.delete();
        return z;
    }

    public static String c(String str) {
        return fk.c(str);
    }

    private synchronized void a(ac.a aVar) {
        ac acVar = new ac();
        acVar.f2420a = aVar;
        ki.a().a(acVar);
    }
}
