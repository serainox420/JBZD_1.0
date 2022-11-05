package com.openx.sdk.coronaplugin;

import android.app.Activity;
import android.widget.FrameLayout;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.OXAdRequest;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.AdError;
import com.openx.model.adParams.AdCallParameters;
import com.openx.view.AdBanner;
import com.openx.view.AdEventsListener;
import com.openx.view.AdInterstitial;
/* loaded from: classes3.dex */
public class OXCoronaPlugin {
    private static Activity activity;
    private static OXCoronaPlugin instance;
    private AdCallParameters adCallParams;
    private OXAdRequest adRequest;
    private FrameLayout.LayoutParams bannerLayoutParams;
    private AdBanner currentAdBanner;
    private AdInterstitial currentAdInterstitial;
    private boolean currentInterstitialLoaded;
    private AdEventsListener userBannerListener;
    private AdEventsListener userInterstitialListener;
    private static int TOP_ALIGNMENT = 0;
    private static int BOTTOM_ALIGNMENT = 1;
    private AdEventsListener bannerAdEventsListener = new AdEventsListener() { // from class: com.openx.sdk.coronaplugin.OXCoronaPlugin.1
        @Override // com.openx.view.AdEventsListener
        public void onAdFailedToLoad(AdError adError) {
            if (OXCoronaPlugin.this.userBannerListener != null) {
                OXCoronaPlugin.this.userBannerListener.onAdFailedToLoad(adError);
            }
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdDidLoad() {
            if (OXCoronaPlugin.this.userBannerListener != null) {
                OXCoronaPlugin.this.userBannerListener.onAdDidLoad();
            }
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdClosed() {
            if (OXCoronaPlugin.this.userBannerListener != null) {
                OXCoronaPlugin.this.userBannerListener.onAdClosed();
            }
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdClicked() {
        }
    };
    private AdEventsListener interstitialAdEventsListener = new AdEventsListener() { // from class: com.openx.sdk.coronaplugin.OXCoronaPlugin.2
        @Override // com.openx.view.AdEventsListener
        public void onAdFailedToLoad(AdError adError) {
            if (OXCoronaPlugin.this.userInterstitialListener != null) {
                OXCoronaPlugin.this.userInterstitialListener.onAdFailedToLoad(adError);
            }
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdDidLoad() {
            OXCoronaPlugin.this.currentInterstitialLoaded = true;
            if (OXCoronaPlugin.this.userInterstitialListener != null) {
                OXCoronaPlugin.this.userInterstitialListener.onAdDidLoad();
            }
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdClosed() {
            OXCoronaPlugin.this.currentInterstitialLoaded = false;
            OXCoronaPlugin.this.currentAdInterstitial = null;
            if (OXCoronaPlugin.this.userInterstitialListener != null) {
                OXCoronaPlugin.this.userInterstitialListener.onAdClosed();
            }
        }

        @Override // com.openx.view.AdEventsListener
        public void onAdClicked() {
        }
    };

    private OXCoronaPlugin(Activity activity2) {
        activity = activity2;
    }

    public static OXCoronaPlugin instance(Activity activity2) {
        OXLog.debug("OXCoronaPlugin", "OXCoronaPlugin Constructor Called!");
        if (activity2 == null) {
            return null;
        }
        if (instance == null) {
            instance = new OXCoronaPlugin(activity2);
        }
        return instance;
    }

    public static void setDisabledSupportFlags(int i) {
        OXSettings.setDisabledSupportFlags(i);
    }

    public void createBanner(final int i, final String str, final String str2, final int i2) {
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.coronaplugin.OXCoronaPlugin.3
                @Override // java.lang.Runnable
                public void run() {
                    if (OXCoronaPlugin.this.currentAdBanner == null) {
                        OXLog.debug("OXCoronaPlugin :createBanner", "Location = " + i);
                        OXCoronaPlugin.this.currentAdBanner = new AdBanner(OXCoronaPlugin.activity, str, str2);
                        OXCoronaPlugin.this.currentAdBanner.setAdEventsListener(OXCoronaPlugin.this.bannerAdEventsListener);
                        OXCoronaPlugin.this.currentAdBanner.setAutoRefreshInterval(i2);
                        OXCoronaPlugin.this.bannerLayoutParams = new FrameLayout.LayoutParams(-1, -2);
                        if (i == OXCoronaPlugin.TOP_ALIGNMENT) {
                            OXCoronaPlugin.this.bannerLayoutParams.gravity = 49;
                        } else if (i == OXCoronaPlugin.BOTTOM_ALIGNMENT) {
                            OXCoronaPlugin.this.bannerLayoutParams.gravity = 81;
                        }
                        if (OXCoronaPlugin.this.adCallParams != null) {
                            OXCoronaPlugin.this.adRequest = new OXAdRequest();
                            OXCoronaPlugin.this.adRequest.setAdCallParams(OXCoronaPlugin.this.adCallParams);
                        }
                        OXCoronaPlugin.this.currentAdBanner.setVisibility(8);
                        OXCoronaPlugin.activity.addContentView(OXCoronaPlugin.this.currentAdBanner, OXCoronaPlugin.this.bannerLayoutParams);
                        OXCoronaPlugin.this.currentAdBanner.requestLayout();
                        OXCoronaPlugin.this.adCallParams = null;
                    }
                }
            });
        }
    }

    public void loadBanner() {
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.coronaplugin.OXCoronaPlugin.4
                @Override // java.lang.Runnable
                public void run() {
                    if (OXCoronaPlugin.this.currentAdBanner != null) {
                        OXCoronaPlugin.this.currentAdBanner.load(OXCoronaPlugin.this.adRequest);
                        OXLog.debug("OXCoronaPlugin :loadBanner", "banner has started loading");
                    }
                }
            });
        }
    }

    public void showBanner() {
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.coronaplugin.OXCoronaPlugin.5
                @Override // java.lang.Runnable
                public void run() {
                    if (OXCoronaPlugin.this.currentAdBanner != null) {
                        OXCoronaPlugin.this.currentAdBanner.setVisibility(0);
                        OXLog.debug("OXCoronaPlugin :showBanner", "Showing Banner");
                    }
                }
            });
        }
    }

    public void hideBanner() {
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.coronaplugin.OXCoronaPlugin.6
                @Override // java.lang.Runnable
                public void run() {
                    if (OXCoronaPlugin.this.currentAdBanner != null) {
                        OXLog.debug("OXCoronaPlugin :hideBanner", "Hiding banner");
                        OXCoronaPlugin.this.currentAdBanner.setVisibility(8);
                    }
                }
            });
        }
    }

    public void setAdCallParams(int i, String str, int i2, int i3, int i4, int i5, String str2) {
        this.adCallParams = new AdCallParameters();
        this.adCallParams.setUserAge(i);
        this.adCallParams.setDma(str);
        this.adCallParams.setUserEthnicity(AdCallParameters.OXMEthnicity.values()[i2]);
        this.adCallParams.setUserGender(AdCallParameters.OXMGender.values()[i3]);
        this.adCallParams.setUserAnnualIncomeInUs(i4);
        this.adCallParams.setUserMaritalStatus(AdCallParameters.OXMMaritalStatus.values()[i5]);
        this.adCallParams.setAppStoreMarketUrl(str2);
    }

    public void setBannerEventListener(AdEventsListener adEventsListener) {
        this.userBannerListener = adEventsListener;
    }

    public void setInterstitialEventListener(AdEventsListener adEventsListener) {
        this.userInterstitialListener = adEventsListener;
    }

    public void createInterstitial(final String str, final String str2, final String str3, final float f, final int i) {
        OXLog.debug("OXCoronaPlugin :createAdInterstitial", "Domain : " + str + " PUID : " + str2 + " LUID : " + str3);
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.coronaplugin.OXCoronaPlugin.7
                @Override // java.lang.Runnable
                public void run() {
                    OXCoronaPlugin.this.currentAdInterstitial = new AdInterstitial(OXCoronaPlugin.activity, str, str2, str3);
                    OXCoronaPlugin.this.currentAdInterstitial.setBackgroundOpacity(f);
                    OXCoronaPlugin.this.currentAdInterstitial.setAdEventsListener(OXCoronaPlugin.this.interstitialAdEventsListener);
                    OXCoronaPlugin.this.currentAdInterstitial.setClosePosition(AdInterstitial.ClosePosition.values()[i]);
                    OXCoronaPlugin.this.currentInterstitialLoaded = false;
                }
            });
        }
    }

    public void loadInterstitial() {
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.coronaplugin.OXCoronaPlugin.8
                @Override // java.lang.Runnable
                public void run() {
                    if (OXCoronaPlugin.this.currentAdInterstitial != null) {
                        OXLog.debug("OXCoronaPlugin :loadInterstitial", "loading interstitial");
                        if (OXCoronaPlugin.this.adCallParams != null) {
                            OXCoronaPlugin.this.adRequest = new OXAdRequest();
                            OXCoronaPlugin.this.adRequest.setAdCallParams(OXCoronaPlugin.this.adCallParams);
                        }
                        OXCoronaPlugin.this.currentAdInterstitial.load(OXCoronaPlugin.this.adRequest);
                        OXCoronaPlugin.this.adCallParams = null;
                    }
                }
            });
        }
    }

    public void showInterstitial() {
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.openx.sdk.coronaplugin.OXCoronaPlugin.9
                @Override // java.lang.Runnable
                public void run() {
                    if (OXCoronaPlugin.this.currentAdInterstitial != null && OXCoronaPlugin.this.currentInterstitialLoaded) {
                        OXLog.debug("OXCoronaPlugin :showInterstitial", "showing interstitial");
                        OXCoronaPlugin.this.currentAdInterstitial.show();
                    }
                }
            });
        }
    }

    public static void logCoronaMessage(String str) {
        OXLog.debug("OXCoronaPlugin :logCoronaMessage", str);
    }
}
