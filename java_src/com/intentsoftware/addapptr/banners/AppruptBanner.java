package com.intentsoftware.addapptr.banners;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.apprupt.sdk.AdView;
import com.apprupt.sdk.CvSDK;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class AppruptBanner extends BannerAd {
    private static final int MAX_TIME_AFTER_CLICK = 700;
    private AdView adView;
    private FrameLayout bannerFrame;
    private long clickTime;
    private View clickTrackingView;

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.bannerFrame;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        CvSDK.a(activity);
        CvSDK.c();
        this.adView = new AdView(activity);
        try {
            this.adView.setAdSpaceId(Integer.parseInt(str));
            this.bannerFrame = new FrameLayout(activity);
            this.clickTrackingView = new View(activity);
            this.clickTrackingView.setOnTouchListener(new View.OnTouchListener() { // from class: com.intentsoftware.addapptr.banners.AppruptBanner.1
                @Override // android.view.View.OnTouchListener
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        AppruptBanner.this.clickTime = SystemClock.elapsedRealtime();
                        return false;
                    }
                    return false;
                }
            });
            this.adView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            this.adView.setVisibilityTrackingEnabled(false);
            this.adView.setListener(createListener());
            this.bannerFrame.addView(this.adView);
            this.bannerFrame.addView(this.clickTrackingView, new ViewGroup.LayoutParams(-1, -1));
            this.adView.a();
        } catch (NumberFormatException e) {
            notifyListenerThatAdFailedToLoad("cannot parse AdSpaceId- number format exception");
        }
    }

    private AdView.Listener createListener() {
        return new AdView.Listener() { // from class: com.intentsoftware.addapptr.banners.AppruptBanner.2
            @Override // com.apprupt.sdk.AdView.Listener
            public void onFirstTap(AdView adView) {
            }

            @Override // com.apprupt.sdk.AdView.Listener
            public void onAdLoadingFailure(String str, AdView adView) {
                AppruptBanner.this.notifyListenerThatAdFailedToLoad(str);
            }

            @Override // com.apprupt.sdk.AdView.Listener
            public void onAdLoaded(AdView adView) {
                AppruptBanner.this.notifyListenerThatAdWasLoaded();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.adView != null) {
            this.adView.setListener(null);
            this.adView.b();
            this.adView = null;
        }
        this.clickTrackingView = null;
        this.bannerFrame = null;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void pause() {
        if (SystemClock.elapsedRealtime() - this.clickTime < 700) {
            notifyListenerThatAdWasClicked();
        }
        super.pause();
        CvSDK.a();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        CvSDK.b(activity);
    }
}
