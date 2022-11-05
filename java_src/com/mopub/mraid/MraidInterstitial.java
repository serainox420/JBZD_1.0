package com.mopub.mraid;

import com.mopub.common.DataKeys;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.MraidActivity;
import com.mopub.mobileads.ResponseBodyInterstitial;
import java.util.Map;
/* loaded from: classes3.dex */
class MraidInterstitial extends ResponseBodyInterstitial {
    private String d;

    MraidInterstitial() {
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(Map<String, String> map) {
        this.d = map.get(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        MraidActivity.preRenderHtml(this.f4458a, customEventInterstitialListener, this.d);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MraidActivity.start(this.f4458a, this.b, this.d, this.c);
    }
}
