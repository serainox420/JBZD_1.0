package com.applovin.impl.sdk;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.SoftReference;
/* loaded from: classes.dex */
public class aa {
    private static String l = null;

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1581a;
    private final AppLovinAdServiceImpl b;
    private AppLovinAdImpl c;
    private String d;
    private SoftReference e;
    private volatile String h;
    private df i;
    private SoftReference k;
    private final Object g = new Object();
    private volatile boolean j = false;
    private final Handler f = new Handler(Looper.getMainLooper());

    public aa(AppLovinSdk appLovinSdk) {
        this.f1581a = (AppLovinSdkImpl) appLovinSdk;
        this.b = (AppLovinAdServiceImpl) appLovinSdk.getAdService();
    }

    public static void a(String str) {
        l = str;
    }

    public static String b() {
        return l;
    }

    private void e() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        if (this.e == null || (appLovinAdLoadListener = (AppLovinAdLoadListener) this.e.get()) == null) {
            return;
        }
        appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED);
    }

    private AppLovinAdRewardListener f() {
        return new ab(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (!a()) {
            this.f1581a.getLogger().userError("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
            e();
            return;
        }
        AppLovinAd appLovinAd = this.c;
        if (!appLovinAd.getType().equals(AppLovinAdType.INCENTIVIZED)) {
            this.f1581a.getLogger().e("IncentivizedAdController", "Attempted to render an ad of type " + this.c.getType() + " in an Incentivized Ad interstitial.");
            appLovinAdVideoPlaybackListener.videoPlaybackEnded(this.c, 0.0d, false);
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f1581a, activity);
        af afVar = new af(this, activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener, null);
        create.setAdDisplayListener(afVar);
        create.setAdVideoPlaybackListener(afVar);
        create.setAdClickListener(afVar);
        create.showAndRender(appLovinAd, this.d);
        this.k = new SoftReference(create);
        a(appLovinAd, afVar);
    }

    public void a(Activity activity, String str, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdRewardListener f = appLovinAdRewardListener == null ? f() : appLovinAdRewardListener;
        if (!a()) {
            this.f1581a.getLogger().userError("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
            e();
        } else if (AppLovinSdkUtils.isValidString(this.c.getVideoFilename()) && !this.f1581a.getFileManager().a(this.c.getVideoFilename(), activity)) {
        } else {
            this.d = str;
            if (!((Boolean) this.f1581a.a(bx.U)).booleanValue()) {
                a(activity, f, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
                return;
            }
            ar arVar = new ar(this.f1581a, this);
            arVar.a(activity);
            arVar.a(appLovinAdDisplayListener);
            arVar.a(appLovinAdClickListener);
            arVar.a(appLovinAdVideoPlaybackListener);
            arVar.a(f);
            arVar.a();
        }
    }

    void a(AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.i = new df(this.f1581a, appLovinAd, appLovinAdRewardListener);
        this.f1581a.a().a(this.i, cs.BACKGROUND);
    }

    public void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f1581a.getLogger().d("IncentivizedAdController", "User requested preload of incentivized ad...");
        this.e = new SoftReference(appLovinAdLoadListener);
        if (!a()) {
            this.b.loadNextAd(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, new ac(this, appLovinAdLoadListener));
            return;
        }
        this.f1581a.getLogger().userError("IncentivizedAdController", "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden).");
        if (appLovinAdLoadListener == null) {
            return;
        }
        appLovinAdLoadListener.adReceived(this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AppLovinAdRewardListener appLovinAdRewardListener) {
        appLovinAdRewardListener.userDeclinedToViewAd(this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, Activity activity) {
        if (str == null || !((Boolean) this.f1581a.a(bx.V)).booleanValue()) {
            return;
        }
        new ap(this.f1581a, activity, str).a();
    }

    public boolean a() {
        return this.c != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        synchronized (this.g) {
            this.h = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        String str;
        synchronized (this.g) {
            str = this.h;
        }
        return str;
    }

    public void d() {
        AppLovinInterstitialAdDialog appLovinInterstitialAdDialog;
        if (this.k == null || (appLovinInterstitialAdDialog = (AppLovinInterstitialAdDialog) this.k.get()) == null) {
            return;
        }
        appLovinInterstitialAdDialog.dismiss();
    }
}
