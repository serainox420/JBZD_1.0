package com.intentsoftware.addapptr.nativeads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.Ad;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.ImpressionListener;
import com.facebook.ads.NativeAd;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class FacebookNativeAd extends NativeAd {
    private View brandingLogo;
    private com.facebook.ads.NativeAd nativeAd;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.nativeAd = new com.facebook.ads.NativeAd(activity, str);
        this.nativeAd.setAdListener(createAdListener());
        this.nativeAd.setImpressionListener(createImpressionListener());
        this.nativeAd.loadAd();
    }

    private ImpressionListener createImpressionListener() {
        return new ImpressionListener() { // from class: com.intentsoftware.addapptr.nativeads.FacebookNativeAd.1
            @Override // com.facebook.ads.ImpressionListener
            public void onLoggingImpression(Ad ad) {
                FacebookNativeAd.this.notifyListenerThatAdIsShown();
            }
        };
    }

    private AdListener createAdListener() {
        return new AdListener() { // from class: com.intentsoftware.addapptr.nativeads.FacebookNativeAd.2
            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError adError) {
                FacebookNativeAd.this.notifyListenerThatAdFailedToLoad(adError.getErrorMessage());
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                if (ad != FacebookNativeAd.this.nativeAd) {
                    FacebookNativeAd.this.notifyListenerThatAdFailedToLoad("Returned different kind of ad!");
                    return;
                }
                NativeAd.Rating adStarRating = FacebookNativeAd.this.nativeAd.getAdStarRating();
                if (adStarRating != null) {
                    FacebookNativeAd.this.setRating(new NativeAd.a(adStarRating.getValue(), adStarRating.getScale()));
                }
                FacebookNativeAd.this.setAsset(com.intentsoftware.addapptr.ad.NativeAd.TITLE_TEXT_ASSET, FacebookNativeAd.this.nativeAd.getAdTitle());
                FacebookNativeAd.this.setAsset("description", FacebookNativeAd.this.nativeAd.getAdBody());
                FacebookNativeAd.this.setAsset(com.intentsoftware.addapptr.ad.NativeAd.CALL_TO_ACTION_TEXT_ASSET, FacebookNativeAd.this.nativeAd.getAdCallToAction());
                FacebookNativeAd.this.setAsset("subtitle", FacebookNativeAd.this.nativeAd.getAdSubtitle());
                FacebookNativeAd.this.setAsset(com.intentsoftware.addapptr.ad.NativeAd.ICON_IMAGE_ASSET, FacebookNativeAd.this.nativeAd.getAdIcon().getUrl());
                FacebookNativeAd.this.setAsset(com.intentsoftware.addapptr.ad.NativeAd.MAIN_IMAGE_ASSET, FacebookNativeAd.this.nativeAd.getAdCoverImage().getUrl());
                FacebookNativeAd.this.brandingLogo = new AdChoicesView(FacebookNativeAd.this.getActivity(), FacebookNativeAd.this.nativeAd, true);
                FacebookNativeAd.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
                FacebookNativeAd.this.notifyListenerThatAdWasClicked();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public void attachToLayout(ViewGroup viewGroup) {
        this.nativeAd.registerViewForInteraction(viewGroup);
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public View getBrandingLogo() {
        return this.brandingLogo;
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isExpired() {
        return !isReady();
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isReady() {
        return this.nativeAd.isAdLoaded();
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.a
    public void unload() {
        super.unload();
        this.nativeAd.destroy();
        this.nativeAd = null;
    }
}
