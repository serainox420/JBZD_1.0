package com.intentsoftware.addapptr.nativeads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.flurry.android.FlurryAgent;
import com.flurry.android.ads.FlurryAdErrorType;
import com.flurry.android.ads.FlurryAdNative;
import com.flurry.android.ads.FlurryAdNativeAsset;
import com.flurry.android.ads.FlurryAdNativeListener;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.intentsoftware.addapptr.c.m;
/* loaded from: classes2.dex */
public class FlurryNativeAd extends NativeAd {
    private ImageView brandingLogo;
    private FlurryAdNative nativeAd;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length > 1) {
            String str2 = split[0];
            String str3 = split[1];
            FlurryAgent.init(activity, str2);
            this.nativeAd = new FlurryAdNative(activity, str3);
            this.nativeAd.setListener(createListener());
            this.nativeAd.fetchAd();
            return;
        }
        notifyListenerThatAdFailedToLoad("Not enough ad id parts for Flurry Native Ad");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trySetFlurryAsset(FlurryAdNative flurryAdNative, String str, String str2) {
        FlurryAdNativeAsset asset = flurryAdNative.getAsset(str2);
        if (asset != null) {
            setAsset(str, asset.getValue());
        }
    }

    private FlurryAdNativeListener createListener() {
        return new FlurryAdNativeListener() { // from class: com.intentsoftware.addapptr.nativeads.FlurryNativeAd.1
            @Override // com.flurry.android.ads.FlurryAdNativeListener
            public void onFetched(FlurryAdNative flurryAdNative) {
                FlurryNativeAd.this.trySetFlurryAsset(flurryAdNative, NativeAd.TITLE_TEXT_ASSET, NativeAd.TITLE_TEXT_ASSET);
                FlurryNativeAd.this.trySetFlurryAsset(flurryAdNative, "description", "summary");
                FlurryNativeAd.this.trySetFlurryAsset(flurryAdNative, NativeAd.CALL_TO_ACTION_TEXT_ASSET, com.millennialmedia.NativeAd.COMPONENT_ID_CALL_TO_ACTION);
                FlurryNativeAd.this.trySetFlurryAsset(flurryAdNative, NativeAd.ADVERTISER_TEXT_ASSET, "source");
                FlurryNativeAd.this.trySetFlurryAsset(flurryAdNative, "source", "source");
                FlurryNativeAd.this.trySetFlurryAsset(flurryAdNative, NativeAd.ICON_IMAGE_ASSET, "secImage");
                FlurryNativeAd.this.trySetFlurryAsset(flurryAdNative, NativeAd.MAIN_IMAGE_ASSET, "secHqImage");
                FlurryAdNativeAsset asset = flurryAdNative.getAsset("secHqBrandingLogo");
                if (asset != null) {
                    FlurryNativeAd.this.brandingLogo = new ImageView(FlurryNativeAd.this.getActivity());
                    m.loadBitmapForView(asset.getValue(), FlurryNativeAd.this.brandingLogo);
                }
                FlurryAdNativeAsset asset2 = flurryAdNative.getAsset("appRating");
                if (asset2 != null) {
                    String[] split = asset2.getValue().split("/");
                    if (split.length > 1) {
                        try {
                            FlurryNativeAd.this.setRating(new NativeAd.a(Double.parseDouble(split[0]), Double.parseDouble(split[1])));
                        } catch (NumberFormatException e) {
                            if (c.isLoggable(5)) {
                                c.w(this, "Error when parsing Flurry native ad rating: " + e.getMessage());
                            }
                        }
                    }
                }
                FlurryNativeAd.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.flurry.android.ads.FlurryAdNativeListener
            public void onShowFullscreen(FlurryAdNative flurryAdNative) {
            }

            @Override // com.flurry.android.ads.FlurryAdNativeListener
            public void onCloseFullscreen(FlurryAdNative flurryAdNative) {
            }

            @Override // com.flurry.android.ads.FlurryAdNativeListener
            public void onAppExit(FlurryAdNative flurryAdNative) {
            }

            @Override // com.flurry.android.ads.FlurryAdNativeListener
            public void onClicked(FlurryAdNative flurryAdNative) {
                FlurryNativeAd.this.notifyListenerThatAdWasClicked();
            }

            @Override // com.flurry.android.ads.FlurryAdNativeListener
            public void onImpressionLogged(FlurryAdNative flurryAdNative) {
                FlurryNativeAd.this.notifyListenerThatAdIsShown();
            }

            @Override // com.flurry.android.ads.FlurryAdNativeListener
            public void onExpanded(FlurryAdNative flurryAdNative) {
            }

            @Override // com.flurry.android.ads.FlurryAdNativeListener
            public void onCollapsed(FlurryAdNative flurryAdNative) {
            }

            @Override // com.flurry.android.ads.FlurryAdNativeListener
            public void onError(FlurryAdNative flurryAdNative, FlurryAdErrorType flurryAdErrorType, int i) {
                FlurryNativeAd.this.notifyListenerThatAdFailedToLoad("error code: " + i);
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.a
    public void unload() {
        super.unload();
        if (this.nativeAd != null) {
            this.nativeAd.destroy();
        }
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public void attachToLayout(ViewGroup viewGroup) {
        this.nativeAd.setTrackingView(viewGroup);
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public View getBrandingLogo() {
        return this.brandingLogo;
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public NativeAd.Type getAdType() {
        return this.nativeAd.isVideoAd() ? NativeAd.Type.VIDEO : super.getAdType();
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isExpired() {
        return this.nativeAd.isExpired();
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isReady() {
        return this.nativeAd.isReady();
    }
}
