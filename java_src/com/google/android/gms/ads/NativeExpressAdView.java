package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.zzme;
@zzme
/* loaded from: classes.dex */
public final class NativeExpressAdView extends BaseAdView {
    public NativeExpressAdView(Context context) {
        super(context, 1);
    }

    public NativeExpressAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 1);
    }

    public NativeExpressAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 1);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void destroy() {
        super.destroy();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ AdListener getAdListener() {
        return super.getAdListener();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ AdSize getAdSize() {
        return super.getAdSize();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ String getAdUnitId() {
        return super.getAdUnitId();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ InAppPurchaseListener getInAppPurchaseListener() {
        return super.getInAppPurchaseListener();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ String getMediationAdapterClassName() {
        return super.getMediationAdapterClassName();
    }

    public VideoController getVideoController() {
        return this.zzrF.getVideoController();
    }

    public VideoOptions getVideoOptions() {
        return this.zzrF.getVideoOptions();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ boolean isLoading() {
        return super.isLoading();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void loadAd(AdRequest adRequest) {
        super.loadAd(adRequest);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void pause() {
        super.pause();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void resume() {
        super.resume();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setAdListener(AdListener adListener) {
        super.setAdListener(adListener);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setAdSize(AdSize adSize) {
        super.setAdSize(adSize);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setAdUnitId(String str) {
        super.setAdUnitId(str);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setInAppPurchaseListener(InAppPurchaseListener inAppPurchaseListener) {
        super.setInAppPurchaseListener(inAppPurchaseListener);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setPlayStorePurchaseParams(PlayStorePurchaseListener playStorePurchaseListener, String str) {
        super.setPlayStorePurchaseParams(playStorePurchaseListener, str);
    }

    public void setVideoOptions(VideoOptions videoOptions) {
        this.zzrF.setVideoOptions(videoOptions);
    }
}
