package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzdd {
    private final Object zzxG = new Object();
    private zza zzxH = null;
    private boolean zzxI = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(14)
    /* loaded from: classes2.dex */
    public static class zza implements Application.ActivityLifecycleCallbacks {
        private Activity mActivity;
        private Context mContext;
        private Runnable zzxL;
        private long zzxM;
        private final Object zzrJ = new Object();
        private boolean zzxJ = true;
        private boolean zzxK = false;
        private List<zzb> mListeners = new ArrayList();
        private boolean zztZ = false;

        zza() {
        }

        private void setActivity(Activity activity) {
            synchronized (this.zzrJ) {
                if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                    this.mActivity = activity;
                }
            }
        }

        public Activity getActivity() {
            return this.mActivity;
        }

        public Context getContext() {
            return this.mContext;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            synchronized (this.zzrJ) {
                if (this.mActivity == null) {
                    return;
                }
                if (this.mActivity.equals(activity)) {
                    this.mActivity = null;
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            setActivity(activity);
            this.zzxK = true;
            if (this.zzxL != null) {
                zzpo.zzXC.removeCallbacks(this.zzxL);
            }
            Handler handler = zzpo.zzXC;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.zzdd.zza.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zza.this.zzrJ) {
                        if (!zza.this.zzxJ || !zza.this.zzxK) {
                            zzpk.zzbf("App is still foreground");
                        } else {
                            zza.this.zzxJ = false;
                            zzpk.zzbf("App went background");
                            for (zzb zzbVar : zza.this.mListeners) {
                                try {
                                    zzbVar.zzk(false);
                                } catch (Exception e) {
                                    zzpk.zzb("OnForegroundStateChangedListener threw exception.", e);
                                }
                            }
                        }
                    }
                }
            };
            this.zzxL = runnable;
            handler.postDelayed(runnable, this.zzxM);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            boolean z = false;
            setActivity(activity);
            this.zzxK = false;
            if (!this.zzxJ) {
                z = true;
            }
            this.zzxJ = true;
            if (this.zzxL != null) {
                zzpo.zzXC.removeCallbacks(this.zzxL);
            }
            synchronized (this.zzrJ) {
                if (z) {
                    for (zzb zzbVar : this.mListeners) {
                        try {
                            zzbVar.zzk(true);
                        } catch (Exception e) {
                            zzpk.zzb("OnForegroundStateChangedListener threw exception.", e);
                        }
                    }
                } else {
                    zzpk.zzbf("App is still foreground.");
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            setActivity(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        public void zza(Application application, Context context) {
            if (!this.zztZ) {
                application.registerActivityLifecycleCallbacks(this);
                if (context instanceof Activity) {
                    setActivity((Activity) context);
                }
                this.mContext = context;
                this.zzxM = zzgd.zzCQ.get().longValue();
                this.zztZ = true;
            }
        }

        public void zza(zzb zzbVar) {
            this.mListeners.add(zzbVar);
        }
    }

    /* loaded from: classes2.dex */
    public interface zzb {
        void zzk(boolean z);
    }

    public Activity getActivity() {
        Activity activity;
        synchronized (this.zzxG) {
            com.google.android.gms.common.util.zzt.zzzg();
            activity = this.zzxH != null ? this.zzxH.getActivity() : null;
        }
        return activity;
    }

    public Context getContext() {
        Context context;
        synchronized (this.zzxG) {
            com.google.android.gms.common.util.zzt.zzzg();
            context = this.zzxH != null ? this.zzxH.getContext() : null;
        }
        return context;
    }

    public void initialize(Context context) {
        synchronized (this.zzxG) {
            if (!this.zzxI) {
                com.google.android.gms.common.util.zzt.zzzg();
                if (!zzgd.zzCP.get().booleanValue()) {
                    return;
                }
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    zzpk.zzbh("Can not cast Context to Application");
                    return;
                }
                if (this.zzxH == null) {
                    this.zzxH = new zza();
                }
                this.zzxH.zza(application, context);
                this.zzxI = true;
            }
        }
    }

    public void zza(zzb zzbVar) {
        synchronized (this.zzxG) {
            com.google.android.gms.common.util.zzt.zzzg();
            if (!zzgd.zzCP.get().booleanValue()) {
                return;
            }
            if (this.zzxH == null) {
                this.zzxH = new zza();
            }
            this.zzxH.zza(zzbVar);
        }
    }
}
