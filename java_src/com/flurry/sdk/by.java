package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import java.util.Collections;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class by extends AdNetworkView implements AdListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2497a = by.class.getSimpleName();
    private final String b;
    private final String c;
    private final boolean d;
    private AdView e;

    public by(Context context, r rVar, AdCreative adCreative, Bundle bundle) {
        super(context, rVar, adCreative);
        this.b = bundle.getString("com.flurry.fan.MY_APP_ID");
        this.c = bundle.getString("com.flurry.fan.MYTEST_AD_DEVICE_ID");
        this.d = bundle.getBoolean("com.flurry.fan.test");
        setFocusable(true);
    }

    @Override // com.flurry.sdk.gz
    public void initLayout() {
        km.a(4, f2497a, "FAN banner initLayout.");
        this.e = new AdView(getContext(), this.b, AdSize.BANNER_320_50);
        this.e.setAdListener(this);
        addView(this.e);
        if (this.d) {
            AdSettings.addTestDevice(this.c);
        }
        this.e.loadAd();
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        onAdShown(Collections.emptyMap());
        km.a(4, f2497a, "FAN banner onAdLoaded.");
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        onRenderFailed(Collections.emptyMap());
        if (this.e != null) {
            this.e.destroy();
            this.e = null;
        }
        km.a(6, f2497a, "FAN banner onError.");
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        km.a(4, f2497a, "FAN banner onAdClicked.");
        onAdClicked(Collections.emptyMap());
    }

    @Override // com.flurry.sdk.gz
    public void onActivityDestroy() {
        km.a(4, f2497a, "FAN banner onDestroy.");
        if (this.e != null) {
            this.e.destroy();
            this.e = null;
        }
        super.onActivityDestroy();
    }
}
