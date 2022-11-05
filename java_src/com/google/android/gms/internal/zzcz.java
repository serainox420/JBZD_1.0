package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
class zzcz implements Application.ActivityLifecycleCallbacks {
    private final Application zzwS;
    private final WeakReference<Application.ActivityLifecycleCallbacks> zzxm;
    private boolean zzxn = false;

    /* loaded from: classes2.dex */
    public interface zza {
        void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks);
    }

    public zzcz(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzxm = new WeakReference<>(activityLifecycleCallbacks);
        this.zzwS = application;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(final Activity activity, final Bundle bundle) {
        zza(new zza(this) { // from class: com.google.android.gms.internal.zzcz.1
            @Override // com.google.android.gms.internal.zzcz.zza
            public void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityCreated(activity, bundle);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(final Activity activity) {
        zza(new zza(this) { // from class: com.google.android.gms.internal.zzcz.7
            @Override // com.google.android.gms.internal.zzcz.zza
            public void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityDestroyed(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(final Activity activity) {
        zza(new zza(this) { // from class: com.google.android.gms.internal.zzcz.4
            @Override // com.google.android.gms.internal.zzcz.zza
            public void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityPaused(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(final Activity activity) {
        zza(new zza(this) { // from class: com.google.android.gms.internal.zzcz.3
            @Override // com.google.android.gms.internal.zzcz.zza
            public void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityResumed(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(final Activity activity, final Bundle bundle) {
        zza(new zza(this) { // from class: com.google.android.gms.internal.zzcz.6
            @Override // com.google.android.gms.internal.zzcz.zza
            public void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivitySaveInstanceState(activity, bundle);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(final Activity activity) {
        zza(new zza(this) { // from class: com.google.android.gms.internal.zzcz.2
            @Override // com.google.android.gms.internal.zzcz.zza
            public void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityStarted(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(final Activity activity) {
        zza(new zza(this) { // from class: com.google.android.gms.internal.zzcz.5
            @Override // com.google.android.gms.internal.zzcz.zza
            public void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
                activityLifecycleCallbacks.onActivityStopped(activity);
            }
        });
    }

    protected void zza(zza zzaVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.zzxm.get();
            if (activityLifecycleCallbacks != null) {
                zzaVar.zza(activityLifecycleCallbacks);
            } else if (!this.zzxn) {
                this.zzwS.unregisterActivityLifecycleCallbacks(this);
                this.zzxn = true;
            }
        } catch (Exception e) {
            zzpk.zzb("Error while dispatching lifecycle callback.", e);
        }
    }
}
