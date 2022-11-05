package com.madsdk;

import android.content.Context;
/* loaded from: classes2.dex */
public class MadSdkInterstitialAd {
    private AdView adView;

    public void load(String str, Boolean bool, Context context, InterstitialAdListener interstitialAdListener) {
        this.adView = new AdView(context);
        this.adView.setListener(interstitialAdListener);
        this.adView.setInterstitial(true);
        this.adView.loadData(str, bool);
    }

    public void load(String str, String str2, String str3, Boolean bool, String str4, Context context, InterstitialAdListener interstitialAdListener) {
        this.adView = new AdView(context);
        this.adView.setInterstitial(true);
        this.adView.setListener(interstitialAdListener);
        this.adView.loadAd(str, str2, str3, bool.booleanValue(), str4);
    }

    public void show() {
        this.adView.showAsInterstitial();
    }
}
