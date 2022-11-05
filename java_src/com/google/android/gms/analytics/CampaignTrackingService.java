package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzbay;
import com.google.android.gms.internal.zzsc;
import com.google.android.gms.internal.zztd;
import com.google.android.gms.internal.zztm;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
/* loaded from: classes2.dex */
public class CampaignTrackingService extends Service {
    private static Boolean zzaby;
    private Handler mHandler;

    private Handler getHandler() {
        Handler handler = this.mHandler;
        if (handler == null) {
            Handler handler2 = new Handler(getMainLooper());
            this.mHandler = handler2;
            return handler2;
        }
        return handler;
    }

    public static boolean zzal(Context context) {
        zzac.zzw(context);
        if (zzaby != null) {
            return zzaby.booleanValue();
        }
        boolean zzy = zztm.zzy(context, "com.google.android.gms.analytics.CampaignTrackingService");
        zzaby = Boolean.valueOf(zzy);
        return zzy;
    }

    private void zzmt() {
        try {
            synchronized (CampaignTrackingReceiver.zztX) {
                zzbay zzbayVar = CampaignTrackingReceiver.zzabw;
                if (zzbayVar != null && zzbayVar.isHeld()) {
                    zzbayVar.release();
                }
            }
        } catch (SecurityException e) {
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        zzsc.zzan(this).zznS().zzbP("CampaignTrackingService is starting up");
    }

    @Override // android.app.Service
    public void onDestroy() {
        zzsc.zzan(this).zznS().zzbP("CampaignTrackingService is shutting down");
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, final int i2) {
        zzmt();
        zzsc zzan = zzsc.zzan(this);
        final zztd zznS = zzan.zznS();
        String stringExtra = intent.getStringExtra(AdTrackerConstants.REFERRER);
        final Handler handler = getHandler();
        if (TextUtils.isEmpty(stringExtra)) {
            zznS.zzbS("No campaign found on com.android.vending.INSTALL_REFERRER \"referrer\" extra");
            zzan.zznU().zzg(new Runnable() { // from class: com.google.android.gms.analytics.CampaignTrackingService.1
                @Override // java.lang.Runnable
                public void run() {
                    CampaignTrackingService.this.zza(zznS, handler, i2);
                }
            });
        } else {
            int zzoZ = zzan.zznT().zzoZ();
            if (stringExtra.length() > zzoZ) {
                zznS.zzc("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(zzoZ));
                stringExtra = stringExtra.substring(0, zzoZ);
            }
            zznS.zza("CampaignTrackingService called. startId, campaign", Integer.valueOf(i2), stringExtra);
            zzan.zzmA().zza(stringExtra, new Runnable() { // from class: com.google.android.gms.analytics.CampaignTrackingService.2
                @Override // java.lang.Runnable
                public void run() {
                    CampaignTrackingService.this.zza(zznS, handler, i2);
                }
            });
        }
        return 2;
    }

    protected void zza(final zztd zztdVar, Handler handler, final int i) {
        handler.post(new Runnable() { // from class: com.google.android.gms.analytics.CampaignTrackingService.3
            @Override // java.lang.Runnable
            public void run() {
                boolean stopSelfResult = CampaignTrackingService.this.stopSelfResult(i);
                if (stopSelfResult) {
                    zztdVar.zza("Install campaign broadcast processed", Boolean.valueOf(stopSelfResult));
                }
            }
        });
    }
}
