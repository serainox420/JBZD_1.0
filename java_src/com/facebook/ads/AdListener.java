package com.facebook.ads;
/* loaded from: classes.dex */
public interface AdListener {
    void onAdClicked(Ad ad);

    void onAdLoaded(Ad ad);

    void onError(Ad ad, AdError adError);
}
