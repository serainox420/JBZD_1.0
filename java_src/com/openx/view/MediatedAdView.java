package com.openx.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.openx.common.deviceData.listeners.AdTruthListener;
import com.openx.common.deviceData.listeners.NetworkListener;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.GenerateURLListener;
import com.openx.core.network.OXAdRequest;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.AdError;
import com.openx.errors.DeviceIsOffline;
import com.openx.errors.PermissionDeniedForApplication;
import com.openx.errors.UnknownError;
import com.openx.model.AdType;
import com.openx.model.adParams.AdCallParameters;
import com.openx.model.adParams.URLGenerator;
import com.openx.view.tp.chain.ChainManager;
import com.openx.view.tp.chain.network.ChainLoadWrapper;
import com.openx.view.tp.chain.network.SDKChainLoadListener;
import com.openx.view.tp.chain.parser.ChainItem;
import com.openx.view.tp.chain.parser.ChainResponse;
/* loaded from: classes3.dex */
public class MediatedAdView extends AdBase {
    private final String TAG;
    private AdType adType;
    protected SDKChainLoadListener chainListener;
    private ChainManager chainManager;
    private String tpSDK;
    private URLGenerator urlGenerator;

    public MediatedAdView(Context context, AdType adType, String str, String str2) {
        super(context, str, str2);
        this.TAG = "MediatedAdView";
        this.tpSDK = OXSettings.getTpJarList();
        this.adType = adType;
    }

