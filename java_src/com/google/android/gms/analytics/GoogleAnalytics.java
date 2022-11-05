package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzry;
import com.google.android.gms.internal.zzsc;
import com.google.android.gms.internal.zzsw;
import com.google.android.gms.internal.zztc;
import com.google.android.gms.internal.zztk;
import com.google.android.gms.internal.zztl;
import com.google.android.gms.internal.zztn;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class GoogleAnalytics extends com.google.android.gms.analytics.zza {
    private static List<Runnable> zzabG = new ArrayList();
    private Set<zza> zzabH;
    private boolean zzabI;
    private boolean zzabJ;
    private volatile boolean zzabK;
    private boolean zzabL;
    private boolean zztZ;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zza {
        void zzo(Activity activity);

        void zzp(Activity activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(14)
    /* loaded from: classes2.dex */
    public class zzb implements Application.ActivityLifecycleCallbacks {
        zzb() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            GoogleAnalytics.this.zzm(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            GoogleAnalytics.this.zzn(activity);
        }
    }

    public GoogleAnalytics(zzsc zzscVar) {
        super(zzscVar);
        this.zzabH = new HashSet();
    }

    public static GoogleAnalytics getInstance(Context context) {
        return zzsc.zzan(context).zzof();
    }

    private zzry zzmA() {
        return zzmn().zzmA();
    }

    private zztn zzmB() {
        return zzmn().zzmB();
    }

    public static void zzmx() {
        synchronized (GoogleAnalytics.class) {
            if (zzabG != null) {
                for (Runnable runnable : zzabG) {
                    runnable.run();
                }
                zzabG = null;
            }
        }
    }

    public void dispatchLocalHits() {
        zzmA().zznL();
    }

    @TargetApi(14)
    public void enableAutoActivityReports(Application application) {
        int i = Build.VERSION.SDK_INT;
        if (!this.zzabI) {
            application.registerActivityLifecycleCallbacks(new zzb());
            this.zzabI = true;
        }
    }

    public boolean getAppOptOut() {
        return this.zzabK;
    }

    @Deprecated
    public Logger getLogger() {
        return zztc.getLogger();
    }

    public void initialize() {
        zzmw();
        this.zztZ = true;
    }

    public boolean isDryRunEnabled() {
        return this.zzabJ;
    }

    public boolean isInitialized() {
        return this.zztZ;
    }

    public Tracker newTracker(int i) {
        Tracker tracker;
        zztl zzaI;
        synchronized (this) {
            tracker = new Tracker(zzmn(), null, null);
            if (i > 0 && (zzaI = new zztk(zzmn()).zzaI(i)) != null) {
                tracker.zza(zzaI);
            }
            tracker.initialize();
        }
        return tracker;
    }

    public Tracker newTracker(String str) {
        Tracker tracker;
        synchronized (this) {
            tracker = new Tracker(zzmn(), str, null);
            tracker.initialize();
        }
        return tracker;
    }

    public void reportActivityStart(Activity activity) {
        if (!this.zzabI) {
            zzm(activity);
        }
    }

    public void reportActivityStop(Activity activity) {
        if (!this.zzabI) {
            zzn(activity);
        }
    }

    public void setAppOptOut(boolean z) {
        this.zzabK = z;
        if (this.zzabK) {
            zzmA().zznK();
        }
    }

    public void setDryRun(boolean z) {
        this.zzabJ = z;
    }

    public void setLocalDispatchPeriod(int i) {
        zzmA().setLocalDispatchPeriod(i);
    }

    @Deprecated
    public void setLogger(Logger logger) {
        zztc.setLogger(logger);
        if (!this.zzabL) {
            String str = zzsw.zzafl.get();
            Log.i(zzsw.zzafl.get(), new StringBuilder(String.valueOf(str).length() + 112).append("GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.").append(str).append(" DEBUG").toString());
            this.zzabL = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zza zzaVar) {
        this.zzabH.add(zzaVar);
        Context context = zzmn().getContext();
        if (context instanceof Application) {
            enableAutoActivityReports((Application) context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zza zzaVar) {
        this.zzabH.remove(zzaVar);
    }

    void zzm(Activity activity) {
        for (zza zzaVar : this.zzabH) {
            zzaVar.zzo(activity);
        }
    }

    void zzmw() {
        zztn zzmB = zzmB();
        zzmB.zzpI();
        if (zzmB.zzpM()) {
            setDryRun(zzmB.zzpN());
        }
        zzmB.zzpI();
    }

    public String zzmy() {
        zzac.zzdk("getClientId can not be called from the main thread");
        return zzmn().zzoi().zzoQ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzmz() {
        zzmA().zznM();
    }

    void zzn(Activity activity) {
        for (zza zzaVar : this.zzabH) {
            zzaVar.zzp(activity);
        }
    }
}
