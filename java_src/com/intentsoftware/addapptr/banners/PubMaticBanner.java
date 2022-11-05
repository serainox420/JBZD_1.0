package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.pubmatic.sdk.banner.PMBannerAdView;
import com.pubmatic.sdk.banner.mocean.MoceanBannerAdRequest;
import java.util.Map;
/* loaded from: classes2.dex */
public class PubMaticBanner extends BannerAd {
    private PMBannerAdView banner;
    private FrameLayout bannerFrame;
    private boolean notifiedClick;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.bannerFrame = new FrameLayout(activity);
        float f = getActivity().getResources().getDisplayMetrics().density;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) ((bannerSize.getWidth() * f) + 0.5f), (int) ((f * bannerSize.getHeight()) + 0.5f));
        this.banner = new PMBannerAdView(activity);
        this.bannerFrame.addView(this.banner, layoutParams);
        MoceanBannerAdRequest createMoceanBannerAdRequest = MoceanBannerAdRequest.createMoceanBannerAdRequest(activity, str);
        if (kVar != null) {
            createMoceanBannerAdRequest.setCustomParams(kVar.getMap());
        }
        this.banner.setRequestListener(createRequestListener());
        this.banner.setActivityListener(createActivityListener());
        this.banner.setAndroidIdEnabled(true);
        if (activity.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0 || activity.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
            this.banner.setLocationDetectionEnabled(true);
        } else {
            this.banner.setLocationDetectionEnabled(false);
        }
        this.banner.execute(createMoceanBannerAdRequest);
    }

    private PMBannerAdView.BannerAdViewDelegate.ActivityListener createActivityListener() {
        return new PMBannerAdView.BannerAdViewDelegate.ActivityListener() { // from class: com.intentsoftware.addapptr.banners.PubMaticBanner.1
            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.ActivityListener
            public boolean onOpenUrl(PMBannerAdView pMBannerAdView, String str) {
                if (!PubMaticBanner.this.notifiedClick) {
                    PubMaticBanner.this.notifiedClick = true;
                    PubMaticBanner.this.notifyListenerThatAdWasClicked();
                    return false;
                }
                return false;
            }

            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.ActivityListener
            public void onLeavingApplication(PMBannerAdView pMBannerAdView) {
                if (!PubMaticBanner.this.notifiedClick) {
                    PubMaticBanner.this.notifiedClick = true;
                    PubMaticBanner.this.notifyListenerThatAdWasClicked();
                }
            }

            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.ActivityListener
            public boolean onCloseButtonClick(PMBannerAdView pMBannerAdView) {
                if (PubMaticBanner.this.notifiedClick) {
                    PubMaticBanner.this.fallbackNotifyListenerThatAdWasDismissed();
                    PubMaticBanner.this.notifiedClick = false;
                }
                return false;
            }
        };
    }

    private PMBannerAdView.BannerAdViewDelegate.RequestListener createRequestListener() {
        return new PMBannerAdView.BannerAdViewDelegate.RequestListener() { // from class: com.intentsoftware.addapptr.banners.PubMaticBanner.2
            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.RequestListener
            public void onFailedToReceiveAd(PMBannerAdView pMBannerAdView, Exception exc) {
                if (exc != null) {
                    PubMaticBanner.this.notifyListenerThatAdFailedToLoad(exc.getMessage());
                } else {
                    PubMaticBanner.this.notifyListenerThatAdFailedToLoad(null);
                }
            }

            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.RequestListener
            public void onReceivedAd(PMBannerAdView pMBannerAdView) {
                PubMaticBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.pubmatic.sdk.banner.PMBannerAdView.BannerAdViewDelegate.RequestListener
            public void onReceivedThirdPartyRequest(PMBannerAdView pMBannerAdView, Map<String, String> map, Map<String, String> map2) {
                PubMaticBanner.this.notifyListenerThatAdWasLoaded();
                if (c.isLoggable(4)) {
                    c.i(this, "Obtained third party request!");
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.bannerFrame;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.bannerFrame != null) {
            this.bannerFrame.removeAllViews();
        }
        if (this.banner != null) {
            this.banner.reset();
            this.banner.setActivityListener(null);
            this.banner.setRequestListener(null);
            this.banner = null;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        this.notifiedClick = false;
    }
}