    public MediatedAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "MediatedAdView";
        this.tpSDK = OXSettings.getTpJarList();
        reflectAttrs(attributeSet);
    }

    public MediatedAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = "MediatedAdView";
        this.tpSDK = OXSettings.getTpJarList();
        reflectAttrs(attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.openx.view.AdBase
    public void reflectAttrs(AttributeSet attributeSet) {
        super.reflectAttrs(attributeSet);
        if (attributeSet != null) {
            int attributeCount = attributeSet.getAttributeCount();
            for (int i = 0; i < attributeCount; i++) {
                if (this.adType == null) {
                    String attributeValue = super.getAttributeValue(attributeSet, i, "adType");
                    if (!TextUtils.isEmpty(attributeValue)) {
                        this.adType = AdType.valueOf(attributeValue);
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isPaused = false;
    }

    public void destroy() {
        OXLog.debug("MediatedAdView", "adView: destroy();: cleanUp: called : yay!");
        if (this.chainManager != null) {
            this.chainManager.cleanUp();
        }
        stoppedLoading();
    }

    public void pause() {
        OXLog.debug("MediatedAdView", "adView:  pause();: cleanUp: not called");
        if (this.chainManager != null) {
            this.chainManager.stopTimeout();
        }
        stoppedLoading();
    }

    @Override // com.openx.view.AdBase, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z) {
            if (this.adType == AdType.INTERSTITIAL) {
                if (this.chainManager != null) {
                    this.chainManager.cleanUp();
                }
                stoppedLoading();
            } else if (this.chainManager != null) {
                this.chainManager.destroyAdViews();
            }
        } else if (this.adType == AdType.INTERSTITIAL) {
            stoppedLoading();
        }
    }

    public void setAdType(AdType adType) {
        this.adType = adType;
    }

    public void setTestDevices(String... strArr) {
        ChainManager.testDeviceIds = strArr;
    }

    @Override // com.openx.view.AdBase
    protected void loadView() {
        if (this.chainManager == null) {
            this.chainManager = new ChainManager(getContext(), this, this.adEventsListener, this.adType);
        }
        loadModelSendSDKChainRequest(new sdkChainCallBack());
    }

    private void loadModelSendSDKChainRequest(SDKChainLoadListener sDKChainLoadListener) {
        this.chainListener = sDKChainLoadListener;
        this.adModelRequests++;
        sendChainRequest(this.domain, this.auid);
    }

    private void sendChainRequest(String str, String str2) {
        NetworkListener networkManager = OXMManagersResolver.getInstance().getNetworkManager();
        if (OXMManagersResolver.getInstance().getDeviceManager().isPermissionGranted("android.permission.INTERNET")) {
            sendChainRequest(str, str2, networkManager);
            return;
        }
        OXLog.debug("MediatedAdView", "chainURL is: PermissionDeniedForApplication");
        PermissionDeniedForApplication permissionDeniedForApplication = new PermissionDeniedForApplication("android.permission.INTERNET");
        Utils.log(this, permissionDeniedForApplication.getMessage());
        if (this.chainListener != null) {
            this.chainListener.onSDKChainLoadFail(permissionDeniedForApplication);
        }
    }

    private void sendChainRequest(String str, String str2, NetworkListener networkListener) {
        AdCallParameters adCallParameters = null;
        if (networkListener.getConnectionType() != AdCallParameters.OXMConnectionType.OFFLINE) {
            OXLog.debug("MediatedAdView", "AdModel :  generating_sdk_url");
            this.urlGenerator = new URLGenerator(new GenerateURLCallback(), this.chainListener);
            URLGenerator uRLGenerator = this.urlGenerator;
            if (this.adRequest != null) {
                adCallParameters = this.adRequest.adCallParams;
            }
            String url = this.urlGenerator.getURL(uRLGenerator.setURLParams(adCallParameters), this.urlGenerator.getAdCallParams().getParameters());
            OXLog.debug("MediatedAdView", "chainURL is: " + url);
            if (url != null && !url.equals("")) {
                Utils.log(this, String.format(Utils.getLogMessage("sdk url_generated"), url));
                new ChainLoadWrapper(url, this.chainListener).sendChainLoadRequest();
                return;
            }
            Utils.log(this, Utils.getLogMessage("sdk url_wasnot_generated"));
            this.chainListener.onSDKChainLoadFail(new UnknownError("URL was not created"));
            return;
        }
        OXLog.debug("MediatedAdView", "chainURL is: DeviceIsOffline");
        DeviceIsOffline deviceIsOffline = new DeviceIsOffline();
        Utils.log(this, deviceIsOffline.getMessage());
        if (this.chainListener != null) {
            this.chainListener.onSDKChainLoadFail(deviceIsOffline);
        }
    }

    /* loaded from: classes3.dex */
    private class sdkChainCallBack implements SDKChainLoadListener {
        private sdkChainCallBack() {
        }

        @Override // com.openx.view.tp.chain.network.SDKChainLoadListener
        public void onSDKChainLoadSuccess(ChainResponse chainResponse) {
            MediatedAdView.this.chainManager.setChainResponse(chainResponse);
            MediatedAdView.this.chainManager.loadThirdPartyAd((ChainItem) chainResponse.getAds().get(0));
            if (MediatedAdView.this.adType == AdType.INTERSTITIAL) {
                MediatedAdView.this.stoppedLoading();
            }
        }

        @Override // com.openx.view.tp.chain.network.SDKChainLoadListener
        public void onSDKChainLoadFail(AdError adError) {
            OXLog.debug("MediatedAdView", "error in getting sdk chain");
            if (MediatedAdView.this.getAdEventsListener() != null) {
                MediatedAdView.this.getAdEventsListener().onAdFailedToLoad(adError);
            }
        }

        @Override // com.openx.view.tp.chain.network.SDKChainLoadListener
        public void onSDKChainLoadNonCriticalError(AdError adError) {
            OXLog.debug("MediatedAdView", "error in getting sdk chain");
        }
    }

    public void show() {
        if (this.chainManager != null) {
            this.chainManager.show();
        } else {
            OXLog.warn("MediatedAdView", "You must call load first and receive a callback to indicate that you can actually show. ");
        }
    }

    @Override // com.openx.view.AdBase
    public void load(OXAdRequest oXAdRequest) {
        if (this.adType == AdType.INTERSTITIAL) {
            scheduleTimer(0);
        } else if (this.adType == AdType.BANNER) {
            super.load(oXAdRequest);
        }
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
            sb.append(adCallParameters.isSSL() ? "https://" : "http://");
            if (MediatedAdView.this.domain == null || MediatedAdView.this.auid == null || MediatedAdView.this.domain.equals("")) {
                return null;
            }
            sb.append(MediatedAdView.this.domain);
            adTruthListener.setDomain(sb.toString());
            sb.append("/ma/1.0/acj?");
            sb.append("auid=" + MediatedAdView.this.auid);
            return sb.toString();
        }
    }
}
