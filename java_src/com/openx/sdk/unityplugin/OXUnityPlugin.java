package com.openx.sdk.unityplugin;

import android.app.Activity;
import android.widget.FrameLayout;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.OXAdRequest;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.AdError;
import com.openx.model.adParams.AdCallParameters;
import com.openx.model.video.CustomVideoAdProperties;
import com.openx.view.AdBanner;
import com.openx.view.AdEventsListener;
import com.openx.view.AdInterstitial;
import com.unity3d.player.UnityPlayer;
/* loaded from: classes3.dex */
public class OXUnityPlugin {
    private static final String TAG = "OXUnityPlugin";
    private static Activity activity;
    private static OXUnityPlugin instance;
    private static String unityCallbackName;
    private AdCallParameters adCallParams;
    private OXAdRequest adRequest;
    private FrameLayout.LayoutParams bannerLayoutParams;
    private AdBanner currentAdBanner;
    private AdInterstitial currentAdInterstitial;
    private boolean currentInterstitialLoaded;
    private static int TOP_ALIGNMENT = 0;
    private static int BOTTOM_ALIGNMENT = 1;
    private AdEventsListener bannerAdEventsListener = new AdEventsListener() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.1
        @Override // com.openx.view.AdEventsListener
        public void onAdFailedToLoad(AdError adError) {
            OXLog.debug(OXUnityPlugin.TAG, "Banner: unity onAdFailedToLoad() : ");
            UnityPlayer.UnitySendMessage(OXUnityPlugin.unityCallbackName, "adFailedToLoad", adError.getLocalizedMessage());
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdDidLoad() {
            OXLog.debug(OXUnityPlugin.TAG, "Banner: unity onAdDidLoad() : yay!");
            UnityPlayer.UnitySendMessage(OXUnityPlugin.unityCallbackName, "adDidLoad", "Did Load");
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdClosed() {
            OXLog.debug(OXUnityPlugin.TAG, "Banner: unity onAdClosed() : ");
            UnityPlayer.UnitySendMessage(OXUnityPlugin.unityCallbackName, "adClosed", "Did Close");
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdClicked() {
            OXLog.debug(OXUnityPlugin.TAG, "Banner: unity onAdClicked() : ");
            UnityPlayer.UnitySendMessage(OXUnityPlugin.unityCallbackName, "adClicked", "Did click");
        }
    };
    private AdEventsListener interstitialAdEventsListener = new AdEventsListener() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.2
        @Override // com.openx.view.AdEventsListener
        public void onAdFailedToLoad(AdError adError) {
            OXLog.debug(OXUnityPlugin.TAG, "Interstitial: unity onAdFailedToLoad() : ");
            UnityPlayer.UnitySendMessage(OXUnityPlugin.unityCallbackName, "adFailedToLoad", adError.getLocalizedMessage());
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdDidLoad() {
            OXLog.debug(OXUnityPlugin.TAG, "Interstitial: unity onAdDidLoad() : yay!");
            OXUnityPlugin.this.currentInterstitialLoaded = true;
            UnityPlayer.UnitySendMessage(OXUnityPlugin.unityCallbackName, "adDidLoad", "Did Load");
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdClosed() {
            OXLog.debug(OXUnityPlugin.TAG, "Interstitial: unity onAdClosed() : ");
            OXUnityPlugin.this.currentInterstitialLoaded = false;
            OXUnityPlugin.this.currentAdInterstitial = null;
            UnityPlayer.UnitySendMessage(OXUnityPlugin.unityCallbackName, "adClosed", "Did CLose");
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdClicked() {
            OXLog.debug(OXUnityPlugin.TAG, "Interstitial: unity onAdClicked() : ");
            UnityPlayer.UnitySendMessage(OXUnityPlugin.unityCallbackName, "adClicked", "Did click");
        }
    };

    public static OXUnityPlugin instance() {
        OXLog.debug(TAG, "OXUnityPlugin Constructor Called!");
        if (instance == null) {
            instance = new OXUnityPlugin();
        }
        getActivity();
        return instance;
    }

    public static void setDisabledSupportFlags(int i) {
        OXSettings.setDisabledSupportFlags(i);
    }

    public void createBanner(final int i, final String str, final String str2, final int i2) {
        activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.3
            @Override // java.lang.Runnable
            public void run() {
                if (OXUnityPlugin.this.currentAdBanner == null) {
                    OXLog.debug("OXUnityPlugin :createBanner", "Location = " + i);
                    OXUnityPlugin.this.currentAdBanner = new AdBanner(OXUnityPlugin.activity, str, str2);
                    OXUnityPlugin.this.currentAdBanner.setAdEventsListener(OXUnityPlugin.this.bannerAdEventsListener);
                    OXUnityPlugin.this.currentAdBanner.setAutoRefreshInterval(i2);
                    OXUnityPlugin.this.bannerLayoutParams = new FrameLayout.LayoutParams(-1, -2);
                    if (i == OXUnityPlugin.TOP_ALIGNMENT) {
                        OXUnityPlugin.this.bannerLayoutParams.gravity = 49;
                    } else if (i == OXUnityPlugin.BOTTOM_ALIGNMENT) {
                        OXUnityPlugin.this.bannerLayoutParams.gravity = 81;
                    }
                    if (OXUnityPlugin.this.adCallParams != null) {
                        OXUnityPlugin.this.adRequest = new OXAdRequest();
                        OXUnityPlugin.this.adRequest.setAdCallParams(OXUnityPlugin.this.adCallParams);
                    }
                    OXUnityPlugin.this.currentAdBanner.setVisibility(8);
                    OXUnityPlugin.activity.addContentView(OXUnityPlugin.this.currentAdBanner, OXUnityPlugin.this.bannerLayoutParams);
                    OXUnityPlugin.this.currentAdBanner.requestLayout();
                    OXUnityPlugin.this.adCallParams = null;
                }
            }
        });
    }

    public void loadBanner() {
        activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.4
            @Override // java.lang.Runnable
            public void run() {
                if (OXUnityPlugin.this.currentAdBanner != null) {
                    OXUnityPlugin.this.currentAdBanner.load(OXUnityPlugin.this.adRequest);
                    OXLog.debug("OXUnityPlugin :loadBanner", "banner has started loading");
                }
            }
        });
    }

