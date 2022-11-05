package com.pubmatic.sdk.banner;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes3.dex */
public class PMInterstitialAdView extends PMBannerAdView {
    public PMInterstitialAdView(Context context) {
        super(context, true);
        init(true);
    }

    public PMInterstitialAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.applyAttributeSet(attributeSet);
        init(true);
    }

    public PMInterstitialAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.applyAttributeSet(attributeSet);
        init(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.pubmatic.sdk.banner.PMBannerAdView
    public void init(boolean z) {
        super.init(z);
    }
}
