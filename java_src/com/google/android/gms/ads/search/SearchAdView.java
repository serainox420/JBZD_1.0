package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.zzff;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqf;
@zzme
/* loaded from: classes.dex */
public final class SearchAdView extends ViewGroup {
    private final zzff zzrF;

    public SearchAdView(Context context) {
        super(context);
        this.zzrF = new zzff(this);
    }

    public SearchAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzrF = new zzff(this, attributeSet, false);
    }

    public SearchAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzrF = new zzff(this, attributeSet, false);
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

    public String getAdUnitId() {
        return this.zzrF.getAdUnitId();
    }

    public void loadAd(DynamicHeightSearchAdRequest dynamicHeightSearchAdRequest) {
        if (!AdSize.SEARCH.equals(getAdSize())) {
            throw new IllegalStateException("You must use AdSize.SEARCH for a DynamicHeightSearchAdRequest");
        }
        this.zzrF.zza(dynamicHeightSearchAdRequest.zzbp());
    }

    public void loadAd(SearchAdRequest searchAdRequest) {
        this.zzrF.zza(searchAdRequest.zzbp());
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

    public void resume() {
        this.zzrF.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.zzrF.setAdListener(adListener);
    }

    public void setAdSize(AdSize adSize) {
        this.zzrF.setAdSizes(adSize);
    }

    public void setAdUnitId(String str) {
        this.zzrF.setAdUnitId(str);
    }
}
