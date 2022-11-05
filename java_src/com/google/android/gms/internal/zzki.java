package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
@zzme
/* loaded from: classes.dex */
public final class zzki implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {
    private final zzkc zzLE;
    private NativeAdMapper zzLF;

    public zzki(zzkc zzkcVar) {
        this.zzLE = zzkcVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdClicked must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdClicked.");
        try {
            this.zzLE.onAdClicked();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdClicked must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdClicked.");
        try {
            this.zzLE.onAdClicked();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdClicked must be called on the main UI thread.");
        NativeAdMapper zzhi = zzhi();
        if (zzhi == null) {
            zzqf.zzbh("Could not call onAdClicked since NativeAdMapper is null.");
        } else if (!zzhi.getOverrideClickHandling()) {
            zzqf.zzbf("Could not call onAdClicked since setOverrideClickHandling is not set to true");
        } else {
            zzqf.zzbf("Adapter called onAdClicked.");
            try {
                this.zzLE.onAdClicked();
            } catch (RemoteException e) {
                zzqf.zzc("Could not call onAdClicked.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdClosed must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdClosed.");
        try {
            this.zzLE.onAdClosed();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdClosed must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdClosed.");
        try {
            this.zzLE.onAdClosed();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdClosed must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdClosed.");
        try {
            this.zzLE.onAdClosed();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdFailedToLoad must be called on the main UI thread.");
        zzqf.zzbf(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error. ").append(i).toString());
        try {
            this.zzLE.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdFailedToLoad must be called on the main UI thread.");
        zzqf.zzbf(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try {
            this.zzLE.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdFailedToLoad must be called on the main UI thread.");
        zzqf.zzbf(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try {
            this.zzLE.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdImpression must be called on the main UI thread.");
        NativeAdMapper zzhi = zzhi();
        if (zzhi == null) {
            zzqf.zzbh("Could not call onAdImpression since NativeAdMapper is null. ");
        } else if (!zzhi.getOverrideImpressionRecording()) {
            zzqf.zzbf("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
        } else {
            zzqf.zzbf("Adapter called onAdImpression.");
            try {
                this.zzLE.onAdImpression();
            } catch (RemoteException e) {
                zzqf.zzc("Could not call onAdImpression.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdLeftApplication must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdLeftApplication.");
        try {
            this.zzLE.onAdLeftApplication();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdLeftApplication must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdLeftApplication.");
        try {
            this.zzLE.onAdLeftApplication();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdLeftApplication must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdLeftApplication.");
        try {
            this.zzLE.onAdLeftApplication();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdLoaded must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdLoaded.");
        try {
            this.zzLE.onAdLoaded();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdLoaded must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdLoaded.");
        try {
            this.zzLE.onAdLoaded();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdLoaded must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdLoaded.");
        this.zzLF = nativeAdMapper;
        try {
            this.zzLE.onAdLoaded();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdOpened must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdOpened.");
        try {
            this.zzLE.onAdOpened();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdOpened.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdOpened must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdOpened.");
        try {
            this.zzLE.onAdOpened();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdOpened.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzac.zzdj("onAdOpened must be called on the main UI thread.");
        zzqf.zzbf("Adapter called onAdOpened.");
        try {
            this.zzLE.onAdOpened();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdOpened.", e);
        }
    }

    public NativeAdMapper zzhi() {
        return this.zzLF;
    }
}
