package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
@zzme
/* loaded from: classes.dex */
public class zzoc implements RewardedVideoAd {
    private final Context mContext;
    private final zznu zzVq;
    private RewardedVideoAdListener zzcJ;
    private final Object zzrJ = new Object();

    public zzoc(Context context, zznu zznuVar) {
        this.zzVq = zznuVar;
        this.mContext = context;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void destroy() {
        destroy(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void destroy(Context context) {
        synchronized (this.zzrJ) {
            if (this.zzVq == null) {
                return;
            }
            try {
                this.zzVq.zzh(com.google.android.gms.dynamic.zzd.zzA(context));
            } catch (RemoteException e) {
                zzqf.zzc("Could not forward destroy to RewardedVideoAd", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.zzrJ) {
            rewardedVideoAdListener = this.zzcJ;
        }
        return rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public String getUserId() {
        zzqf.zzbh("RewardedVideoAd.getUserId() is deprecated. Please do not call this method.");
        return null;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public boolean isLoaded() {
        boolean z = false;
        synchronized (this.zzrJ) {
            if (this.zzVq != null) {
                try {
                    z = this.zzVq.isLoaded();
                } catch (RemoteException e) {
                    zzqf.zzc("Could not forward isLoaded to RewardedVideoAd", e);
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void loadAd(String str, AdRequest adRequest) {
        synchronized (this.zzrJ) {
            if (this.zzVq == null) {
                return;
            }
            try {
                this.zzVq.zza(zzef.zzeD().zza(this.mContext, adRequest.zzbp(), str));
            } catch (RemoteException e) {
                zzqf.zzc("Could not forward loadAd to RewardedVideoAd", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void pause() {
        pause(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void pause(Context context) {
        synchronized (this.zzrJ) {
            if (this.zzVq == null) {
                return;
            }
            try {
                this.zzVq.zzf(com.google.android.gms.dynamic.zzd.zzA(context));
            } catch (RemoteException e) {
                zzqf.zzc("Could not forward pause to RewardedVideoAd", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void resume() {
        resume(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void resume(Context context) {
        synchronized (this.zzrJ) {
            if (this.zzVq == null) {
                return;
            }
            try {
                this.zzVq.zzg(com.google.android.gms.dynamic.zzd.zzA(context));
            } catch (RemoteException e) {
                zzqf.zzc("Could not forward resume to RewardedVideoAd", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.zzrJ) {
            this.zzcJ = rewardedVideoAdListener;
            if (this.zzVq != null) {
                try {
                    this.zzVq.zza(new zznz(rewardedVideoAdListener));
                } catch (RemoteException e) {
                    zzqf.zzc("Could not forward setRewardedVideoAdListener to RewardedVideoAd", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void setUserId(String str) {
        zzqf.zzbh("RewardedVideoAd.setUserId() is deprecated. Please do not call this method.");
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public void show() {
        synchronized (this.zzrJ) {
            if (this.zzVq == null) {
                return;
            }
            try {
                this.zzVq.show();
            } catch (RemoteException e) {
                zzqf.zzc("Could not forward show to RewardedVideoAd", e);
            }
        }
    }
}
