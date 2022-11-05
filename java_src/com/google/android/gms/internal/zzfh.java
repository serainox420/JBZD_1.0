package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@zzme
/* loaded from: classes.dex */
public class zzfh {
    private static zzfh zzAy;
    private static final Object zztX = new Object();
    private RewardedVideoAd zzAA;
    private zzey zzAz;

    private zzfh() {
    }

    public static zzfh zzfk() {
        zzfh zzfhVar;
        synchronized (zztX) {
            if (zzAy == null) {
                zzAy = new zzfh();
            }
            zzfhVar = zzAy;
        }
        return zzfhVar;
    }

    public RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        RewardedVideoAd rewardedVideoAd;
        synchronized (zztX) {
            if (this.zzAA != null) {
                rewardedVideoAd = this.zzAA;
            } else {
                this.zzAA = new zzoc(context, zzel.zzeU().zza(context, new zzjz()));
                rewardedVideoAd = this.zzAA;
            }
        }
        return rewardedVideoAd;
    }

    public void openDebugMenu(Context context, String str) {
        com.google.android.gms.common.internal.zzac.zza(this.zzAz != null, "MobileAds.initialize() must be called prior to opening debug menu.");
        try {
            this.zzAz.zzb(com.google.android.gms.dynamic.zzd.zzA(context), str);
        } catch (RemoteException e) {
            zzqf.zzb("Unable to open debug menu.", e);
        }
    }

    public void setAppMuted(boolean z) {
        com.google.android.gms.common.internal.zzac.zza(this.zzAz != null, "MobileAds.initialize() must be called prior to setting the app volume.");
        try {
            this.zzAz.setAppMuted(z);
        } catch (RemoteException e) {
            zzqf.zzb("Unable to set app mute state.", e);
        }
    }

    public void setAppVolume(float f) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzb(BitmapDescriptorFactory.HUE_RED <= f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        if (this.zzAz == null) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zza(z, "MobileAds.initialize() must be called prior to setting the app volume.");
        try {
            this.zzAz.setAppVolume(f);
        } catch (RemoteException e) {
            zzqf.zzb("Unable to set app volume.", e);
        }
    }

    public void zza(final Context context, String str, zzfi zzfiVar) {
        synchronized (zztX) {
            if (this.zzAz != null) {
                return;
            }
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            }
            try {
                this.zzAz = zzel.zzeU().zzl(context);
                this.zzAz.initialize();
                if (str != null) {
                    this.zzAz.zzc(str, com.google.android.gms.dynamic.zzd.zzA(new Runnable() { // from class: com.google.android.gms.internal.zzfh.1
                        @Override // java.lang.Runnable
                        public void run() {
                            zzfh.this.getRewardedVideoAdInstance(context);
                        }
                    }));
                }
            } catch (RemoteException e) {
                zzqf.zzc("MobileAdsSettingManager initialization failed", e);
            }
        }
    }
}
