package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.g;
import com.intentsoftware.addapptr.c.k;
import com.revmob.RevMobAdsListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class RevMobBanner extends BannerAd {
    private com.revmob.ads.banner.RevMobBanner banner;
    private FrameLayout bannerContainer;
    private g.a revMobInitializationListener;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(final Activity activity, String str, final BannerSize bannerSize, final k kVar) {
        super.load(activity, str, bannerSize, kVar);
        final String[] split = str.split(":");
        if (split.length < 3) {
            if (c.isLoggable(5)) {
                c.w(this, "not enough arguments for RevMob config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("adId doesn't have enough arguments.");
        } else if (split[0].equals("Banner")) {
            if (g.isInitialized()) {
                loadBanner(activity, split[2], bannerSize, kVar);
                return;
            }
            this.revMobInitializationListener = new g.a() { // from class: com.intentsoftware.addapptr.banners.RevMobBanner.1
                @Override // com.intentsoftware.addapptr.c.g.a
                public void onInitialized() {
                    RevMobBanner.this.loadBanner(activity, split[2], bannerSize, kVar);
                }

                @Override // com.intentsoftware.addapptr.c.g.a
                public void onInitFailed(String str2) {
                    RevMobBanner.this.notifyListenerThatAdFailedToLoad(str2);
                }
            };
            g.addListener(this.revMobInitializationListener);
            g.init(activity, split[1]);
        } else {
            if (c.isLoggable(5)) {
                c.w(this, "Wrong ad format provided for RevMob banner. Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("Wrong ad format provided for RevMob banner.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadBanner(Activity activity, String str, BannerSize bannerSize, k kVar) {
        if (kVar != null) {
            ArrayList arrayList = new ArrayList();
            for (List<String> list : kVar.getMap().values()) {
                for (String str2 : list) {
                    arrayList.add(str2);
                }
            }
            g.getRevMob().setUserInterests(arrayList);
        }
        this.banner = g.getRevMob().preLoadBanner(activity, str, createBannerListener());
        this.bannerContainer = new FrameLayout(activity);
        float f = activity.getResources().getDisplayMetrics().density;
        this.bannerContainer.addView(this.banner, new FrameLayout.LayoutParams((int) ((bannerSize.getWidth() * f) + 0.5f), (int) ((f * bannerSize.getHeight()) + 0.5f)));
    }

    private RevMobAdsListener createBannerListener() {
        return new RevMobAdsListener() { // from class: com.intentsoftware.addapptr.banners.RevMobBanner.2
            @Override // com.revmob.RevMobAdsListener
            public void onRevMobAdReceived() {
                RevMobBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobAdNotReceived(String str) {
                RevMobBanner.this.notifyListenerThatAdFailedToLoad(str);
            }

            @Override // com.revmob.RevMobAdsListener
            public void onRevMobAdClicked() {
                RevMobBanner.this.notifyListenerThatAdWasClicked();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        this.banner.show();
        return this.bannerContainer;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.revMobInitializationListener != null) {
            g.removeListener(this.revMobInitializationListener);
        }
        if (this.bannerContainer != null) {
            this.bannerContainer.removeAllViews();
            this.bannerContainer = null;
        }
        if (this.banner != null) {
            this.banner.release();
        }
    }
}
