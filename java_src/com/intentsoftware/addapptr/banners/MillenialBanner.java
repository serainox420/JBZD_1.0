package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.k;
import com.millennialmedia.InlineAd;
import com.millennialmedia.MMSDK;
import com.millennialmedia.UserData;
/* loaded from: classes2.dex */
public class MillenialBanner extends BannerAd {
    private FrameLayout bannerFrame;
    private InlineAd inlineAd;
    private final InlineAd.InlineAdMetadata inlineAdMetadata = new InlineAd.InlineAdMetadata();
    private boolean notifiedClick;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        try {
            this.bannerFrame = new FrameLayout(activity);
            this.inlineAd = InlineAd.createInstance(str, this.bannerFrame);
            this.inlineAd.setListener(createListener());
            this.inlineAd.setRefreshInterval(0);
            if (bannerSize == BannerSize.Banner320x53) {
                this.inlineAdMetadata.setAdSize(InlineAd.AdSize.BANNER);
            } else if (bannerSize == BannerSize.Banner300x250) {
                this.inlineAdMetadata.setAdSize(InlineAd.AdSize.MEDIUM_RECTANGLE);
            } else if (bannerSize == BannerSize.Banner468x60) {
                this.inlineAdMetadata.setAdSize(InlineAd.AdSize.FULL_BANNER);
            } else {
                this.inlineAdMetadata.setAdSize(InlineAd.AdSize.LEADERBOARD);
            }
            if (kVar != null) {
                UserData userData = new UserData();
                userData.setKeywords(kVar.getValuesAsString(","));
                MMSDK.setUserData(userData);
            }
            this.inlineAd.request(this.inlineAdMetadata);
        } catch (Exception e) {
            notifyListenerThatAdFailedToLoad(e.getMessage());
        }
    }

    private InlineAd.InlineListener createListener() {
        return new InlineAd.InlineListener() { // from class: com.intentsoftware.addapptr.banners.MillenialBanner.1
            @Override // com.millennialmedia.InlineAd.InlineListener
            public void onResized(InlineAd inlineAd, int i, int i2, boolean z) {
            }

            @Override // com.millennialmedia.InlineAd.InlineListener
            public void onResize(InlineAd inlineAd, int i, int i2) {
            }

            @Override // com.millennialmedia.InlineAd.InlineListener
            public void onRequestSucceeded(InlineAd inlineAd) {
                MillenialBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.millennialmedia.InlineAd.InlineListener
            public void onRequestFailed(InlineAd inlineAd, InlineAd.InlineErrorStatus inlineErrorStatus) {
                MillenialBanner.this.notifyListenerThatAdFailedToLoad(inlineErrorStatus.getDescription());
            }

            @Override // com.millennialmedia.InlineAd.InlineListener
            public void onExpanded(InlineAd inlineAd) {
                if (!MillenialBanner.this.notifiedClick) {
                    MillenialBanner.this.notifyListenerThatAdWasClicked();
                }
            }

            @Override // com.millennialmedia.InlineAd.InlineListener
            public void onCollapsed(InlineAd inlineAd) {
                if (MillenialBanner.this.notifiedClick) {
                    MillenialBanner.this.fallbackNotifyListenerThatAdWasDismissed();
                    MillenialBanner.this.notifiedClick = false;
                }
            }

            @Override // com.millennialmedia.InlineAd.InlineListener
            public void onClicked(InlineAd inlineAd) {
            }

            @Override // com.millennialmedia.InlineAd.InlineListener
            public void onAdLeftApplication(InlineAd inlineAd) {
                if (!MillenialBanner.this.notifiedClick) {
                    MillenialBanner.this.notifyListenerThatAdWasClicked();
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        this.notifiedClick = false;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.inlineAd != null && this.bannerFrame != null) {
            this.inlineAd.setListener(null);
            this.bannerFrame.removeAllViews();
            this.inlineAd = null;
            this.bannerFrame = null;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.bannerFrame;
    }
}
