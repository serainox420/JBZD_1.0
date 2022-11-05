package com.applovin.adview;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.applovin.impl.sdk.aa;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
public class AppLovinIncentivizedInterstitial {

    /* renamed from: a  reason: collision with root package name */
    private aa f1508a;

    public AppLovinIncentivizedInterstitial(Context context) {
        this(AppLovinSdk.getInstance(context));
    }

    public AppLovinIncentivizedInterstitial(AppLovinSdk appLovinSdk) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("SDK cannot be null");
        }
        this.f1508a = new aa(appLovinSdk);
    }

    public static AppLovinIncentivizedInterstitial create(Context context) {
        return create(AppLovinSdk.getInstance(context));
    }

    public static AppLovinIncentivizedInterstitial create(AppLovinSdk appLovinSdk) {
        return new AppLovinIncentivizedInterstitial(appLovinSdk);
    }

    public void dismiss() {
        this.f1508a.d();
    }

    public String getUserIdentifier() {
        return aa.b();
    }

    public boolean isAdReadyToDisplay() {
        return this.f1508a.a();
    }

    public void preload(AppLovinAdLoadListener appLovinAdLoadListener) {
        if (appLovinAdLoadListener == null) {
            Log.i("AppLovinIncentivizedInterstitial", "AppLovinAdLoadListener was null when preloading incentivized interstitials; using a listener is highly recommended.");
        }
        this.f1508a.a(appLovinAdLoadListener);
    }

    public void setUserIdentifier(String str) {
        aa.a(str);
    }

    public void show(Activity activity) {
        show(activity, null, null);
    }

    public void show(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener) {
        show(activity, appLovinAdRewardListener, null);
    }

    public void show(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        show(activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, null);
    }

    public void show(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener) {
        show(activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, null);
    }

    public void show(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        show(activity, null, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    public void show(Activity activity, String str, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        this.f1508a.a(activity, str, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }
}
