package com.intentsoftware.addapptr.nativeads;

import android.app.Activity;
import android.location.Location;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.intentsoftware.addapptr.c.m;
import com.mdotm.android.database.MdotMCacheHandler;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.util.Drawables;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.MoPubStaticNativeAdRenderer;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.StaticNativeAd;
import com.mopub.nativeads.ViewBinder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class MoPubNativeAd extends NativeAd {
    private BaseNativeAd adData;
    private ImageView brandingLogo;
    private MoPubNative moPubNative;
    private String privacyInformationIconClickThroughUrl;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length < 2) {
            if (c.isLoggable(5)) {
                c.w(this, "not enough arguments for MoPub config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("adId doesn't have enough arguments.");
        } else if (split[0].equalsIgnoreCase(MdotMCacheHandler.TABLE_NAME_AD_NATIVE)) {
            this.moPubNative = new MoPubNative(activity, split[1], createLoadListener());
            this.brandingLogo = new ImageView(activity);
            this.brandingLogo.setImageDrawable(Drawables.NATIVE_PRIVACY_INFORMATION_ICON.createDrawable(activity));
            this.moPubNative.registerAdRenderer(new MoPubStaticNativeAdRenderer(new ViewBinder.Builder(0).build()));
            Location location = b.getLocation();
            if (location != null || kVar != null) {
                RequestParameters.Builder builder = new RequestParameters.Builder();
                if (location != null) {
                    builder.location(location);
                }
                if (kVar != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                        Iterator<String> it = entry.getValue().iterator();
                        while (it.hasNext()) {
                            arrayList.add(entry.getKey() + ":" + it.next());
                        }
                    }
                    builder.keywords(TextUtils.join(",", arrayList));
                }
                this.moPubNative.makeRequest(builder.build());
                return;
            }
            this.moPubNative.makeRequest();
        } else {
            if (c.isLoggable(5)) {
                c.w(this, "Wrong ad format provided for MoPub fullscreen. Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("Wrong ad format provided for MoPub native.");
        }
    }

    private MoPubNative.MoPubNativeNetworkListener createLoadListener() {
        return new MoPubNative.MoPubNativeNetworkListener() { // from class: com.intentsoftware.addapptr.nativeads.MoPubNativeAd.1
            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeLoad(com.mopub.nativeads.NativeAd nativeAd) {
                MoPubNativeAd.this.adData = nativeAd.getBaseNativeAd();
                if (MoPubNativeAd.this.adData instanceof StaticNativeAd) {
                    MoPubNativeAd.this.setAsset(NativeAd.TITLE_TEXT_ASSET, ((StaticNativeAd) MoPubNativeAd.this.adData).getTitle());
                    MoPubNativeAd.this.setAsset("description", ((StaticNativeAd) MoPubNativeAd.this.adData).getText());
                    MoPubNativeAd.this.setAsset(NativeAd.CALL_TO_ACTION_TEXT_ASSET, ((StaticNativeAd) MoPubNativeAd.this.adData).getCallToAction());
                    MoPubNativeAd.this.setAsset(NativeAd.ICON_IMAGE_ASSET, ((StaticNativeAd) MoPubNativeAd.this.adData).getIconImageUrl());
                    MoPubNativeAd.this.setAsset(NativeAd.MAIN_IMAGE_ASSET, ((StaticNativeAd) MoPubNativeAd.this.adData).getMainImageUrl());
                    Double starRating = ((StaticNativeAd) MoPubNativeAd.this.adData).getStarRating();
                    if (starRating != null) {
                        MoPubNativeAd.this.setRating(new NativeAd.a(starRating.doubleValue(), 5.0d));
                    }
                    MoPubNativeAd.this.privacyInformationIconClickThroughUrl = ((StaticNativeAd) MoPubNativeAd.this.adData).getPrivacyInformationIconClickThroughUrl();
                    String privacyInformationIconImageUrl = ((StaticNativeAd) MoPubNativeAd.this.adData).getPrivacyInformationIconImageUrl();
                    if (MoPubNativeAd.this.privacyInformationIconClickThroughUrl == null) {
                        MoPubNativeAd.this.brandingLogo = null;
                    } else if (privacyInformationIconImageUrl != null) {
                        m.loadBitmapForView(privacyInformationIconImageUrl, MoPubNativeAd.this.brandingLogo);
                    }
                    MoPubNativeAd.this.notifyListenerThatAdWasLoaded();
                    return;
                }
                MoPubNativeAd.this.notifyListenerThatAdFailedToLoad("Unsupported type of native ad returned.");
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeFail(NativeErrorCode nativeErrorCode) {
                MoPubNativeAd.this.notifyListenerThatAdFailedToLoad(nativeErrorCode.name());
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public void attachToLayout(ViewGroup viewGroup) {
        this.adData.setNativeEventListener(createEventListener());
        this.adData.prepare(viewGroup);
        if (this.brandingLogo != null && this.privacyInformationIconClickThroughUrl != null) {
            this.brandingLogo.setOnClickListener(new View.OnClickListener() { // from class: com.intentsoftware.addapptr.nativeads.MoPubNativeAd.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(MoPubNativeAd.this.getActivity(), MoPubNativeAd.this.privacyInformationIconClickThroughUrl);
                }
            });
        }
    }

    private BaseNativeAd.NativeEventListener createEventListener() {
        return new BaseNativeAd.NativeEventListener() { // from class: com.intentsoftware.addapptr.nativeads.MoPubNativeAd.3
            @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
            public void onAdImpressed() {
                MoPubNativeAd.this.notifyListenerThatAdIsShown();
            }

            @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
            public void onAdClicked() {
                MoPubNativeAd.this.notifyListenerThatAdWasClicked();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public View getBrandingLogo() {
        return this.brandingLogo;
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.a
    public void unload() {
        super.unload();
        this.brandingLogo = null;
        if (this.adData != null) {
            this.adData.setNativeEventListener(null);
            this.adData.destroy();
        }
        if (this.moPubNative != null) {
            this.moPubNative.destroy();
        }
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isExpired() {
        return false;
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isReady() {
        return this.adData != null;
    }
}
