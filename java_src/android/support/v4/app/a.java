package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.app.ay;
import android.support.v4.app.b;
import android.support.v4.app.c;
import android.view.View;
import java.util.List;
import java.util.Map;
/* compiled from: ActivityCompat.java */
/* loaded from: classes.dex */
public class a extends android.support.v4.content.b {

    /* compiled from: ActivityCompat.java */
    /* renamed from: android.support.v4.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0009a {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    public static void a(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            e.a(activity, intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void a(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            e.a(activity, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            e.a(activity);
        } else {
            activity.finish();
        }
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            android.support.v4.app.b.a(activity);
        } else {
            activity.finish();
        }
    }

    public static void a(Activity activity, ay ayVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            android.support.v4.app.c.a(activity, b(ayVar));
        } else if (Build.VERSION.SDK_INT >= 21) {
            android.support.v4.app.b.a(activity, a(ayVar));
        }
    }

    public static void b(Activity activity, ay ayVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            android.support.v4.app.c.b(activity, b(ayVar));
        } else if (Build.VERSION.SDK_INT >= 21) {
            android.support.v4.app.b.b(activity, a(ayVar));
        }
    }

    public static void c(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            android.support.v4.app.b.b(activity);
        }
    }

    public static void d(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            android.support.v4.app.b.c(activity);
        }
    }

    public static void a(final Activity activity, final String[] strArr, final int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            android.support.v4.app.c.a(activity, strArr, i);
        } else if (activity instanceof InterfaceC0009a) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: android.support.v4.app.a.1
                @Override // java.lang.Runnable
                public void run() {
                    int[] iArr = new int[strArr.length];
                    PackageManager packageManager = activity.getPackageManager();
                    String packageName = activity.getPackageName();
                    int length = strArr.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr[i2] = packageManager.checkPermission(strArr[i2], packageName);
                    }
                    ((InterfaceC0009a) activity).onRequestPermissionsResult(i, strArr, iArr);
                }
            });
        }
    }

    public static boolean a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return android.support.v4.app.c.a(activity, str);
        }
        return false;
    }

    private static b.a a(ay ayVar) {
        if (ayVar == null) {
            return null;
        }
        return new b(ayVar);
    }

    private static c.AbstractC0014c b(ay ayVar) {
        if (ayVar == null) {
            return null;
        }
        return new c(ayVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ActivityCompat.java */
    /* loaded from: classes.dex */
    public static class b extends b.a {

        /* renamed from: a  reason: collision with root package name */
        private ay f214a;

        public b(ay ayVar) {
            this.f214a = ayVar;
        }

        @Override // android.support.v4.app.b.a
        public void a(List<String> list, List<View> list2, List<View> list3) {
            this.f214a.a(list, list2, list3);
        }

        @Override // android.support.v4.app.b.a
        public void b(List<String> list, List<View> list2, List<View> list3) {
            this.f214a.b(list, list2, list3);
        }

        @Override // android.support.v4.app.b.a
        public void a(List<View> list) {
            this.f214a.a(list);
        }

        @Override // android.support.v4.app.b.a
        public void a(List<String> list, Map<String, View> map) {
            this.f214a.a(list, map);
        }

        @Override // android.support.v4.app.b.a
        public Parcelable a(View view, Matrix matrix, RectF rectF) {
            return this.f214a.a(view, matrix, rectF);
        }

        @Override // android.support.v4.app.b.a
        public View a(Context context, Parcelable parcelable) {
            return this.f214a.a(context, parcelable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ActivityCompat.java */
    /* loaded from: classes.dex */
    public static class c extends c.AbstractC0014c {

        /* renamed from: a  reason: collision with root package name */
        private ay f215a;

        public c(ay ayVar) {
            this.f215a = ayVar;
        }

        @Override // android.support.v4.app.b.a
        public void a(List<String> list, List<View> list2, List<View> list3) {
            this.f215a.a(list, list2, list3);
        }

        @Override // android.support.v4.app.b.a
        public void b(List<String> list, List<View> list2, List<View> list3) {
            this.f215a.b(list, list2, list3);
        }

        @Override // android.support.v4.app.b.a
        public void a(List<View> list) {
            this.f215a.a(list);
        }

        @Override // android.support.v4.app.b.a
        public void a(List<String> list, Map<String, View> map) {
            this.f215a.a(list, map);
        }

        @Override // android.support.v4.app.b.a
        public Parcelable a(View view, Matrix matrix, RectF rectF) {
            return this.f215a.a(view, matrix, rectF);
        }

        @Override // android.support.v4.app.b.a
        public View a(Context context, Parcelable parcelable) {
            return this.f215a.a(context, parcelable);
        }

        @Override // android.support.v4.app.c.AbstractC0014c
        public void a(List<String> list, List<View> list2, final c.a aVar) {
            this.f215a.a(list, list2, new ay.a() { // from class: android.support.v4.app.a.c.1
                @Override // android.support.v4.app.ay.a
                public void a() {
                    aVar.a();
                }
            });
        }
    }
}
