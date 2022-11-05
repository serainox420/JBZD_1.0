package com.openx.view.tp.adapters;

import android.content.Context;
import android.view.ViewGroup;
import com.openx.common.utils.logger.OXLog;
import com.openx.model.AdType;
import com.openx.view.tp.adapters.banners.AdMobBannerAdapter;
import com.openx.view.tp.adapters.banners.AdNetworkBannerAdapter;
import com.openx.view.tp.adapters.banners.FacebookBannerAdapter;
import com.openx.view.tp.adapters.banners.FallbackBannerAdapter;
import com.openx.view.tp.adapters.banners.InMobiBannerAdapter;
import com.openx.view.tp.adapters.banners.MillenialBannerAdapter;
import com.openx.view.tp.adapters.banners.MoPubBannerAdapter;
import com.openx.view.tp.adapters.interstitials.AdColonyInterstitialAdapter;
import com.openx.view.tp.adapters.interstitials.AdMobInterstitialAdapter;
import com.openx.view.tp.adapters.interstitials.AdNetworkInterstitialAdapter;
import com.openx.view.tp.adapters.interstitials.FacebookInterstitialAdapter;
import com.openx.view.tp.adapters.interstitials.FallbackInterstitialAdapter;
import com.openx.view.tp.adapters.interstitials.InMobiInterstitialAdapter;
import com.openx.view.tp.adapters.interstitials.MillenialInterstitialAdapter;
import com.openx.view.tp.adapters.interstitials.MoPubInterstitialAdapter;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class AdapterManager {
    private static final String TAG = "AdapterManager";
    private ViewGroup adContainer;
    private AdType adType;
    private AdapterBase baseAdapter;
    private Context context;
    private SDKAdEventsListener listener;

    public AdapterManager(Context context, ViewGroup viewGroup, SDKAdEventsListener sDKAdEventsListener, AdType adType) {
        this.context = context;
        this.listener = sDKAdEventsListener;
        this.adContainer = viewGroup;
        this.adType = adType;
    }

    public AdapterBase loadAdSDK(SDK sdk, ChainItem chainItem) {
        this.baseAdapter = null;
        switch (sdk) {
            case AdNetwork:
                if (this.adType == AdType.BANNER) {
                    this.baseAdapter = new AdNetworkBannerAdapter(this.context, this.adContainer, this.listener);
                    break;
                } else if (this.adType == AdType.INTERSTITIAL) {
                    this.baseAdapter = new AdNetworkInterstitialAdapter(this.context, this.listener);
                    break;
                }
                break;
            case MoPub:
                if (this.adType == AdType.BANNER) {
                    try {
                        this.baseAdapter = new MoPubBannerAdapter(this.context, this.listener);
                        break;
                    } catch (NoClassDefFoundError e) {
                        OXLog.debug(TAG, "MoPubBanner does not exist...");
                        break;
                    }
                } else if (this.adType == AdType.INTERSTITIAL) {
                    try {
                        this.baseAdapter = new MoPubInterstitialAdapter(this.context, this.listener);
                        break;
                    } catch (NoClassDefFoundError e2) {
                        OXLog.debug(TAG, "MoPubInterstitial does not exist...");
                        break;
                    }
                }
                break;
            case AdMob:
                if (this.adType == AdType.BANNER) {
                    OXLog.debug(TAG, "####### Going into AdMob " + this.adType);
                    this.baseAdapter = new AdMobBannerAdapter(this.context, this.listener);
                    break;
                } else if (this.adType == AdType.INTERSTITIAL) {
                    this.baseAdapter = new AdMobInterstitialAdapter(this.context, this.listener);
                    break;
                }
                break;
            case Millenial:
                if (this.adType == AdType.BANNER) {
                    try {
                        this.baseAdapter = new MillenialBannerAdapter(this.context, this.listener);
                        break;
                    } catch (NoClassDefFoundError e3) {
                        OXLog.debug(TAG, "MillenialBanner does not exist...");
                        break;
                    }
                } else if (this.adType == AdType.INTERSTITIAL) {
                    try {
                        this.baseAdapter = new MillenialInterstitialAdapter(this.context, this.listener);
                        break;
                    } catch (NoClassDefFoundError e4) {
                        OXLog.debug(TAG, "MillenialInterstitial does not exist...");
                        break;
                    }
                }
                break;
            case AdColony:
                if (this.adType == AdType.INTERSTITIAL) {
                    try {
                        this.baseAdapter = new AdColonyInterstitialAdapter(this.context, this.listener);
                        break;
                    } catch (NoClassDefFoundError e5) {
                        OXLog.debug(TAG, "AdColonyInterstitial does not exist...");
                        break;
                    }
                }
                break;
            case Fallback:
                if (this.adType == AdType.BANNER) {
                    this.baseAdapter = new FallbackBannerAdapter(this.context, this.listener);
                    break;
                } else if (this.adType == AdType.INTERSTITIAL) {
                    this.baseAdapter = new FallbackInterstitialAdapter(this.context, this.listener);
                    break;
                }
                break;
            case Facebook:
                if (this.adType == AdType.BANNER) {
                    this.baseAdapter = new FacebookBannerAdapter(this.context, this.listener);
                    break;
                } else if (this.adType == AdType.INTERSTITIAL) {
                    this.baseAdapter = new FacebookInterstitialAdapter(this.context, this.listener);
                    break;
                }
                break;
            case InMobi:
                if (this.adType == AdType.BANNER) {
                    this.baseAdapter = new InMobiBannerAdapter(this.context, this.listener);
                    break;
                } else if (this.adType == AdType.INTERSTITIAL) {
                    this.baseAdapter = new InMobiInterstitialAdapter(this.context, this.listener);
                    break;
                }
                break;
        }
        if (this.baseAdapter != null) {
            this.baseAdapter.loadAd(chainItem);
        }
        return this.baseAdapter;
    }
}
