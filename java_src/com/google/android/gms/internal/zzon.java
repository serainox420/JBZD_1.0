package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
@zzme
/* loaded from: classes.dex */
public class zzon implements MediationRewardedVideoAdListener {
    private final zzom zzVO;

    public zzon(zzom zzomVar) {
        this.zzVO = zzomVar;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onAdClicked(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdClicked must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdClicked.");
        try {
            this.zzVO.zzw(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdClosed must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdClosed.");
        try {
            this.zzVO.zzv(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdFailedToLoad must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdFailedToLoad.");
        try {
            this.zzVO.zzd(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdLeftApplication must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdLeftApplication.");
        try {
            this.zzVO.zzx(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdLoaded must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdLoaded.");
        try {
            this.zzVO.zzs(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdOpened must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdOpened.");
        try {
            this.zzVO.zzt(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdOpened.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onInitializationFailed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        com.google.android.gms.common.internal.zzac.zzdj("onInitializationFailed must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onInitializationFailed.");
        try {
            this.zzVO.zzc(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onInitializationFailed.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onInitializationSucceeded must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onInitializationSucceeded.");
        try {
            this.zzVO.zzr(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onInitializationSucceeded.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        com.google.android.gms.common.internal.zzac.zzdj("onRewarded must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onRewarded.");
        try {
            if (rewardItem != null) {
                this.zzVO.zza(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter), new zzoo(rewardItem));
            } else {
                this.zzVO.zza(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter), new zzoo("", 1));
            }
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onRewarded.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onVideoStarted must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onVideoStarted.");
        try {
            this.zzVO.zzu(com.google.android.gms.dynamic.zzd.zzA(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onVideoStarted.", e);
        }
    }
}
