package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.adcolony.sdk.AdColony;
import com.adcolony.sdk.AdColonyInterstitial;
import com.adcolony.sdk.AdColonyInterstitialListener;
import com.adcolony.sdk.AdColonyReward;
import com.adcolony.sdk.AdColonyRewardListener;
import com.adcolony.sdk.AdColonyZone;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class AdColonyFullscreen extends FullscreenAd {
    private static final String REWARDED_VIDEO_TAG = "RewardedVideo";
    private boolean isRewarded;
    private AdColonyInterstitial loadedInterstitial;

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        try {
            if (this.loadedInterstitial.isExpired() && c.isLoggable(5)) {
                c.w(this, "AdColony interstitial ad has expired.");
            }
            return this.loadedInterstitial.show();
        } catch (Exception e) {
            if (c.isLoggable(6)) {
                c.e(this, "Exception when trying to show AdColony ad:" + e.getMessage());
            }
            return false;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length > 2) {
            this.isRewarded = split[0].equals(REWARDED_VIDEO_TAG);
            String str2 = split[1];
            String str3 = split[2];
            AdColony.configure(activity, str2, str3);
            AdColonyInterstitialListener createInterstitialListener = createInterstitialListener();
            if (this.isRewarded) {
                AdColony.setRewardListener(createRewardListener());
            }
            AdColony.requestInterstitial(str3, createInterstitialListener);
            return;
        }
        notifyListenerThatAdFailedToLoad("Not enough ad id parts for AdColony");
    }

    private AdColonyRewardListener createRewardListener() {
        return new AdColonyRewardListener() { // from class: com.intentsoftware.addapptr.fullscreens.AdColonyFullscreen.1
            @Override // com.adcolony.sdk.AdColonyRewardListener
            public void onReward(AdColonyReward adColonyReward) {
                if (adColonyReward.success()) {
                    AdColonyFullscreen.this.notifyListenerThatUserEarnedIncentive();
                }
            }
        };
    }

    private AdColonyInterstitialListener createInterstitialListener() {
        return new AdColonyInterstitialListener() { // from class: com.intentsoftware.addapptr.fullscreens.AdColonyFullscreen.2
            @Override // com.adcolony.sdk.AdColonyInterstitialListener
            public void onRequestFilled(AdColonyInterstitial adColonyInterstitial) {
                AdColonyFullscreen.this.loadedInterstitial = adColonyInterstitial;
                AdColonyFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.adcolony.sdk.AdColonyInterstitialListener
            public void onClicked(AdColonyInterstitial adColonyInterstitial) {
                AdColonyFullscreen.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.adcolony.sdk.AdColonyInterstitialListener
            public void onOpened(AdColonyInterstitial adColonyInterstitial) {
                AdColonyFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.adcolony.sdk.AdColonyInterstitialListener
            public void onRequestNotFilled(AdColonyZone adColonyZone) {
                AdColonyFullscreen.this.notifyListenerThatAdFailedToLoad("Request not filled");
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.isRewarded) {
            AdColony.removeRewardListener();
        }
        if (this.loadedInterstitial != null) {
            this.loadedInterstitial.destroy();
            this.loadedInterstitial = null;
        }
    }
}
