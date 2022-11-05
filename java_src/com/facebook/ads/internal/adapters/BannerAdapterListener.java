package com.facebook.ads.internal.adapters;

import android.view.View;
import com.facebook.ads.AdError;
/* loaded from: classes.dex */
public interface BannerAdapterListener {
    void onBannerAdClicked(BannerAdapter bannerAdapter);

    void onBannerAdExpanded(BannerAdapter bannerAdapter);

    void onBannerAdLoaded(BannerAdapter bannerAdapter, View view);

    void onBannerAdMinimized(BannerAdapter bannerAdapter);

    void onBannerError(BannerAdapter bannerAdapter, AdError adError);

    void onBannerLoggingImpression(BannerAdapter bannerAdapter);
}
