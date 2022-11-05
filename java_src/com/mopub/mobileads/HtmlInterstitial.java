package com.mopub.mobileads;

import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
/* loaded from: classes3.dex */
public class HtmlInterstitial extends ResponseBodyInterstitial {
    private String d;
    private boolean e;
    private String f;
    private String g;
    private CreativeOrientation h;

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(Map<String, String> map) {
        this.d = map.get(DataKeys.HTML_RESPONSE_BODY_KEY);
        this.e = Boolean.valueOf(map.get(DataKeys.SCROLLABLE_KEY)).booleanValue();
        this.f = map.get(DataKeys.REDIRECT_URL_KEY);
        this.g = map.get(DataKeys.CLICKTHROUGH_URL_KEY);
        this.h = CreativeOrientation.fromHeader(map.get(DataKeys.CREATIVE_ORIENTATION_KEY));
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        MoPubActivity.a(this.f4458a, this.b, customEventInterstitialListener, this.d);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MoPubActivity.start(this.f4458a, this.d, this.b, this.e, this.f, this.g, this.h, this.c);
    }
}
