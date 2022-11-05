package com.applovin.adview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
public interface AdViewController {
    void destroy();

    AppLovinAdSize getSize();

    void initializeAdView(ViewGroup viewGroup, Context context, AppLovinAdSize appLovinAdSize, AppLovinSdk appLovinSdk, AttributeSet attributeSet);

    boolean isAdReadyToDisplay();

    boolean isAutoDestroy();

    void loadNextAd();

    void onDetachedFromWindow();

    void onVisibilityChanged(int i);

    void pause();

    void renderAd(AppLovinAd appLovinAd);

    void renderAd(AppLovinAd appLovinAd, String str);

    void resume();

    void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener);

    void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener);

    void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener);

    void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener);

    void setAutoDestroy(boolean z);
}