    public void showBanner() {
        activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.5
            @Override // java.lang.Runnable
            public void run() {
                if (OXUnityPlugin.this.currentAdBanner != null) {
                    OXUnityPlugin.this.currentAdBanner.setVisibility(0);
                    OXLog.debug("OXUnityPlugin :showBanner", "Showing Banner");
                }
            }
        });
    }

    public void hideBanner() {
        activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.6
            @Override // java.lang.Runnable
            public void run() {
                if (OXUnityPlugin.this.currentAdBanner != null) {
                    OXLog.debug("OXUnityPlugin :hideBanner", "Hiding banner");
                    OXUnityPlugin.this.currentAdBanner.setVisibility(8);
                }
            }
        });
    }

    public void setAdCallParams(int i, String str, int i2, int i3, int i4, int i5, String str2) {
        if (this.adCallParams == null) {
            this.adCallParams = new AdCallParameters();
        }
        this.adCallParams.setUserAge(i);
        this.adCallParams.setDma(str);
        this.adCallParams.setUserEthnicity(AdCallParameters.OXMEthnicity.values()[i2]);
        this.adCallParams.setUserGender(AdCallParameters.OXMGender.values()[i3]);
        this.adCallParams.setUserAnnualIncomeInUs(i4);
        this.adCallParams.setUserMaritalStatus(AdCallParameters.OXMMaritalStatus.values()[i5]);
        this.adCallParams.setAppStoreMarketUrl(str2);
    }

    public void setCustomParameter(String str, String str2) {
        if (this.adCallParams == null) {
            this.adCallParams = new AdCallParameters();
        }
        this.adCallParams.setCustomParameter(str, str2);
    }

    public void createVideoInterstitial(final String str, final boolean z, final boolean z2, final String str2) {
        OXLog.debug("OXUnityPlugin :createVideoInterstitial", "Banner: VAST Tag : " + str);
        activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.7
            @Override // java.lang.Runnable
            public void run() {
                OXUnityPlugin.this.currentAdInterstitial = new AdInterstitial(OXUnityPlugin.activity, str);
                OXUnityPlugin.this.currentAdInterstitial.setAdEventsListener(OXUnityPlugin.this.interstitialAdEventsListener);
                OXUnityPlugin.this.currentInterstitialLoaded = false;
                OXUnityPlugin.this.currentAdInterstitial.setPreloadAdVideos(z);
                OXUnityPlugin.this.currentAdInterstitial.setPlayFullscreen(z2);
                if (str2 != null && str2 != "") {
                    CustomVideoAdProperties customVideoAdProperties = new CustomVideoAdProperties();
                    customVideoAdProperties.setSkipOffset(str2);
                    OXUnityPlugin.this.currentAdInterstitial.setCustomVideoStrings(customVideoAdProperties);
                }
            }
        });
    }

    public void createVideoInterstitial(final String str, final boolean z, final boolean z2, final String str2, final String str3, final String str4) {
        OXLog.debug("OXUnityPlugin :createVideoInterstitial", "VAST Tag : " + str);
        activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.8
            @Override // java.lang.Runnable
            public void run() {
                OXUnityPlugin.this.currentAdInterstitial = new AdInterstitial(OXUnityPlugin.activity, str, str3, str4);
                OXUnityPlugin.this.currentAdInterstitial.setAdEventsListener(OXUnityPlugin.this.interstitialAdEventsListener);
                OXUnityPlugin.this.currentInterstitialLoaded = false;
                OXUnityPlugin.this.currentAdInterstitial.setPreloadAdVideos(z);
                OXUnityPlugin.this.currentAdInterstitial.setPlayFullscreen(z2);
                if (str2 != null && str2 != "") {
                    CustomVideoAdProperties customVideoAdProperties = new CustomVideoAdProperties();
                    customVideoAdProperties.setSkipOffset(str2);
                    OXUnityPlugin.this.currentAdInterstitial.setCustomVideoStrings(customVideoAdProperties);
                }
            }
        });
    }

    public void createInterstitial(final String str, final String str2, final float f, final int i) {
        OXLog.debug("OXUnityPlugin :createAdInterstitial", "Domain : " + str + " AUID : " + str2 + " Close Position : " + i);
        activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.9
            @Override // java.lang.Runnable
            public void run() {
                OXUnityPlugin.this.currentAdInterstitial = new AdInterstitial(OXUnityPlugin.activity, str, str2);
                OXUnityPlugin.this.currentAdInterstitial.setBackgroundOpacity(f);
                OXUnityPlugin.this.currentAdInterstitial.setAdEventsListener(OXUnityPlugin.this.interstitialAdEventsListener);
                OXUnityPlugin.this.currentAdInterstitial.setClosePosition(AdInterstitial.ClosePosition.values()[i]);
                OXUnityPlugin.this.currentInterstitialLoaded = false;
            }
        });
    }

    public void loadInterstitial() {
        activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.10
            @Override // java.lang.Runnable
            public void run() {
                if (OXUnityPlugin.this.currentAdInterstitial != null) {
                    OXLog.debug("OXUnityPlugin :loadInterstitial", "loading interstitial");
                    if (OXUnityPlugin.this.adCallParams != null) {
                        OXUnityPlugin.this.adRequest = new OXAdRequest();
                        OXUnityPlugin.this.adRequest.setAdCallParams(OXUnityPlugin.this.adCallParams);
                    }
                    OXUnityPlugin.this.currentAdInterstitial.load(OXUnityPlugin.this.adRequest);
                    OXUnityPlugin.this.adCallParams = null;
                }
            }
        });
    }

    public void showInterstitial() {
        activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.unityplugin.OXUnityPlugin.11
            @Override // java.lang.Runnable
            public void run() {
                if (OXUnityPlugin.this.currentAdInterstitial != null && OXUnityPlugin.this.currentInterstitialLoaded) {
                    OXLog.debug("OXUnityPlugin :showInterstitial", "showing interstitial");
                    OXUnityPlugin.this.currentAdInterstitial.show();
                }
            }
        });
    }

    public static void logUnityMessage(String str) {
        OXLog.debug("OXUnityPlugin :logUnityMessage", str);
    }

    public static void SetCallbackHandlerName(String str) {
        OXLog.error("OXUnityPlugin :SetCallbackHandlerName", "name = " + str);
        unityCallbackName = str;
    }

    private static Activity getActivity() {
        if (activity == null) {
            activity = UnityPlayer.currentActivity;
        }
        return activity;
    }
}
