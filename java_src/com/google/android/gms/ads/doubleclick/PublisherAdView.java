package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.internal.zzff;
import com.google.android.gms.internal.zzqf;
/* loaded from: classes2.dex */
public final class PublisherAdView extends ViewGroup {
    private final zzff zzrF;

    public PublisherAdView(Context context) {
        super(context);
        this.zzrF = new zzff(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzrF = new zzff(this, attributeSet, true);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzrF = new zzff(this, attributeSet, true);
    }

    public void destroy() {
        this.zzrF.destroy();
    }

    public AdListener getAdListener() {
        return this.zzrF.getAdListener();
    }

    public AdSize getAdSize() {
        return this.zzrF.getAdSize();
    }

    public AdSize[] getAdSizes() {
        return this.zzrF.getAdSizes();
    }

    public String getAdUnitId() {
        return this.zzrF.getAdUnitId();
    }

    public AppEventListener getAppEventListener() {
        return this.zzrF.getAppEventListener();
    }

    public String getMediationAdapterClassName() {
        return this.zzrF.getMediationAdapterClassName();
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzrF.getOnCustomRenderedAdLoadedListener();
    }

    public VideoController getVideoController() {
        return this.zzrF.getVideoController();
    }

    public VideoOptions getVideoOptions() {
        return this.zzrF.getVideoOptions();
    }

    public boolean isLoading() {
        return this.zzrF.isLoading();
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zzrF.zza(publisherAdRequest.zzbp());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        AdSize adSize;
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                zzqf.zzb("Unable to retrieve ad size.", e);
                adSize = null;
            }
            if (adSize != null) {
                Context context = getContext();
                i3 = adSize.getWidthInPixels(context);
                i4 = adSize.getHeightInPixels(context);
            } else {
                i3 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i3 = childAt.getMeasuredWidth();
            i4 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i3, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i4, getSuggestedMinimumHeight()), i2));
    }

    public void pause() {
        this.zzrF.pause();
    }

    public void recordManualImpression() {
        this.zzrF.recordManualImpression();
    }

    public void resume() {
        this.zzrF.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.zzrF.setAdListener(adListener);
    }

    public void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length < 1) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.zzrF.zza(adSizeArr);
    }

    public void setAdUnitId(String str) {
        this.zzrF.setAdUnitId(str);
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.zzrF.setAppEventListener(appEventListener);
    }

    public void setCorrelator(Correlator correlator) {
        this.zzrF.setCorrelator(correlator);
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.zzrF.setManualImpressionsEnabled(z);
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzrF.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }

    public void setVideoOptions(VideoOptions videoOptions) {
        this.zzrF.setVideoOptions(videoOptions);
    }
}
