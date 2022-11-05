package com.apprupt.sdk;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.apprupt.sdk.CvContentManager;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class CvSDK {
    static Messages e;
    private static String g;
    private static final String f = "pi." + CvRandomString.a(8) + ".%d.%s";
    private static CvAnimationType h = CvAnimationType.NONE;
    private static int i = 0;
    private static boolean j = false;

    /* renamed from: a  reason: collision with root package name */
    static final CvContentManager f1884a = new CvContentManager();
    static final CvConfig b = new CvConfig("android_4.2.7");
    private static boolean k = false;
    static final CvMediation c = new CvMediation();
    public static final CvValueExchange d = new CvValueExchange();

    /* loaded from: classes.dex */
    public interface CvInterstitialListener {
        void cvInterstitialDidAppear(int i);

        void cvInterstitialDidDisappear(int i);

        void cvInterstitialDidFail(int i, String str, int i2);

        void cvInterstitialFirstTap();

        void cvInterstitialWillAppear(int i);

        void cvInterstitialWillDisappear(int i);
    }

    public static void a(Activity activity) {
        a((Context) activity);
    }

    public static void a() {
        CvAdColony.a();
    }

    public static void b(Activity activity) {
        CvAdColony.a(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        boolean z = true;
        synchronized (CvSDK.class) {
            if (j) {
                z = false;
            } else {
                j = true;
                e = new Messages(context.getApplicationContext());
            }
        }
        if (z) {
            b(context);
            CvAppInfo.a(context.getApplicationContext());
            CvViewHelper.a(context);
        }
        d.a(context);
        if (context instanceof Activity) {
            c.a((Activity) context);
            b.a(context);
        }
    }

    static void b(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(CvInterstitialActivity.class);
        arrayList.add(CvOverlayActivity.class);
        arrayList.add(CvExpandActivity.class);
        a(context, arrayList);
    }

    static void a(Context context, List<Class> list) {
        ArrayList arrayList = new ArrayList();
        for (Class cls : list) {
            if (!a(context, cls)) {
                arrayList.add(cls.getName());
            }
        }
        if (arrayList.size() > 0) {
            StringBuilder sb = new StringBuilder();
            String str = "";
            Iterator it = arrayList.iterator();
            while (true) {
                String str2 = str;
                if (!it.hasNext()) {
                    break;
                }
                sb.append(str2 + ((String) it.next()));
                str = ", ";
            }
            throw new InternalError("Activities declaration missing in AndroidManifest.xml: " + sb.toString());
        }
    }

    private static boolean a(Context context, Class cls) {
        Intent intent = new Intent(context, cls);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    public static void a(Context context, int i2, CvInterstitialListener cvInterstitialListener) {
        CvInterstitialManager.a().a(context, i2, cvInterstitialListener, "", "");
    }

    public static void b() {
        CvInterstitialManager.a().b();
    }

    public static void a(Context context, int i2, CvContentManager.PreloaderListener preloaderListener) {
        a(context, i2, preloaderListener, null, null);
    }

    public static void a(Context context, int i2, CvContentManager.PreloaderListener preloaderListener, String str, String str2) {
        CvInterstitialManager.a().a(context, i2, preloaderListener, str, str2);
    }

    public static void c() {
        g = String.format(f, Long.valueOf(System.currentTimeMillis()), CvRandomString.a(8));
        Logger.a().b("NEW PI KEY: " + g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d() {
        if (g == null) {
            c();
        }
        return g;
    }

    public static CvAnimationType e() {
        return h;
    }

    public static int f() {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Context context) {
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        for (int i2 = 0; i2 < runningAppProcesses.size(); i2++) {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = runningAppProcesses.get(i2);
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.importance == 100;
            }
        }
        return false;
    }
}
