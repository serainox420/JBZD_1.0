package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
/* compiled from: IntentCompat.java */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final a f298a;

    /* compiled from: IntentCompat.java */
    /* loaded from: classes.dex */
    interface a {
        Intent a(ComponentName componentName);
    }

    /* compiled from: IntentCompat.java */
    /* loaded from: classes.dex */
    static class b implements a {
        b() {
        }

        @Override // android.support.v4.content.i.a
        public Intent a(ComponentName componentName) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(componentName);
            intent.addCategory("android.intent.category.LAUNCHER");
            return intent;
        }
    }

    /* compiled from: IntentCompat.java */
    /* loaded from: classes.dex */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.content.i.b, android.support.v4.content.i.a
        public Intent a(ComponentName componentName) {
            return j.a(componentName);
        }
    }

    /* compiled from: IntentCompat.java */
    /* loaded from: classes.dex */
    static class d extends c {
        d() {
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 15) {
            f298a = new d();
        } else if (i >= 11) {
            f298a = new c();
        } else {
            f298a = new b();
        }
    }

    public static Intent a(ComponentName componentName) {
        return f298a.a(componentName);
    }
}
