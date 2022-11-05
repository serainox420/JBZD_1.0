package com.intentsoftware.addapptr.nativeads;

import android.app.Activity;
import android.location.Location;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.d;
import com.intentsoftware.addapptr.c.k;
import java.util.List;
/* loaded from: classes2.dex */
public class AdMobNativeAd extends NativeAd implements d.a {
    private NativeAd.Type adType = NativeAd.Type.UNKNOWN;
    private NativeAppInstallAd appInstallAd;
    private NativeContentAd contentAd;
    private d impressionTracker;
    private NativeAdView nativeAdView;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        AdLoader build = new AdLoader.Builder(activity, str).forAppInstallAd(new NativeAppInstallAd.OnAppInstallAdLoadedListener() { // from class: com.intentsoftware.addapptr.nativeads.AdMobNativeAd.3
            @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
            public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
                AdMobNativeAd.this.trySetTextAsset(NativeAd.TITLE_TEXT_ASSET, nativeAppInstallAd.getHeadline());
                AdMobNativeAd.this.trySetTextAsset("description", nativeAppInstallAd.getBody());
                AdMobNativeAd.this.trySetTextAsset(NativeAd.CALL_TO_ACTION_TEXT_ASSET, nativeAppInstallAd.getCallToAction());
                if (nativeAppInstallAd.getIcon() != null) {
                    AdMobNativeAd.this.setAsset(NativeAd.ICON_IMAGE_ASSET, nativeAppInstallAd.getIcon().getUri().toString());
                }
                if (nativeAppInstallAd.getImages() != null && !nativeAppInstallAd.getImages().isEmpty()) {
                    AdMobNativeAd.this.setAsset(NativeAd.MAIN_IMAGE_ASSET, nativeAppInstallAd.getImages().get(0).getUri().toString());
                }
                if (nativeAppInstallAd.getStarRating() != null) {
                    AdMobNativeAd.this.setRating(new NativeAd.a(nativeAppInstallAd.getStarRating().doubleValue(), 10.0d));
                }
                AdMobNativeAd.this.adType = NativeAd.Type.APP_INSTALL;
                AdMobNativeAd.this.appInstallAd = nativeAppInstallAd;
                AdMobNativeAd.this.notifyListenerThatAdWasLoaded();
            }
        }).forContentAd(new NativeContentAd.OnContentAdLoadedListener() { // from class: com.intentsoftware.addapptr.nativeads.AdMobNativeAd.2
            @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
            public void onContentAdLoaded(NativeContentAd nativeContentAd) {
                AdMobNativeAd.this.trySetTextAsset(NativeAd.TITLE_TEXT_ASSET, nativeContentAd.getHeadline());
                AdMobNativeAd.this.trySetTextAsset("description", nativeContentAd.getBody());
                AdMobNativeAd.this.trySetTextAsset(NativeAd.CALL_TO_ACTION_TEXT_ASSET, nativeContentAd.getCallToAction());
                AdMobNativeAd.this.trySetTextAsset(NativeAd.ADVERTISER_TEXT_ASSET, nativeContentAd.getAdvertiser());
                if (nativeContentAd.getLogo() != null) {
                    AdMobNativeAd.this.setAsset(NativeAd.ICON_IMAGE_ASSET, nativeContentAd.getLogo().getUri().toString());
                }
                if (nativeContentAd.getImages() != null && !nativeContentAd.getImages().isEmpty()) {
                    AdMobNativeAd.this.setAsset(NativeAd.MAIN_IMAGE_ASSET, nativeContentAd.getImages().get(0).getUri().toString());
                }
                AdMobNativeAd.this.adType = NativeAd.Type.CONTENT;
                AdMobNativeAd.this.contentAd = nativeContentAd;
                AdMobNativeAd.this.notifyListenerThatAdWasLoaded();
            }
        }).withAdListener(new AdListener() { // from class: com.intentsoftware.addapptr.nativeads.AdMobNativeAd.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                super.onAdFailedToLoad(i);
                AdMobNativeAd.this.notifyListenerThatAdFailedToLoad("Error code " + i);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                super.onAdOpened();
                AdMobNativeAd.this.notifyListenerThatAdWasClicked();
            }
        }).withNativeAdOptions(new NativeAdOptions.Builder().setReturnUrlsForImageAssets(true).build()).build();
        Location location = b.getLocation();
        AdRequest.Builder addTestDevice = new AdRequest.Builder().addTestDevice(AdRequest.DEVICE_ID_EMULATOR);
        addTestDevice.setRequestAgent("AddApptr");
        if (location != null) {
            addTestDevice.setLocation(location);
        }
        if (kVar != null) {
            for (List<String> list : kVar.getMap().values()) {
                for (String str2 : list) {
                    addTestDevice.addKeyword(str2);
                }
            }
        }
        AdRequest build2 = addTestDevice.build();
        this.impressionTracker = new d(0, 0, this);
        build.loadAd(build2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trySetTextAsset(String str, CharSequence charSequence) {
        if (charSequence != null) {
            setAsset(str, charSequence.toString());
        }
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public void attachToLayout(ViewGroup viewGroup) {
        if (viewGroup instanceof NativeAdView) {
            this.nativeAdView = (NativeAdView) viewGroup;
            if (this.adType == NativeAd.Type.CONTENT && this.contentAd != null) {
                this.nativeAdView.setNativeAd(this.contentAd);
            } else if (this.adType == NativeAd.Type.APP_INSTALL && this.appInstallAd != null) {
                this.nativeAdView.setNativeAd(this.appInstallAd);
            } else if (c.isLoggable(5)) {
                c.w(this, "Cannot attach ad to layout - loaded ad type mismatch!");
            }
            this.impressionTracker.attachToView(this.nativeAdView);
        } else if (c.isLoggable(5)) {
            c.w(this, "Cannot attach ad to layout - provided layout is not instance of NativeAdView!");
        }
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.a
    public void unload() {
        super.unload();
        if (this.contentAd != null) {
            this.contentAd.destroy();
            this.contentAd = null;
        }
        if (this.appInstallAd != null) {
            this.appInstallAd.destroy();
            this.appInstallAd = null;
        }
        if (this.nativeAdView != null) {
            this.nativeAdView.destroy();
            this.nativeAdView = null;
        }
        this.impressionTracker.destroy();
        this.impressionTracker = null;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        this.impressionTracker.resume();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void pause() {
        this.impressionTracker.pause();
        super.pause();
    }

    @Override // com.intentsoftware.addapptr.c.d.a
    public void onImpressionDetected() {
        notifyListenerThatAdIsShown();
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public NativeAd.Type getAdType() {
        return this.adType;
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public View getBrandingLogo() {
        return null;
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isExpired() {
        return false;
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isReady() {
        return (this.contentAd == null && this.appInstallAd == null) ? false : true;
    }
}
