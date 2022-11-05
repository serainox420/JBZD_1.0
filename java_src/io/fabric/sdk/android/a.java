package io.fabric.sdk.android;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;
/* compiled from: ActivityLifecycleManager.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Application f5638a;
    private C0590a b;

    /* compiled from: ActivityLifecycleManager.java */
    /* loaded from: classes3.dex */
    public static abstract class b {
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }
    }

    public a(Context context) {
        this.f5638a = (Application) context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 14) {
            this.b = new C0590a(this.f5638a);
        }
    }

    public boolean a(b bVar) {
        return this.b != null && this.b.a(bVar);
    }

    public void a() {
        if (this.b == null) {
            return;
        }
        this.b.a();
    }

    /* compiled from: ActivityLifecycleManager.java */
    /* renamed from: io.fabric.sdk.android.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private static class C0590a {

        /* renamed from: a  reason: collision with root package name */
        private final Set<Application.ActivityLifecycleCallbacks> f5639a = new HashSet();
        private final Application b;

        C0590a(Application application) {
            this.b = application;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @TargetApi(14)
        public void a() {
            for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : this.f5639a) {
                this.b.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @TargetApi(14)
        public boolean a(final b bVar) {
            if (this.b != null) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: io.fabric.sdk.android.a.a.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityCreated(Activity activity, Bundle bundle) {
                        bVar.onActivityCreated(activity, bundle);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStarted(Activity activity) {
                        bVar.onActivityStarted(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityResumed(Activity activity) {
                        bVar.onActivityResumed(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPaused(Activity activity) {
                        bVar.onActivityPaused(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityStopped(Activity activity) {
                        bVar.onActivityStopped(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                        bVar.onActivitySaveInstanceState(activity, bundle);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityDestroyed(Activity activity) {
                        bVar.onActivityDestroyed(activity);
                    }
                };
                this.b.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
                this.f5639a.add(activityLifecycleCallbacks);
                return true;
            }
            return false;
        }
    }
}
