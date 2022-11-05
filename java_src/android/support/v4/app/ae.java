package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
/* compiled from: NavUtils.java */
/* loaded from: classes.dex */
public final class ae {

    /* renamed from: a  reason: collision with root package name */
    private static final a f227a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavUtils.java */
    /* loaded from: classes.dex */
    public interface a {
        Intent a(Activity activity);

        String a(Context context, ActivityInfo activityInfo);

        boolean a(Activity activity, Intent intent);

        void b(Activity activity, Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NavUtils.java */
    /* loaded from: classes.dex */
    public static class b implements a {
        b() {
        }

        @Override // android.support.v4.app.ae.a
        public Intent a(Activity activity) {
            Intent intent = null;
            String b = ae.b(activity);
            if (b != null) {
                ComponentName componentName = new ComponentName(activity, b);
                try {
                    if (ae.b(activity, componentName) == null) {
                        intent = android.support.v4.content.i.a(componentName);
                    } else {
                        intent = new Intent().setComponent(componentName);
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + b + "' in manifest");
                }
            }
            return intent;
        }

        @Override // android.support.v4.app.ae.a
        public boolean a(Activity activity, Intent intent) {
            String action = activity.getIntent().getAction();
            return action != null && !action.equals("android.intent.action.MAIN");
        }

        @Override // android.support.v4.app.ae.a
        public void b(Activity activity, Intent intent) {
            intent.addFlags(67108864);
            activity.startActivity(intent);
            activity.finish();
        }

        @Override // android.support.v4.app.ae.a
        public String a(Context context, ActivityInfo activityInfo) {
            String string;
            if (activityInfo.metaData != null && (string = activityInfo.metaData.getString("android.support.PARENT_ACTIVITY")) != null) {
                if (string.charAt(0) == '.') {
                    return context.getPackageName() + string;
                }
                return string;
            }
            return null;
        }
    }

    /* compiled from: NavUtils.java */
    /* loaded from: classes.dex */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.app.ae.b, android.support.v4.app.ae.a
        public Intent a(Activity activity) {
            Intent a2 = af.a(activity);
            if (a2 == null) {
                return b(activity);
            }
            return a2;
        }

        Intent b(Activity activity) {
            return super.a(activity);
        }

        @Override // android.support.v4.app.ae.b, android.support.v4.app.ae.a
        public boolean a(Activity activity, Intent intent) {
            return af.a(activity, intent);
        }

        @Override // android.support.v4.app.ae.b, android.support.v4.app.ae.a
        public void b(Activity activity, Intent intent) {
            af.b(activity, intent);
        }

        @Override // android.support.v4.app.ae.b, android.support.v4.app.ae.a
        public String a(Context context, ActivityInfo activityInfo) {
            String a2 = af.a(activityInfo);
            if (a2 == null) {
                return super.a(context, activityInfo);
            }
            return a2;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f227a = new c();
        } else {
            f227a = new b();
        }
    }

    public static boolean a(Activity activity, Intent intent) {
        return f227a.a(activity, intent);
    }

    public static void b(Activity activity, Intent intent) {
        f227a.b(activity, intent);
    }

    public static Intent a(Activity activity) {
        return f227a.a(activity);
    }

    public static Intent a(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String b2 = b(context, componentName);
        if (b2 == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), b2);
        if (b(context, componentName2) == null) {
            return android.support.v4.content.i.a(componentName2);
        }
        return new Intent().setComponent(componentName2);
    }

    public static String b(Activity activity) {
        try {
            return b(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static String b(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        return f227a.a(context, context.getPackageManager().getActivityInfo(componentName, 128));
    }
}
