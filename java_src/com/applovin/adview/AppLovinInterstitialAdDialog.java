package com.applovin.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
/* loaded from: classes.dex */
public interface AppLovinInterstitialAdDialog {
    void dismiss();

    boolean isAdReadyToDisplay();

    boolean isShowing();

    void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener);

    void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener);

    void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener);

    void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener);

    void show();

    void show(String str);

    void showAndRender(AppLovinAd appLovinAd);

    void showAndRender(AppLovinAd appLovinAd, String str);
}
