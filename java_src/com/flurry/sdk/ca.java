package com.flurry.sdk;

import android.content.Context;
import android.os.Bundle;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import java.util.Collections;
/* loaded from: classes2.dex */
public class ca extends bm implements InterstitialAdListener {
    private static final String c = ca.class.getSimpleName();
    private final String d;
    private final String e;
    private final boolean f;
    private InterstitialAd g;

    public ca(Context context, r rVar, Bundle bundle) {
        super(context, rVar);
        this.d = bundle.getString("com.flurry.fan.MY_APP_ID");
        this.e = bundle.getString("com.flurry.fan.MYTEST_AD_DEVICE_ID");
        this.f = bundle.getBoolean("com.flurry.fan.test");
    }

    @Override // com.flurry.sdk.hl
    public final void a() {
        Context c2 = c();
        if (this.f) {
            AdSettings.addTestDevice(this.e);
        }
        this.g = new InterstitialAd(c2, this.d);
        this.g.setAdListener(this);
        this.g.loadAd();
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(Ad ad) {
        km.a(4, c, "FAN interstitial onInterstitialDisplayed.");
        a(Collections.emptyMap());
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(Ad ad) {
        km.a(4, c, "FAN interstitial onInterstitialDismissed.");
        c(Collections.emptyMap());
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        km.a(4, c, "FAN interstitial onError.");
        d(Collections.emptyMap());
        this.g.destroy();
        this.g = null;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        km.a(4, c, "FAN interstitial onAdLoaded.");
        if (this.g != null && this.g.isAdLoaded()) {
            this.g.show();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        km.a(4, c, "FAN interstitial onAdClicked.");
        b(Collections.emptyMap());
    }
}
