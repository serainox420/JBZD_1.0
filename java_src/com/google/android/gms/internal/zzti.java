package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
/* loaded from: classes2.dex */
public final class zzti {
    private static Boolean zzaby;
    private final Context mContext;
    private final Handler mHandler;
    private final zza zzagJ;

    /* loaded from: classes2.dex */
    public interface zza {
        boolean callServiceStopSelfResult(int i);

        Context getContext();
    }

    public zzti(zza zzaVar) {
        this.mContext = zzaVar.getContext();
        com.google.android.gms.common.internal.zzac.zzw(this.mContext);
        this.zzagJ = zzaVar;
        this.mHandler = new Handler();
    }

    public static boolean zzal(Context context) {
        com.google.android.gms.common.internal.zzac.zzw(context);
        if (zzaby != null) {
            return zzaby.booleanValue();
        }
        boolean zzy = zztm.zzy(context, "com.google.android.gms.analytics.AnalyticsService");
        zzaby = Boolean.valueOf(zzy);
        return zzy;
    }

    private void zzmt() {
        try {
            synchronized (zzth.zztX) {
                zzbay zzbayVar = zzth.zzabw;
                if (zzbayVar != null && zzbayVar.isHeld()) {
                    zzbayVar.release();
                }
            }
        } catch (SecurityException e) {
        }
    }

    public void onCreate() {
        zzsc.zzan(this.mContext).zznS().zzbP("Local AnalyticsService is starting up");
    }

    public void onDestroy() {
        zzsc.zzan(this.mContext).zznS().zzbP("Local AnalyticsService is shutting down");
    }

    public int onStartCommand(Intent intent, int i, final int i2) {
        zzmt();
        final zzsc zzan = zzsc.zzan(this.mContext);
        final zztd zznS = zzan.zznS();
        if (intent == null) {
            zznS.zzbS("AnalyticsService started with null intent");
        } else {
            String action = intent.getAction();
            zznS.zza("Local AnalyticsService called. startId, action", Integer.valueOf(i2), action);
            if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
                zzan.zzmA().zza(new zzsu() { // from class: com.google.android.gms.internal.zzti.1
                    @Override // com.google.android.gms.internal.zzsu
                    public void zzf(Throwable th) {
                        zzti.this.mHandler.post(new Runnable() { // from class: com.google.android.gms.internal.zzti.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (zzti.this.zzagJ.callServiceStopSelfResult(i2)) {
                                    zznS.zzbP("Local AnalyticsService processed last dispatch request");
                                }
                            }
                        });
                    }
                });
            }
        }
        return 2;
    }
}
