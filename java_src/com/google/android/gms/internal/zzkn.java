package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.d;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;
import com.google.ads.mediation.g;
import com.google.ads.mediation.h;
@zzme
/* loaded from: classes.dex */
public final class zzkn<NETWORK_EXTRAS extends h, SERVER_PARAMETERS extends MediationServerParameters> implements e, g {
    private final zzkc zzLE;

    public zzkn(zzkc zzkcVar) {
        this.zzLE = zzkcVar;
    }

    public void onClick(d<?, ?> dVar) {
        zzqf.zzbf("Adapter called onClick.");
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onClick must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdClicked();
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdClicked.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdClicked();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClicked.", e);
        }
    }

    public void onDismissScreen(d<?, ?> dVar) {
        zzqf.zzbf("Adapter called onDismissScreen.");
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onDismissScreen must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdClosed();
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdClosed.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdClosed();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClosed.", e);
        }
    }

    public void onDismissScreen(f<?, ?> fVar) {
        zzqf.zzbf("Adapter called onDismissScreen.");
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onDismissScreen must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdClosed();
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdClosed.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdClosed();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.ads.mediation.e
    public void onFailedToReceiveAd(d<?, ?> dVar, final AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        zzqf.zzbf(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error. ").append(valueOf).toString());
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onFailedToReceiveAd must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdFailedToLoad(zzko.zza(errorCode));
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdFailedToLoad.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdFailedToLoad(zzko.zza(errorCode));
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.ads.mediation.g
    public void onFailedToReceiveAd(f<?, ?> fVar, final AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        zzqf.zzbf(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error ").append(valueOf).append(".").toString());
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onFailedToReceiveAd must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.10
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdFailedToLoad(zzko.zza(errorCode));
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdFailedToLoad.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdFailedToLoad(zzko.zza(errorCode));
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    public void onLeaveApplication(d<?, ?> dVar) {
        zzqf.zzbf("Adapter called onLeaveApplication.");
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onLeaveApplication must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdLeftApplication();
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdLeftApplication.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdLeftApplication();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    public void onLeaveApplication(f<?, ?> fVar) {
        zzqf.zzbf("Adapter called onLeaveApplication.");
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onLeaveApplication must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.11
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdLeftApplication();
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdLeftApplication.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdLeftApplication();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    public void onPresentScreen(d<?, ?> dVar) {
        zzqf.zzbf("Adapter called onPresentScreen.");
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onPresentScreen must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdOpened();
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdOpened.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdOpened();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdOpened.", e);
        }
    }

    public void onPresentScreen(f<?, ?> fVar) {
        zzqf.zzbf("Adapter called onPresentScreen.");
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onPresentScreen must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdOpened();
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdOpened.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdOpened();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdOpened.", e);
        }
    }

    public void onReceivedAd(d<?, ?> dVar) {
        zzqf.zzbf("Adapter called onReceivedAd.");
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onReceivedAd must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdLoaded();
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdLoaded.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdLoaded();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLoaded.", e);
        }
    }

    public void onReceivedAd(f<?, ?> fVar) {
        zzqf.zzbf("Adapter called onReceivedAd.");
        if (!zzel.zzeT().zzlj()) {
            zzqf.zzbh("onReceivedAd must be called on the main UI thread.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzkn.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzkn.this.zzLE.onAdLoaded();
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not call onAdLoaded.", e);
                    }
                }
            });
            return;
        }
        try {
            this.zzLE.onAdLoaded();
        } catch (RemoteException e) {
            zzqf.zzc("Could not call onAdLoaded.", e);
        }
    }
}
