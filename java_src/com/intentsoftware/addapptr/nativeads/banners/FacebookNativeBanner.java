package com.intentsoftware.addapptr.nativeads.banners;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.ads.Ad;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.NativeAd;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.R;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.k;
import com.intentsoftware.addapptr.c.m;
/* loaded from: classes2.dex */
public class FacebookNativeBanner extends BannerAd {
    private View bannerView;
    private NativeAd nativeAd;
    private BannerSize size;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.size = bannerSize;
        this.nativeAd = new NativeAd(activity, str);
        this.nativeAd.setAdListener(createAdListener());
        this.nativeAd.loadAd();
    }

    private AdListener createAdListener() {
        return new AdListener() { // from class: com.intentsoftware.addapptr.nativeads.banners.FacebookNativeBanner.1
            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError adError) {
                FacebookNativeBanner.this.notifyListenerThatAdFailedToLoad(adError.getErrorMessage());
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                if (FacebookNativeBanner.this.size != BannerSize.Banner320x53) {
                    if (FacebookNativeBanner.this.size != BannerSize.Banner468x60) {
                        if (FacebookNativeBanner.this.size == BannerSize.Banner768x90) {
                            FacebookNativeBanner.this.bannerView = FacebookNativeBanner.this.getActivity().getLayoutInflater().inflate(R.layout.native_banner_768x90, (ViewGroup) null);
                        } else {
                            FacebookNativeBanner.this.bannerView = FacebookNativeBanner.this.getActivity().getLayoutInflater().inflate(R.layout.native_banner_300x250, (ViewGroup) null);
                        }
                    } else {
                        FacebookNativeBanner.this.bannerView = FacebookNativeBanner.this.getActivity().getLayoutInflater().inflate(R.layout.native_banner_468x60, (ViewGroup) null);
                    }
                } else {
                    FacebookNativeBanner.this.bannerView = FacebookNativeBanner.this.getActivity().getLayoutInflater().inflate(R.layout.native_banner_320x53, (ViewGroup) null);
                }
                m.loadBitmapForView(FacebookNativeBanner.this.nativeAd.getAdIcon().getUrl(), (ImageView) FacebookNativeBanner.this.bannerView.findViewById(R.id.iconView));
                ((TextView) FacebookNativeBanner.this.bannerView.findViewById(R.id.titleView)).setText(FacebookNativeBanner.this.nativeAd.getAdTitle());
                ((TextView) FacebookNativeBanner.this.bannerView.findViewById(R.id.adDescriptionView)).setText(FacebookNativeBanner.this.nativeAd.getAdBody());
                ((TextView) FacebookNativeBanner.this.bannerView.findViewById(R.id.CTA_view)).setText(FacebookNativeBanner.this.nativeAd.getAdCallToAction());
                ((FrameLayout) FacebookNativeBanner.this.bannerView.findViewById(R.id.nativeBannerUpperRightCorner)).addView(new AdChoicesView(FacebookNativeBanner.this.getActivity(), FacebookNativeBanner.this.nativeAd, true));
                FacebookNativeBanner.this.nativeAd.registerViewForInteraction(FacebookNativeBanner.this.bannerView);
                FacebookNativeBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
                FacebookNativeBanner.this.notifyListenerThatAdWasClicked();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.bannerView;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.nativeAd != null) {
            this.nativeAd.destroy();
        }
        if (this.bannerView != null) {
            this.bannerView.destroyDrawingCache();
        }
        this.bannerView = null;
    }
}
