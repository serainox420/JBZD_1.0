package com.mopub.common.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.widget.Toast;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MraidVideoPlayerActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ManifestUtils {
    private static final List<Class<? extends Activity>> c;
    private static b b = new b();

    /* renamed from: a  reason: collision with root package name */
    private static final List<Class<? extends Activity>> f4391a = new ArrayList(4);

    private ManifestUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        try {
            Class<?> cls = Class.forName("com.mopub.mobileads.MoPubActivity");
            Class<?> cls2 = Class.forName("com.mopub.mobileads.MraidActivity");
            f4391a.add(cls);
            f4391a.add(cls2);
        } catch (ClassNotFoundException e) {
            MoPubLog.i("ManifestUtils running without interstitial module");
        }
        f4391a.add(MraidVideoPlayerActivity.class);
        f4391a.add(MoPubBrowser.class);
        c = new ArrayList(1);
        c.add(MoPubBrowser.class);
    }

    public static void checkWebViewActivitiesDeclared(Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            a(context, f4391a);
            b(context, f4391a);
        }
    }

    public static void checkNativeActivitiesDeclared(Context context) {
        if (Preconditions.NoThrow.checkNotNull(context, "context is not allowed to be null")) {
            a(context, c);
            b(context, c);
        }
    }

    @VisibleForTesting
    static void a(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> a2 = a(context, list, false);
        if (!a2.isEmpty()) {
            a(context);
            a(a2);
        }
    }

    @VisibleForTesting
    static void b(Context context, List<Class<? extends Activity>> list) {
        List<Class<? extends Activity>> c2 = c(context, a(context, list, true));
        if (!c2.isEmpty()) {
            a(context);
            d(context, c2);
        }
    }

    public static boolean isDebuggable(Context context) {
        return Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, 2);
    }

    private static List<Class<? extends Activity>> a(Context context, List<Class<? extends Activity>> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            if (Intents.deviceCanHandleIntent(context, new Intent(context, cls)) == z) {
                arrayList.add(cls);
            }
        }
        return arrayList;
    }

    @TargetApi(13)
    private static List<Class<? extends Activity>> c(Context context, List<Class<? extends Activity>> list) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends Activity> cls : list) {
            try {
                a a2 = a(context, cls);
                if (!a2.hasKeyboardHidden || !a2.hasOrientation || !a2.hasScreenSize) {
                    arrayList.add(cls);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return arrayList;
    }

    private static void a(List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("AndroidManifest permissions for the following required MoPub activities are missing:\n");
        for (Class<? extends Activity> cls : list) {
            sb.append("\n\t").append(cls.getName());
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.w(sb.toString());
    }

    private static void d(Context context, List<Class<? extends Activity>> list) {
        StringBuilder sb = new StringBuilder("In AndroidManifest, the android:configChanges param is missing values for the following MoPub activities:\n");
        for (Class<? extends Activity> cls : list) {
            try {
                a a2 = a(context, cls);
                if (!a2.hasKeyboardHidden) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include keyboardHidden.");
                }
                if (!a2.hasOrientation) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include orientation.");
                }
                if (!a2.hasScreenSize) {
                    sb.append("\n\tThe android:configChanges param for activity " + cls.getName() + " must include screenSize.");
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        sb.append("\n\nPlease update your manifest to include them.");
        MoPubLog.w(sb.toString());
    }

    private static a a(Context context, Class<? extends Activity> cls) throws PackageManager.NameNotFoundException {
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(context, cls.getName()), 0);
        a aVar = new a();
        aVar.hasKeyboardHidden = b.hasFlag(cls, activityInfo.configChanges, 32);
        aVar.hasOrientation = b.hasFlag(cls, activityInfo.configChanges, 128);
        aVar.hasScreenSize = true;
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.HONEYCOMB_MR2) && context.getApplicationInfo().targetSdkVersion >= VersionCode.HONEYCOMB_MR2.getApiLevel()) {
            aVar.hasScreenSize = b.hasFlag(cls, activityInfo.configChanges, 1024);
        }
        return aVar;
    }

    private static void a(Context context) {
        if (isDebuggable(context)) {
            Toast makeText = Toast.makeText(context, "ERROR: YOUR MOPUB INTEGRATION IS INCOMPLETE.\nCheck logcat and update your AndroidManifest.xml with the correct activities and configuration.", 1);
            makeText.setGravity(7, 0, 0);
            makeText.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a {
        public boolean hasKeyboardHidden;
        public boolean hasOrientation;
        public boolean hasScreenSize;

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b {
        b() {
        }

        public boolean hasFlag(Class cls, int i, int i2) {
            return Utils.bitMaskContainsFlag(i, i2);
        }
    }
}
