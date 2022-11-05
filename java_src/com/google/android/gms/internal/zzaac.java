package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public final class zzaac implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
    private static final zzaac zzazV = new zzaac();
    private final AtomicBoolean zzazW = new AtomicBoolean();
    private final AtomicBoolean zzazX = new AtomicBoolean();
    private final ArrayList<zza> mListeners = new ArrayList<>();
    private boolean zzadP = false;

    /* loaded from: classes2.dex */
    public interface zza {
        void zzat(boolean z);
    }

    private zzaac() {
    }

    public static void zza(Application application) {
        synchronized (zzazV) {
            if (!zzazV.zzadP) {
                application.registerActivityLifecycleCallbacks(zzazV);
                application.registerComponentCallbacks(zzazV);
                zzazV.zzadP = true;
            }
        }
    }

    private void zzat(boolean z) {
        synchronized (zzazV) {
            Iterator<zza> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().zzat(z);
            }
        }
    }

    public static zzaac zzvB() {
        return zzazV;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.zzazW.compareAndSet(true, false);
        this.zzazX.set(true);
        if (compareAndSet) {
            zzat(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.zzazW.compareAndSet(true, false);
        this.zzazX.set(true);
        if (compareAndSet) {
            zzat(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i != 20 || !this.zzazW.compareAndSet(false, true)) {
            return;
        }
        this.zzazX.set(true);
        zzat(true);
    }

    public void zza(zza zzaVar) {
        synchronized (zzazV) {
            this.mListeners.add(zzaVar);
        }
    }

    @TargetApi(16)
    public boolean zzas(boolean z) {
        if (!this.zzazX.get()) {
            if (!com.google.android.gms.common.util.zzt.zzzi()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.zzazX.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.zzazW.set(true);
            }
        }
        return zzvC();
    }

    public boolean zzvC() {
        return this.zzazW.get();
    }
}
