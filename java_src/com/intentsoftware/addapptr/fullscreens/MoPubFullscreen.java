package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.location.Location;
import android.text.TextUtils;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPubReward;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubRewardedVideoListener;
import com.mopub.mobileads.MoPubRewardedVideoManager;
import com.mopub.mobileads.MoPubRewardedVideos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class MoPubFullscreen extends FullscreenAd {
    private static final int MAX_TIME_FROM_LOAD_START = 3000;
    private static Boolean hasRewardedVideoClass;
    private static boolean rewardedVideoInUse;
    private MoPubInterstitial interstitial;
    private String rewardedVideoAdId;
    private k targetingInformation;
    private long videoAdLoadStartTime;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.targetingInformation = kVar;
        String[] split = str.split(":");
        if (split.length < 2) {
            if (c.isLoggable(5)) {
                c.w(this, "not enough arguments for MoPub config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("adId doesn't have enough arguments.");
        } else if (split[0].equalsIgnoreCase("Fullscreen")) {
            this.interstitial = new MoPubInterstitial(activity, split[1]);
            this.interstitial.setInterstitialAdListener(createListener());
            if (kVar != null) {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                    Iterator<String> it = entry.getValue().iterator();
                    while (it.hasNext()) {
                        arrayList.add(entry.getKey() + ":" + it.next());
                    }
                }
                this.interstitial.setKeywords(TextUtils.join(",", arrayList));
            }
            this.interstitial.load();
        } else if (split[0].equalsIgnoreCase("RewardedVideo")) {
            if (rewardedVideoInUse) {
                notifyListenerThatAdFailedToLoad("MoPub rewarded video is already used for different placement.");
                return;
            }
            if (hasRewardedVideoClass == null) {
                try {
                    Class.forName("com.mopub.mobileads.MoPubRewardedVideos", false, MoPubFullscreen.class.getClassLoader());
                    hasRewardedVideoClass = true;
                    MoPubRewardedVideos.initializeRewardedVideo(activity, new MediationSettings[0]);
                } catch (ClassNotFoundException e) {
                    hasRewardedVideoClass = false;
                }
            }
            if (!hasRewardedVideoClass.booleanValue()) {
                notifyListenerThatAdFailedToLoad("Missing class required for MoPub rewarded videos.");
                return;
            }
            rewardedVideoInUse = true;
            this.rewardedVideoAdId = split[1];
            MoPubRewardedVideoManager.updateActivity(activity);
            MoPubRewardedVideos.setRewardedVideoListener(createVideoListener());
            loadRewardedVideo(false);
        } else {
            if (c.isLoggable(5)) {
                c.w(this, "Wrong ad format provided for MoPub fullscreen. Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("Wrong ad format provided for MoPub fullscreen.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadRewardedVideo(boolean z) {
        String str;
        MoPubRewardedVideoManager.RequestParameters requestParameters;
        Location location = b.getLocation();
        if (location != null || this.targetingInformation != null) {
            if (this.targetingInformation == null) {
                str = null;
            } else {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, List<String>> entry : this.targetingInformation.getMap().entrySet()) {
                    Iterator<String> it = entry.getValue().iterator();
                    while (it.hasNext()) {
                        arrayList.add(entry.getKey() + ":" + it.next());
                    }
                }
                str = TextUtils.join(",", arrayList);
            }
            if (location != null) {
                requestParameters = new MoPubRewardedVideoManager.RequestParameters(str, location);
            } else {
                requestParameters = new MoPubRewardedVideoManager.RequestParameters(str);
            }
            if (!z) {
                this.videoAdLoadStartTime = System.currentTimeMillis();
            }
            MoPubRewardedVideos.loadRewardedVideo(this.rewardedVideoAdId, requestParameters, new MediationSettings[0]);
            return;
        }
        if (!z) {
            this.videoAdLoadStartTime = System.currentTimeMillis();
        }
        MoPubRewardedVideos.loadRewardedVideo(this.rewardedVideoAdId, new MediationSettings[0]);
    }

    private MoPubRewardedVideoListener createVideoListener() {
        return new MoPubRewardedVideoListener() { // from class: com.intentsoftware.addapptr.fullscreens.MoPubFullscreen.1
            @Override // com.mopub.mobileads.MoPubRewardedVideoListener
            public void onRewardedVideoLoadSuccess(String str) {
                MoPubFullscreen.this.videoAdLoadStartTime = 0L;
                MoPubFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.mopub.mobileads.MoPubRewardedVideoListener
            public void onRewardedVideoLoadFailure(String str, MoPubErrorCode moPubErrorCode) {
                MoPubFullscreen.this.videoAdLoadStartTime = 0L;
                MoPubFullscreen.this.notifyListenerThatAdFailedToLoad(moPubErrorCode.name());
            }

            @Override // com.mopub.mobileads.MoPubRewardedVideoListener
            public void onRewardedVideoStarted(String str) {
                MoPubFullscreen.this.videoAdLoadStartTime = 0L;
                MoPubFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.mopub.mobileads.MoPubRewardedVideoListener
            public void onRewardedVideoPlaybackError(String str, MoPubErrorCode moPubErrorCode) {
            }

            @Override // com.mopub.mobileads.MoPubRewardedVideoListener
            public void onRewardedVideoClosed(String str) {
                if (str.equals(MoPubFullscreen.this.rewardedVideoAdId) && System.currentTimeMillis() - MoPubFullscreen.this.videoAdLoadStartTime < 3000) {
                    MoPubFullscreen.this.loadRewardedVideo(true);
                }
            }

            @Override // com.mopub.mobileads.MoPubRewardedVideoListener
            public void onRewardedVideoCompleted(Set<String> set, MoPubReward moPubReward) {
                if (moPubReward.isSuccessful()) {
                    MoPubFullscreen.this.notifyListenerThatUserEarnedIncentive();
                }
            }
        };
    }

    private MoPubInterstitial.InterstitialAdListener createListener() {
        return new MoPubInterstitial.InterstitialAdListener() { // from class: com.intentsoftware.addapptr.fullscreens.MoPubFullscreen.2
            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
            public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                MoPubFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
            public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                MoPubFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
            public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                MoPubFullscreen.this.notifyListenerThatAdFailedToLoad(moPubErrorCode.name());
            }

            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
            public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
            }

            @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
            public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                MoPubFullscreen.this.notifyListenerThatAdWasClicked();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        if (this.rewardedVideoAdId != null) {
            MoPubRewardedVideoManager.updateActivity(activity);
        }
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        if (this.rewardedVideoAdId == null) {
            return this.interstitial.isReady() && this.interstitial.show();
        } else if (!MoPubRewardedVideos.hasRewardedVideo(this.rewardedVideoAdId)) {
            return false;
        } else {
            MoPubRewardedVideos.showRewardedVideo(this.rewardedVideoAdId);
            return true;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        this.videoAdLoadStartTime = 0L;
        if (this.interstitial != null) {
            this.interstitial.destroy();
            this.interstitial = null;
        }
        if (this.rewardedVideoAdId != null) {
            rewardedVideoInUse = false;
            if (hasRewardedVideoClass != null && hasRewardedVideoClass.booleanValue()) {
                MoPubRewardedVideos.setRewardedVideoListener(null);
            }
        }
    }
}
