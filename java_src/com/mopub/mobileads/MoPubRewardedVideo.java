package com.mopub.mobileads;

import android.app.Activity;
import com.mopub.common.DataKeys;
import com.mopub.common.LifecycleListener;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.CustomEventRewardedVideo;
import com.mopub.mobileads.RewardedVastVideoInterstitial;
import java.util.Map;
/* loaded from: classes3.dex */
public class MoPubRewardedVideo extends CustomEventRewardedVideo {

    /* renamed from: a  reason: collision with root package name */
    private RewardedVastVideoInterstitial f4434a = new RewardedVastVideoInterstitial();
    private String b;
    private int c;
    private boolean d;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public CustomEventRewardedVideo.CustomEventRewardedVideoListener a() {
        return null;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected LifecycleListener b() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public String c() {
        return "mopub_rewarded_video_id";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public void d() {
        this.f4434a.onInvalidate();
        this.d = false;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected boolean b(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception {
        return false;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    protected void c(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception {
        Preconditions.checkNotNull(activity, "activity cannot be null");
        Preconditions.checkNotNull(map, "localExtras cannot be null");
        Preconditions.checkNotNull(map2, "serverExtras cannot be null");
        Object obj = map.get(DataKeys.REWARDED_VIDEO_CURRENCY_NAME_KEY);
        if (obj instanceof String) {
            this.b = (String) obj;
        } else {
            MoPubLog.d("No currency name specified for rewarded video. Using the default name.");
            this.b = "";
        }
        Object obj2 = map.get(DataKeys.REWARDED_VIDEO_CURRENCY_AMOUNT_STRING_KEY);
        if (obj2 instanceof String) {
            try {
                this.c = Integer.parseInt((String) obj2);
            } catch (NumberFormatException e) {
                MoPubLog.d("Unable to convert currency amount: " + obj2 + ". Using the default reward amount: 0");
                this.c = 0;
            }
        } else {
            MoPubLog.d("No currency amount specified for rewarded video. Using the default reward amount: 0");
            this.c = 0;
        }
        if (this.c < 0) {
            MoPubLog.d("Negative currency amount specified for rewarded video. Using the default reward amount: 0");
            this.c = 0;
        }
        this.f4434a.loadInterstitial(activity, new a(), map, map2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public boolean e() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    public void f() {
        if (e()) {
            MoPubLog.d("Showing MoPub rewarded video.");
            this.f4434a.showInterstitial();
            return;
        }
        MoPubLog.d("Unable to show MoPub rewarded video");
    }

    /* loaded from: classes3.dex */
    private class a implements CustomEventInterstitial.CustomEventInterstitialListener, RewardedVastVideoInterstitial.a {
        private a() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialLoaded() {
            MoPubRewardedVideo.this.d = true;
            MoPubRewardedVideoManager.onRewardedVideoLoadSuccess(MoPubRewardedVideo.class, "mopub_rewarded_video_id");
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialFailed(MoPubErrorCode moPubErrorCode) {
            switch (moPubErrorCode) {
                case VIDEO_PLAYBACK_ERROR:
                    MoPubRewardedVideoManager.onRewardedVideoPlaybackError(MoPubRewardedVideo.class, "mopub_rewarded_video_id", moPubErrorCode);
                    return;
                default:
                    MoPubRewardedVideoManager.onRewardedVideoLoadFailure(MoPubRewardedVideo.class, "mopub_rewarded_video_id", moPubErrorCode);
                    return;
            }
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialShown() {
            MoPubRewardedVideoManager.onRewardedVideoStarted(MoPubRewardedVideo.class, "mopub_rewarded_video_id");
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialClicked() {
            MoPubRewardedVideoManager.onRewardedVideoClicked(MoPubRewardedVideo.class, "mopub_rewarded_video_id");
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onLeaveApplication() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialDismissed() {
            MoPubRewardedVideoManager.onRewardedVideoClosed(MoPubRewardedVideo.class, "mopub_rewarded_video_id");
        }

        @Override // com.mopub.mobileads.RewardedVastVideoInterstitial.a
        public void onVideoComplete() {
            if (MoPubRewardedVideo.this.b == null) {
                MoPubLog.d("No rewarded video was loaded, so no reward is possible");
            } else {
                MoPubRewardedVideoManager.onRewardedVideoCompleted(MoPubRewardedVideo.class, "mopub_rewarded_video_id", MoPubReward.success(MoPubRewardedVideo.this.b, MoPubRewardedVideo.this.c));
            }
        }
    }
}
