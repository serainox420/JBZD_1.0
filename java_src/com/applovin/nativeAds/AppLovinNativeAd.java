package com.applovin.nativeAds;

import android.content.Context;
/* loaded from: classes.dex */
public interface AppLovinNativeAd {
    long getAdId();

    String getCaptionText();

    @Deprecated
    String getClickUrl();

    String getCtaText();

    String getDescriptionText();

    String getIconUrl();

    String getImageUrl();

    String getImpressionTrackingUrl();

    float getStarRating();

    String getTitle();

    String getVideoEndTrackingUrl(int i, boolean z);

    String getVideoStartTrackingUrl();

    String getVideoUrl();

    boolean isImagePrecached();

    boolean isVideoPrecached();

    void launchClickTarget(Context context);
}
