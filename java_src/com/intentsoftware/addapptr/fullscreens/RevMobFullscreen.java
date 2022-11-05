package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.os.Build;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.g;
import com.intentsoftware.addapptr.c.k;
import com.revmob.RevMobAdsListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class RevMobFullscreen extends FullscreenAd {
    private com.revmob.ads.interstitial.RevMobFullscreen fullscreen;
    private g.a revMobInitializationListener;

    /* loaded from: classes2.dex */
    private enum a {
        UNKNOWN,
        FULLSCREEN,
        VIDEO,
        REWARDED_VIDEO
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
        if (r4.equals("Fullscreen") != false) goto L12;
     */
    @Override // com.intentsoftware.addapptr.ad.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void load(final Activity activity, String str, BannerSize bannerSize, final k kVar) {
        final a aVar;
        boolean z = false;
        super.load(activity, str, bannerSize, kVar);
        final String[] split = str.split(":");
        if (split.length < 3) {
            if (c.isLoggable(5)) {
                c.w(this, "not enough arguments for RevMob config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("adId doesn't have enough arguments.");
            return;
        }
        String str2 = split[0];
        switch (str2.hashCode()) {
            case 82650203:
                if (str2.equals("Video")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1577541869:
                if (str2.equals("RewardedVideo")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2103531483:
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                aVar = a.FULLSCREEN;
                break;
            case true:
                aVar = a.VIDEO;
                break;
            case true:
                aVar = a.REWARDED_VIDEO;
                break;
            default:
                aVar = a.UNKNOWN;
                break;
        }
        if (aVar == a.UNKNOWN) {
            if (c.isLoggable(5)) {
                c.w(this, "Wrong ad format provided for RevMob fullscreen. Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("Wrong ad format provided for RevMob fullscreen.");
        } else if (aVar != a.FULLSCREEN && Build.VERSION.SDK_INT < 14) {
            notifyListenerThatAdFailedToLoad("RevMob video ads are not supported for Android versions below ICS.");
        } else if (g.isInitialized()) {
            createFullscreen(activity, split[2], aVar, kVar);
        } else {
            this.revMobInitializationListener = new g.a() { // from class: com.intentsoftware.addapptr.fullscreens.RevMobFullscreen.1
                @Override // com.intentsoftware.addapptr.c.g.a
                public void onInitialized() {
                    RevMobFullscreen.this.createFullscreen(activity, split[2], aVar, kVar);
                }

                @Override // com.intentsoftware.addapptr.c.g.a
                public void onInitFailed(String str3) {
                    RevMobFullscreen.this.notifyListenerThatAdFailedToLoad(str3);
                }
            };
            g.addListener(this.revMobInitializationListener);
            g.init(activity, split[1]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createFullscreen(Activity activity, String str, a aVar, k kVar) {
        if (kVar != null) {
            ArrayList arrayList = new ArrayList();
            for (List<String> list : kVar.getMap().values()) {
                for (String str2 : list) {
                    arrayList.add(str2);
                }
            }
            g.getRevMob().setUserInterests(arrayList);
        }
        switch (aVar) {
            case FULLSCREEN:
                this.fullscreen = g.getRevMob().createFullscreen(activity, str, createListener());
                return;
            case VIDEO:
                this.fullscreen = g.getRevMob().createVideo(activity, str, createListener());
                return;
            case REWARDED_VIDEO:
                this.fullscreen = g.getRevMob().createRewardedVideo(activity, str, createListener());
                return;
            default:
                return;
        }
    }

    private RevMobAdsListener createListener() {
        return new RevMobAdsListener() { // from class: com.intentsoftware.addapptr.fullscreens.RevMobFullscreen.2
            @Override // com.revmob.RevMobAdsListener
            public void onRevMobAdReceived() {
                RevMobFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobVideoLoaded() {
                RevMobFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobRewardedVideoLoaded() {
                RevMobFullscreen.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobRewardedVideoStarted() {
                RevMobFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobVideoStarted() {
                RevMobFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobAdNotReceived(String str) {
                RevMobFullscreen.this.notifyListenerThatAdFailedToLoad(str);
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobAdDisplayed() {
                RevMobFullscreen.this.notifyListenerThatAdIsShown();
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobAdClicked() {
                RevMobFullscreen.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobRewardedVideoCompleted() {
                RevMobFullscreen.this.notifyListenerThatUserEarnedIncentive();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        this.fullscreen.show();
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.revMobInitializationListener != null) {
            g.removeListener(this.revMobInitializationListener);
        }
        this.fullscreen = null;
    }
}
