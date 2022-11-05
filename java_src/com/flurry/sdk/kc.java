package com.flurry.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.flurry.sdk.kb;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class kc {

    /* renamed from: a  reason: collision with root package name */
    private static kc f2957a;
    private static final String b = kc.class.getSimpleName();
    private Object c;

    public static synchronized kc a() {
        kc kcVar;
        synchronized (kc.class) {
            if (f2957a == null) {
                f2957a = new kc();
            }
            kcVar = f2957a;
        }
        return kcVar;
    }

    private kc() {
        if (Build.VERSION.SDK_INT < 14 || this.c != null) {
            return;
        }
        Context context = jy.a().f2947a;
        if (!(context instanceof Application)) {
            return;
        }
        this.c = new Application.ActivityLifecycleCallbacks() { // from class: com.flurry.sdk.kc.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity, Bundle bundle) {
                km.a(3, kc.b, "onActivityCreated for activity:" + activity);
                a(activity, kb.a.kCreated);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity) {
                km.a(3, kc.b, "onActivityStarted for activity:" + activity);
                a(activity, kb.a.kStarted);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity) {
                km.a(3, kc.b, "onActivityResumed for activity:" + activity);
                a(activity, kb.a.kResumed);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity) {
                km.a(3, kc.b, "onActivityPaused for activity:" + activity);
                a(activity, kb.a.kPaused);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity) {
                km.a(3, kc.b, "onActivityStopped for activity:" + activity);
                a(activity, kb.a.kStopped);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                km.a(3, kc.b, "onActivitySaveInstanceState for activity:" + activity);
                a(activity, kb.a.kSaveState);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity) {
                km.a(3, kc.b, "onActivityDestroyed for activity:" + activity);
                a(activity, kb.a.kDestroyed);
            }

            private static void a(Activity activity, kb.a aVar) {
                kb kbVar = new kb();
                kbVar.f2955a = new WeakReference<>(activity);
                kbVar.b = aVar;
                kbVar.b();
            }
        };
        ((Application) context).registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks) this.c);
    }

    public final boolean b() {
        return this.c != null;
    }
}
