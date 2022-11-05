package com.facebook.ads.internal.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.ads.AdError;
/* loaded from: classes.dex */
public class s extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private String f2110a;
    private Context b;
    private InterstitialAdapterListener c;
    private InterstitialAdapter d;

    public s(Context context, String str, InterstitialAdapter interstitialAdapter, InterstitialAdapterListener interstitialAdapterListener) {
        this.b = context;
        this.f2110a = str;
        this.c = interstitialAdapterListener;
        this.d = interstitialAdapter;
    }

    public void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.ads.interstitial.impression.logged:" + this.f2110a);
        intentFilter.addAction("com.facebook.ads.interstitial.displayed:" + this.f2110a);
        intentFilter.addAction("com.facebook.ads.interstitial.dismissed:" + this.f2110a);
        intentFilter.addAction("com.facebook.ads.interstitial.clicked:" + this.f2110a);
        intentFilter.addAction("com.facebook.ads.interstitial.error:" + this.f2110a);
        android.support.v4.content.l.a(this.b).a(this, intentFilter);
    }

    public void b() {
        try {
            android.support.v4.content.l.a(this.b).a(this);
        } catch (Exception e) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str = intent.getAction().split(":")[0];
        if (this.c == null || str == null) {
            return;
        }
        if ("com.facebook.ads.interstitial.clicked".equals(str)) {
            this.c.onInterstitialAdClicked(this.d, null, true);
        } else if ("com.facebook.ads.interstitial.dismissed".equals(str)) {
            this.c.onInterstitialAdDismissed(this.d);
        } else if ("com.facebook.ads.interstitial.displayed".equals(str)) {
            this.c.onInterstitialAdDisplayed(this.d);
        } else if ("com.facebook.ads.interstitial.impression.logged".equals(str)) {
            this.c.onInterstitialLoggingImpression(this.d);
        } else if (!"com.facebook.ads.interstitial.error".equals(str)) {
        } else {
            this.c.onInterstitialError(this.d, AdError.INTERNAL_ERROR);
        }
    }
}
