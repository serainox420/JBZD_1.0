package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.internal.zzfg;
/* loaded from: classes2.dex */
public final class PublisherInterstitialAd {
    private final zzfg zzrH;

    public PublisherInterstitialAd(Context context) {
        this.zzrH = new zzfg(context, this);
    }

    public AdListener getAdListener() {
        return this.zzrH.getAdListener();
    }

    public String getAdUnitId() {
        return this.zzrH.getAdUnitId();
    }

    public AppEventListener getAppEventListener() {
        return this.zzrH.getAppEventListener();
    }

    public String getMediationAdapterClassName() {
        return this.zzrH.getMediationAdapterClassName();
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzrH.getOnCustomRenderedAdLoadedListener();
    }

    public boolean isLoaded() {
        return this.zzrH.isLoaded();
    }

    public boolean isLoading() {
        return this.zzrH.isLoading();
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zzrH.zza(publisherAdRequest.zzbp());
    }

    public void setAdListener(AdListener adListener) {
        this.zzrH.setAdListener(adListener);
    }

    public void setAdUnitId(String str) {
        this.zzrH.setAdUnitId(str);
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.zzrH.setAppEventListener(appEventListener);
    }

    public void setCorrelator(Correlator correlator) {
        this.zzrH.setCorrelator(correlator);
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzrH.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }

    public void show() {
        this.zzrH.show();
    }
}
