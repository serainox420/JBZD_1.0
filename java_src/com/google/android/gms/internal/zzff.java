package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;
@zzme
/* loaded from: classes.dex */
public class zzff {
    private final zzjz zzAj;
    private final AtomicBoolean zzAk;
    private final VideoController zzAl;
    final zzen zzAm;
    private Correlator zzAn;
    private zzet zzAo;
    private InAppPurchaseListener zzAp;
    private OnCustomRenderedAdLoadedListener zzAq;
    private PlayStorePurchaseListener zzAr;
    private String zzAs;
    private ViewGroup zzAt;
    private int zzAu;
    private VideoOptions zzrX;
    private final zzef zzrw;
    private boolean zzsS;
    private String zzts;
    private zzdx zzyR;
    private AdListener zzyS;
    private AppEventListener zzzE;
    private AdSize[] zzzF;

    public zzff(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzef.zzeD(), 0);
    }

    public zzff(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzef.zzeD(), i);
    }

    public zzff(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzef.zzeD(), 0);
    }

    public zzff(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, zzef.zzeD(), i);
    }

    zzff(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzef zzefVar, int i) {
        this(viewGroup, attributeSet, z, zzefVar, null, i);
    }

    zzff(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzef zzefVar, zzet zzetVar, int i) {
        this.zzAj = new zzjz();
        this.zzAl = new VideoController();
        this.zzAm = new zzen() { // from class: com.google.android.gms.internal.zzff.1
            @Override // com.google.android.gms.internal.zzen, com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i2) {
                zzff.this.zzAl.zza(zzff.this.zzbs());
                super.onAdFailedToLoad(i2);
            }

            @Override // com.google.android.gms.internal.zzen, com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                zzff.this.zzAl.zza(zzff.this.zzbs());
                super.onAdLoaded();
            }
        };
        this.zzAt = viewGroup;
        this.zzrw = zzefVar;
        this.zzAo = zzetVar;
        this.zzAk = new AtomicBoolean(false);
        this.zzAu = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzej zzejVar = new zzej(context, attributeSet);
                this.zzzF = zzejVar.zzm(z);
                this.zzts = zzejVar.getAdUnitId();
                if (!viewGroup.isInEditMode()) {
                    return;
                }
                zzel.zzeT().zza(viewGroup, zza(context, this.zzzF[0], this.zzAu), "Ads by Google");
            } catch (IllegalArgumentException e) {
                zzel.zzeT().zza(viewGroup, new zzeg(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private static zzeg zza(Context context, AdSize adSize, int i) {
        zzeg zzegVar = new zzeg(context, adSize);
        zzegVar.zzl(zzz(i));
        return zzegVar;
    }

    private static zzeg zza(Context context, AdSize[] adSizeArr, int i) {
        zzeg zzegVar = new zzeg(context, adSizeArr);
        zzegVar.zzl(zzz(i));
        return zzegVar;
    }

    private void zzfh() {
        try {
            IObjectWrapper zzbB = this.zzAo.zzbB();
            if (zzbB == null) {
                return;
            }
            this.zzAt.addView((View) com.google.android.gms.dynamic.zzd.zzF(zzbB));
        } catch (RemoteException e) {
            zzqf.zzc("Failed to get an ad frame.", e);
        }
    }

    private static boolean zzz(int i) {
        return i == 1;
    }

    public void destroy() {
        try {
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.destroy();
        } catch (RemoteException e) {
            zzqf.zzc("Failed to destroy AdView.", e);
        }
    }

    public AdListener getAdListener() {
        return this.zzyS;
    }

    public AdSize getAdSize() {
        zzeg zzbC;
        try {
            if (this.zzAo != null && (zzbC = this.zzAo.zzbC()) != null) {
                return zzbC.zzeF();
            }
        } catch (RemoteException e) {
            zzqf.zzc("Failed to get the current AdSize.", e);
        }
        if (this.zzzF != null) {
            return this.zzzF[0];
        }
        return null;
    }

    public AdSize[] getAdSizes() {
        return this.zzzF;
    }

    public String getAdUnitId() {
        return this.zzts;
    }

    public AppEventListener getAppEventListener() {
        return this.zzzE;
    }

    public InAppPurchaseListener getInAppPurchaseListener() {
        return this.zzAp;
    }

    public String getMediationAdapterClassName() {
        try {
            if (this.zzAo != null) {
                return this.zzAo.getMediationAdapterClassName();
            }
        } catch (RemoteException e) {
            zzqf.zzc("Failed to get the mediation adapter class name.", e);
        }
        return null;
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzAq;
    }

    public VideoController getVideoController() {
        return this.zzAl;
    }

    public VideoOptions getVideoOptions() {
        return this.zzrX;
    }

    public boolean isLoading() {
        try {
            if (this.zzAo != null) {
                return this.zzAo.isLoading();
            }
        } catch (RemoteException e) {
            zzqf.zzc("Failed to check if ad is loading.", e);
        }
        return false;
    }

    public void pause() {
        try {
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.pause();
        } catch (RemoteException e) {
            zzqf.zzc("Failed to call pause.", e);
        }
    }

    public void recordManualImpression() {
        if (this.zzAk.getAndSet(true)) {
            return;
        }
        try {
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.zzbE();
        } catch (RemoteException e) {
            zzqf.zzc("Failed to record impression.", e);
        }
    }

    public void resume() {
        try {
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.resume();
        } catch (RemoteException e) {
            zzqf.zzc("Failed to call resume.", e);
        }
    }

    public void setAdListener(AdListener adListener) {
        this.zzyS = adListener;
        this.zzAm.zza(adListener);
    }

    public void setAdSizes(AdSize... adSizeArr) {
        if (this.zzzF != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        zza(adSizeArr);
    }

    public void setAdUnitId(String str) {
        if (this.zzts != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.zzts = str;
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzzE = appEventListener;
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.zza(appEventListener != null ? new zzei(appEventListener) : null);
        } catch (RemoteException e) {
            zzqf.zzc("Failed to set the AppEventListener.", e);
        }
    }

    public void setCorrelator(Correlator correlator) {
        this.zzAn = correlator;
        try {
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.zza(this.zzAn == null ? null : this.zzAn.zzbq());
        } catch (RemoteException e) {
            zzqf.zzc("Failed to set correlator.", e);
        }
    }

    public void setInAppPurchaseListener(InAppPurchaseListener inAppPurchaseListener) {
        if (this.zzAr != null) {
            throw new IllegalStateException("Play store purchase parameter has already been set.");
        }
        try {
            this.zzAp = inAppPurchaseListener;
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.zza(inAppPurchaseListener != null ? new zzlj(inAppPurchaseListener) : null);
        } catch (RemoteException e) {
            zzqf.zzc("Failed to set the InAppPurchaseListener.", e);
        }
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.zzsS = z;
        try {
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.setManualImpressionsEnabled(this.zzsS);
        } catch (RemoteException e) {
            zzqf.zzc("Failed to set manual impressions.", e);
        }
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzAq = onCustomRenderedAdLoadedListener;
        try {
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.zza(onCustomRenderedAdLoadedListener != null ? new zzgq(onCustomRenderedAdLoadedListener) : null);
        } catch (RemoteException e) {
            zzqf.zzc("Failed to set the onCustomRenderedAdLoadedListener.", e);
        }
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playStorePurchaseListener, String str) {
        if (this.zzAp != null) {
            throw new IllegalStateException("InAppPurchaseListener has already been set.");
        }
        try {
            this.zzAr = playStorePurchaseListener;
            this.zzAs = str;
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.zza(playStorePurchaseListener != null ? new zzln(playStorePurchaseListener) : null, str);
        } catch (RemoteException e) {
            zzqf.zzc("Failed to set the play store purchase parameter.", e);
        }
    }

    public void setVideoOptions(VideoOptions videoOptions) {
        this.zzrX = videoOptions;
        try {
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.zza(videoOptions == null ? null : new zzft(videoOptions));
        } catch (RemoteException e) {
            zzqf.zzc("Failed to set video options.", e);
        }
    }

    public void zza(zzdx zzdxVar) {
        try {
            this.zzyR = zzdxVar;
            if (this.zzAo == null) {
                return;
            }
            this.zzAo.zza(zzdxVar != null ? new zzdy(zzdxVar) : null);
        } catch (RemoteException e) {
            zzqf.zzc("Failed to set the AdClickListener.", e);
        }
    }

    public void zza(zzfe zzfeVar) {
        try {
            if (this.zzAo == null) {
                zzfi();
            }
            if (!this.zzAo.zzb(this.zzrw.zza(this.zzAt.getContext(), zzfeVar))) {
                return;
            }
            this.zzAj.zzi(zzfeVar.zzfd());
        } catch (RemoteException e) {
            zzqf.zzc("Failed to load ad.", e);
        }
    }

    public void zza(AdSize... adSizeArr) {
        this.zzzF = adSizeArr;
        try {
            if (this.zzAo != null) {
                this.zzAo.zza(zza(this.zzAt.getContext(), this.zzzF, this.zzAu));
            }
        } catch (RemoteException e) {
            zzqf.zzc("Failed to set the ad size.", e);
        }
        this.zzAt.requestLayout();
    }

    public boolean zzb(zzeg zzegVar) {
        return "search_v2".equals(zzegVar.zzzy);
    }

    public zzfa zzbs() {
        if (this.zzAo == null) {
            return null;
        }
        try {
            return this.zzAo.zzbF();
        } catch (RemoteException e) {
            zzqf.zzc("Failed to retrieve VideoController.", e);
            return null;
        }
    }

    void zzfi() throws RemoteException {
        if ((this.zzzF == null || this.zzts == null) && this.zzAo == null) {
            throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
        }
        this.zzAo = zzfj();
        this.zzAo.zza(new zzdz(this.zzAm));
        if (this.zzyR != null) {
            this.zzAo.zza(new zzdy(this.zzyR));
        }
        if (this.zzzE != null) {
            this.zzAo.zza(new zzei(this.zzzE));
        }
        if (this.zzAp != null) {
            this.zzAo.zza(new zzlj(this.zzAp));
        }
        if (this.zzAr != null) {
            this.zzAo.zza(new zzln(this.zzAr), this.zzAs);
        }
        if (this.zzAq != null) {
            this.zzAo.zza(new zzgq(this.zzAq));
        }
        if (this.zzAn != null) {
            this.zzAo.zza(this.zzAn.zzbq());
        }
        if (this.zzrX != null) {
            this.zzAo.zza(new zzft(this.zzrX));
        }
        this.zzAo.setManualImpressionsEnabled(this.zzsS);
        zzfh();
    }

    protected zzet zzfj() throws RemoteException {
        Context context = this.zzAt.getContext();
        zzeg zza = zza(context, this.zzzF, this.zzAu);
        return zzb(zza) ? zzel.zzeU().zza(context, zza, this.zzts) : zzel.zzeU().zza(context, zza, this.zzts, this.zzAj);
    }
}
