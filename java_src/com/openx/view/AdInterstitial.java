package com.openx.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.net.ConnectivityManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.madsdk.AdView;
import com.openx.common.deviceData.listeners.AdTruthListener;
import com.openx.common.deviceData.listeners.SDKInitListener;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.GenerateURLListener;
import com.openx.core.network.OXAdRequest;
import com.openx.core.sdk.OXSettings;
import com.openx.dialogs.AdInterstitialDialog;
import com.openx.errors.AdError;
import com.openx.errors.UnknownError;
import com.openx.model.Ad;
import com.openx.model.AdGroup;
import com.openx.model.adParams.AdCallParameters;
import com.openx.model.adParams.URLGenerator;
import com.openx.model.video.AdVideoDialog;
import com.openx.model.video.CustomVideoAdProperties;
import com.openx.view.tp.chain.parser.ChainItem;
import com.openx.view.video.AdVideoView;
import java.util.Hashtable;
import java.util.UUID;
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class AdInterstitial extends AdBase implements SDKInitListener {
    private static AdVideoView adVideoView;
    private WebViewBase adBaseView;
    private AutoVideoPreloadConfigs autoLoadConfig;
    private CustomVideoAdProperties customVideoDetails;
    private float dimAmount;
    private int dimColor;
    private WebViewInterstitial fallbackAdWebview;
    private boolean hasLoaded;
    private boolean hasStartedLoading;
    private boolean hasTwoAds;
    private boolean isVideo;
    private ClosePosition mClosePosition;
    private boolean playFullscreen;
    private boolean preloadAdVideos;
    private String vastTag;

    /* loaded from: classes3.dex */
    public enum ClosePosition {
        SCREEN_TOP_LEFT,
        SCREEN_TOP_RIGHT
    }

    public AdInterstitial(Context context, String str, String str2) {
        super(context, str, str2);
        this.dimColor = Color.argb(153, 0, 0, 0);
        this.dimAmount = 0.6f;
        this.preloadAdVideos = true;
        this.playFullscreen = false;
        this.hasTwoAds = false;
        this.hasStartedLoading = false;
        this.autoLoadConfig = AutoVideoPreloadConfigs.WifiOnlyAutoPreload;
        if (!OXSettings.isSDKInit) {
            OXSettings.initSDK(context, this);
        }
    }

    public AdInterstitial(Context context, String str, String str2, ChainItem chainItem) {
        super(context, str, str2, chainItem);
        this.dimColor = Color.argb(153, 0, 0, 0);
        this.dimAmount = 0.6f;
        this.preloadAdVideos = true;
        this.playFullscreen = false;
        this.hasTwoAds = false;
        this.hasStartedLoading = false;
        this.autoLoadConfig = AutoVideoPreloadConfigs.WifiOnlyAutoPreload;
        if (!OXSettings.isSDKInit) {
            OXSettings.initSDK(context, this);
        }
    }

    public AdInterstitial(Context context, String str) {
        super(context);
        this.dimColor = Color.argb(153, 0, 0, 0);
        this.dimAmount = 0.6f;
        this.preloadAdVideos = true;
        this.playFullscreen = false;
        this.hasTwoAds = false;
        this.hasStartedLoading = false;
        this.autoLoadConfig = AutoVideoPreloadConfigs.WifiOnlyAutoPreload;
        this.vastTag = str;
        this.isVideo = true;
        if (!OXSettings.isSDKInit) {
            OXSettings.initSDK(context, this);
        }
    }

    public AdInterstitial(Context context, String str, String str2, String str3) {
        super(context);
        this.dimColor = Color.argb(153, 0, 0, 0);
        this.dimAmount = 0.6f;
        this.preloadAdVideos = true;
        this.playFullscreen = false;
        this.hasTwoAds = false;
        this.hasStartedLoading = false;
        this.autoLoadConfig = AutoVideoPreloadConfigs.WifiOnlyAutoPreload;
        this.vastTag = str;
        this.isVideo = true;
        setDomain(str2);
        setAdUnitID(str3);
        if (!OXSettings.isSDKInit) {
            OXSettings.initSDK(context, this);
        }
    }

    public AdInterstitial(Context context, Ad ad) {
        super(context, (String) null, (String) null);
        this.dimColor = Color.argb(153, 0, 0, 0);
        this.dimAmount = 0.6f;
        this.preloadAdVideos = true;
        this.playFullscreen = false;
        this.hasTwoAds = false;
        this.hasStartedLoading = false;
        this.autoLoadConfig = AutoVideoPreloadConfigs.WifiOnlyAutoPreload;
        initWebViewInterstitial(ad);
    }

    private void initWebViewInterstitial(Ad ad) {
        UUID randomUUID = UUID.randomUUID();
        this.fallbackAdWebview = new WebViewInterstitial(getContext(), ad, randomUUID, true, this);
        this.fallbackAdWebview.setParentId(randomUUID);
        incrementNumRequests();
    }

    public void loadFallback() {
        if (this.fallbackAdWebview != null) {
            this.fallbackAdWebview.setAdEventsListener(getAdEventsListener());
            this.fallbackAdWebview.loadAd();
        }
    }

    public void setPlayFullscreen(boolean z) {
        this.playFullscreen = z;
    }

    public void setPreloadAdVideos(boolean z) {
        this.preloadAdVideos = z;
    }

    public void setCustomVideoStrings(CustomVideoAdProperties customVideoAdProperties) {
        this.customVideoDetails = customVideoAdProperties;
    }

    public CustomVideoAdProperties getCustomVideoStrings() {
        return this.customVideoDetails;
    }

    @Override // com.openx.view.AdBase
    public void load(OXAdRequest oXAdRequest) {
        this.adRequest = oXAdRequest;
        if (!OXSettings.isSDKInit) {
            this.hasStartedLoading = true;
        } else if (this.isVideo) {
            if (canAutoVideoPreload()) {
                initVideo(oXAdRequest);
            }
        } else {
            super.load(oXAdRequest);
        }
    }

    private void initVideo(OXAdRequest oXAdRequest) {
        this.adRequest = oXAdRequest;
        String generateVideoTagURL = generateVideoTagURL();
        if (adVideoView != null) {
            adVideoView.cancelDownload();
            adVideoView = null;
        }
        adVideoView = new AdVideoView(this.context, generateVideoTagURL, this.preloadAdVideos);
        adVideoView.setAdVideoPreloadedListener(new AdVideoView.AdVideoPreloadedListener() { // from class: com.openx.view.AdInterstitial.1
            @Override // com.openx.view.video.AdVideoView.AdVideoPreloadedListener
            public void preloaded() {
                AdInterstitial.this.preloadedVideo();
            }

            @Override // com.openx.view.video.AdVideoView.AdVideoPreloadedListener
            public void preloadedError() {
                AdInterstitial.this.isVideo = false;
                AdInterstitial.this.fallback();
            }
        });
        adVideoView.preload();
    }

    private String generateVideoTagURL() {
        AdCallParameters adCallParameters = null;
        URLGenerator uRLGenerator = new URLGenerator(new GenerateURLCallback(), this);
        if (this.adRequest != null) {
            adCallParameters = this.adRequest.adCallParams;
        }
        String uRLParams = uRLGenerator.setURLParams(adCallParameters);
        Hashtable<String, String> parameters = uRLGenerator.getAdCallParams().getParameters();
        parameters.put("mimetype", "video/mp4");
        parameters.put("dr", "true");
        return uRLGenerator.getURL(uRLParams, parameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class GenerateURLCallback implements GenerateURLListener {
        private GenerateURLCallback() {
        }

        @Override // com.openx.core.network.GenerateURLListener
        public String customURLParams(String str, AdCallParameters adCallParameters, AdTruthListener adTruthListener) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(AdInterstitial.this.vastTag);
            adTruthListener.setDomain(sb.toString());
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fallback() {
        super.init();
        super.load(this.adRequest);
    }

    @Override // com.openx.view.AdBase, com.openx.model.network.AdModelLoadedListener
    public void adModelLoadAdFail(AdError adError) {
        super.adModelLoadAdFail(adError);
        stoppedLoading();
    }

    @Override // com.openx.view.AdBase, com.openx.model.network.AdModelLoadedListener
    public void adModelLoadAdSuccess(AdGroup adGroup) {
        super.adModelLoadAdSuccess(adGroup);
        stoppedLoading();
        if (adGroup.getAds().size() > 0) {
            UUID uuid = null;
            this.hasTwoAds = false;
            if (adGroup.getAds().size() == 2) {
                uuid = UUID.randomUUID();
                this.hasTwoAds = true;
            }
            if (adGroup.getAds().get(0).getType() != null) {
                loadInterstitialAd(adGroup, uuid, 0);
                if (adGroup.getAds().size() == 2) {
                    loadInterstitialAd(adGroup, uuid, 1);
                    return;
                }
                return;
            }
            WebViewInterstitial webViewInterstitial = new WebViewInterstitial(getContext(), adGroup.getAds().get(0), uuid, true, this);
            webViewInterstitial.setAdEventsListener(getAdEventsListener());
            incrementNumRequests();
            webViewInterstitial.loadAd();
        } else if (this.adEventsListener != null) {
            this.adEventsListener.onAdFailedToLoad(new UnknownError("Empty Ad"));
        }
    }

    private void loadInterstitialAd(AdGroup adGroup, UUID uuid, int i) {
        if (adGroup.getAds().get(i).getType().contentEquals(AdView.DEFAULT_IMAGE_NAME)) {
            new WebViewInterstitial(getContext(), adGroup.getAds().get(i), uuid, true, this, true).setAdEventsListener(getAdEventsListener());
            incrementNumRequests();
            return;
        }
        new WebViewInterstitial(getContext(), adGroup.getAds().get(i), uuid, true, this).setAdEventsListener(getAdEventsListener());
        incrementNumRequests();
    }

    @Override // com.openx.view.AdBase
    @SuppressLint({"NewApi"})
    public void displayAdViewPlacement(WebViewBase webViewBase) {
        super.displayAdViewPlacement(webViewBase);
        try {
            getLayoutParams().width = webViewBase.getAdWidth();
            getLayoutParams().height = webViewBase.getAdHeight();
            invalidate();
        } catch (Exception e) {
        }
    }

    public void show() {
        AdVideoDialog adVideoDialog;
        if (this.isVideo) {
            if (this.preloadAdVideos) {
                adVideoDialog = new AdVideoDialog(this.context, getAdEventsListener(), this.vastTag, adVideoView.getVideoPath(), adVideoView.getVASTXml(), true, this.customVideoDetails, this.playFullscreen, this.adRequest);
            } else {
                adVideoDialog = new AdVideoDialog(this.context, getAdEventsListener(), this.vastTag, null, adVideoView.getVASTXml(), false, this.customVideoDetails, this.playFullscreen, this.adRequest);
            }
            adVideoDialog.show();
            return;
        }
        WebViewInterstitial webViewInterstitial = (WebViewInterstitial) this.adBaseView;
        if (webViewInterstitial != null) {
            new AdInterstitialDialog(this.context, webViewInterstitial).show();
        }
    }

    public boolean isPreloadedVideo() {
        return this.preloadAdVideos;
    }

    public boolean hasTwoAds() {
        return this.hasTwoAds;
    }

    @Override // com.openx.view.AdBase, com.openx.view.video.PreloadManager.PreloadedListener
    public void preloaded(WebViewBase webViewBase) {
        this.adPreloads++;
        this.numRequests--;
        webViewBase.setAdModel(getAdModel());
        webViewBase.setAdEventsListener(getAdEventsListener());
        ((WebViewInterstitial) webViewBase).setDimColor(this.dimColor);
        this.adBaseView = webViewBase;
        if (!hasTwoAds() || this.adPreloads >= 2) {
            stoppedLoading();
            setAdLoadedHandler();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preloadedVideo() {
        setAdLoadedHandler();
    }

    private void setAdLoadedHandler() {
        synchronized (this) {
            if (!this.hasLoaded) {
                if (this.adEventsListener != null) {
                    this.adEventsListener.onAdDidLoad();
                } else {
                    OXLog.debug("AdInterstitial", "WARNING: Did you forget to set the AdEventsListener?");
                }
            }
        }
        this.hasLoaded = true;
    }

    public ClosePosition getClosePosition() {
        return this.mClosePosition == null ? ClosePosition.SCREEN_TOP_RIGHT : this.mClosePosition;
    }

    public void setClosePosition(ClosePosition closePosition) {
        this.mClosePosition = closePosition;
    }

    public void setBackgroundOpacity(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            this.dimAmount = BitmapDescriptorFactory.HUE_RED;
        } else if (f > 1.0f) {
            this.dimAmount = 1.0f;
        } else {
            this.dimAmount = f;
        }
        this.dimColor = Color.argb((int) (255.0f * this.dimAmount), 0, 0, 0);
    }

    public void setBackgroundOpacity(int i) {
        this.dimColor = i;
    }

    public int getBackgroundOpacity() {
        return this.dimColor;
    }

    @Override // com.openx.view.AdBase, com.openx.common.deviceData.listeners.SDKInitListener
    public void onSDKInit() {
        if (this.hasStartedLoading) {
            load(this.adRequest);
            this.hasStartedLoading = false;
        }
    }

    public void setAutoVideoPreloadConfigs(AutoVideoPreloadConfigs autoVideoPreloadConfigs) {
        this.autoLoadConfig = autoVideoPreloadConfigs;
    }

    public boolean canAutoVideoPreload() {
        if (this.autoLoadConfig != null) {
            switch (this.autoLoadConfig) {
                case NoAutoPreload:
                    return false;
                case AlwaysAutoPreload:
                    return true;
                case WifiOnlyAutoPreload:
                    return ((ConnectivityManager) this.context.getSystemService("connectivity")).getNetworkInfo(1).isConnected();
                default:
                    return false;
            }
        }
        return true;
    }
}
