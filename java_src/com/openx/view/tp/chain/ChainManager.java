package com.openx.view.tp.chain;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.madsdk.AdView;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.GetNetworkTask;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.AdError;
import com.openx.model.AdType;
import com.openx.view.AdEventsListener;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.adapters.AdapterManager;
import com.openx.view.tp.chain.parser.ChainItem;
import com.openx.view.tp.chain.parser.ChainResponse;
/* loaded from: classes3.dex */
public class ChainManager {
    private static final String TAG = "ChainManager";
    public static String[] testDeviceIds;
    private ViewGroup adContainer;
    private AdEventsListener adEventsListener;
    private AdType adType;
    private AdapterManager adapterManager;
    private ChainResponse chainResponse;
    private boolean clickTracked;
    private Context context;
    private AdapterBase currentAdapter;
    private ChainItem currentChainItem;
    private AdapterBase lastAdapter;
    private SDK sdk;
    public SDKAdEventsListener sdkAdEventsListener;
    private boolean stopped;
    private Handler timeoutHandler;
    private Runnable timeoutRunnable;
    private final String RTYPE_IMPRESSION = "ri";
    private final String RTYPE_CLICK = "rc";
    private final String RTYPE_REQUEST = "rr";
    private final String RTYPE_DEFAULT = "rdf";
    public int chainIndex = 0;
    private final long MAX_TIMEOUT = 60000;
    private final long MIN_TIMEOUT = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    private long timeout = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    private long lastLoadAttempt = 0;

    public ChainManager(Context context, ViewGroup viewGroup, AdEventsListener adEventsListener, AdType adType) {
        this.context = context;
        this.adContainer = viewGroup;
        this.adEventsListener = adEventsListener;
        this.adType = adType;
        init();
    }

    public void setChainResponse(ChainResponse chainResponse) {
        this.chainResponse = chainResponse;
        this.chainIndex = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChainResponse getChainResponse() {
        return this.chainResponse;
    }

    private void init() {
        this.timeoutRunnable = new Runnable() { // from class: com.openx.view.tp.chain.ChainManager.1
            @Override // java.lang.Runnable
            public void run() {
                if (ChainManager.this.stopped || ChainManager.this.lastLoadAttempt == 0 || System.currentTimeMillis() - ChainManager.this.lastLoadAttempt < ChainManager.this.timeout || ChainManager.this.chainIndex >= ChainManager.this.getChainResponse().getAds().size()) {
                    if (!ChainManager.this.stopped && ChainManager.this.lastLoadAttempt > 0) {
                        OXLog.debug(ChainManager.TAG, "no time out yet...check in a second...");
                        ChainManager.this.timeoutHandler.postDelayed(this, 1000L);
                        return;
                    }
                    return;
                }
                OXLog.debug(ChainManager.TAG, "send rdf: timeout occurred : in init(): Timeout was " + ChainManager.this.timeout + " Trying to load item(chainIndex): " + ChainManager.this.chainIndex + "from the chain");
                ChainManager.this.record("rdf");
                ChainManager.this.currentAdapter.cleanUp();
                ChainManager.this.loadThirdPartyAd((ChainItem) ChainManager.this.getChainResponse().getAds().get(ChainManager.this.chainIndex));
            }
        };
        setSDKAdEventsListener();
        this.timeoutHandler = new Handler();
        this.adapterManager = new AdapterManager(this.context, this.adContainer, this.sdkAdEventsListener, this.adType);
    }

    private void setSDKAdEventsListener() {
        this.sdkAdEventsListener = new SDKAdEventsListener() { // from class: com.openx.view.tp.chain.ChainManager.2
            @Override // com.openx.view.tp.chain.SDKAdEventsListener
            public void onAdDidLoad(SDK sdk, Object obj) {
                handleAdLoad(sdk, obj);
            }

            private void handleAdLoad(SDK sdk, Object obj) {
                ChainManager.this.clickTracked = false;
                ChainManager.this.lastLoadAttempt = 0L;
                OXLog.debug(ChainManager.TAG, "SDK AdDidLoad: " + sdk.name());
                if (ChainManager.this.adType == AdType.BANNER) {
                    ChainManager.this.stopped = true;
                    ChainManager.this.stopTimeout();
                    ChainManager.this.showBanner(obj);
                } else if (ChainManager.this.adType == AdType.INTERSTITIAL) {
                    ChainManager.this.stopped = true;
                    ChainManager.this.stopTimeout();
                }
                OXLog.debug(ChainManager.TAG, "child count after: " + ChainManager.this.adContainer.getChildCount());
                if (ChainManager.this.adEventsListener != null) {
                    ChainManager.this.adEventsListener.onAdDidLoad();
                }
                ChainManager.this.chainIndex = 0;
            }

            @Override // com.openx.view.tp.chain.SDKAdEventsListener
            public void onAdFailedToLoad(SDK sdk, AdError adError) {
                handleAdLoadFail(adError);
            }

            private void handleAdLoadFail(AdError adError) {
                OXLog.debug(ChainManager.TAG, "send rdf: ad load failure : " + adError.getMessage());
                ChainManager.this.stopped = true;
                ChainManager.this.stopTimeout();
                ChainManager.this.record("rdf");
                if (ChainManager.this.chainIndex >= ChainManager.this.getChainResponse().getAds().size()) {
                    if (ChainManager.this.adEventsListener != null) {
                        ChainManager.this.adEventsListener.onAdFailedToLoad(adError);
                    }
                    ChainManager.this.chainIndex = 0;
                    return;
                }
                ChainManager.this.loadThirdPartyAd((ChainItem) ChainManager.this.getChainResponse().getAds().get(ChainManager.this.chainIndex));
            }

            @Override // com.openx.view.tp.chain.SDKAdEventsListener
            public void onAdClosed(SDK sdk) {
                OXLog.debug(ChainManager.TAG, " closing the add - so activity can disable the button");
                if (ChainManager.this.adEventsListener != null) {
                    ChainManager.this.adEventsListener.onAdClosed();
                }
            }

            @Override // com.openx.view.tp.chain.SDKAdEventsListener
            public void onAdClicked(SDK sdk) {
                if (!ChainManager.this.clickTracked) {
                    if (ChainManager.this.adEventsListener != null) {
                        ChainManager.this.adEventsListener.onAdClicked();
                    }
                    ChainManager.this.record("rc");
                    ChainManager.this.clickTracked = true;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showBanner(Object obj) {
        if (((View) obj).getParent() == null) {
            this.adContainer.addView((View) obj, 0);
        } else {
            this.adContainer.removeAllViews();
            this.adContainer.addView((View) obj, 0);
        }
        record("ri");
        if (this.adContainer.getChildCount() >= 2) {
            destroyAdViews();
        }
        if (this.context != null) {
            ((Activity) this.context).getWindow().getDecorView().findViewById(16908290).postInvalidate();
        }
    }

    public void record(String str) {
        GetNetworkTask getNetworkTask = new GetNetworkTask(null);
        BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
        getUrlParams.url = this.currentChainItem.transactionUrl.replace("{rtype}", str);
        getUrlParams.userAgent = OXSettings.userAgent;
        getNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
    }

    public void destroyAdViews() {
        for (int i = 1; i < this.adContainer.getChildCount(); i++) {
            destroyTPViews(this.adContainer.getChildAt(i));
        }
        OXLog.debug(TAG, "COUNT BEFORE: " + this.adContainer.getChildCount());
        if (this.adContainer.getChildCount() > 1) {
            this.adContainer.removeViews(1, this.adContainer.getChildCount() - 1);
        }
        OXLog.debug(TAG, "COUNT AFTER: " + this.adContainer.getChildCount());
    }

    private void destroyTPViews(View view) {
        if (this.lastAdapter != null) {
            this.lastAdapter.cleanUp();
        }
    }

    public void loadThirdPartyAd(ChainItem chainItem) {
        this.currentChainItem = chainItem;
        if (chainItem.sdkParams != null) {
            this.sdk = getSDK(chainItem.sdkParams.networkUid);
        } else if ((chainItem.type.equals(com.mopub.common.AdType.HTML) || chainItem.type.equals(AdView.DEFAULT_IMAGE_NAME)) && chainItem.getHTML() != null) {
            this.sdk = SDK.Fallback;
        } else if (chainItem.type.equals("apihtml") && chainItem.mediationUrl != null) {
            this.sdk = SDK.AdNetwork;
        }
        OXLog.debug(TAG, "loadThirdPartyAd....INDEX is : " + this.chainIndex + " and the sdk is " + this.sdk);
        this.chainIndex++;
        record("rr");
        this.lastAdapter = this.currentAdapter;
        this.currentAdapter = this.adapterManager.loadAdSDK(this.sdk, chainItem);
        if (this.currentAdapter != null) {
            if (this.sdk == SDK.AdColony) {
                this.timeout = 60000L;
            } else {
                this.timeout = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
            }
            checkForTimeouts();
            return;
        }
        OXLog.debug("SDK_NOT_EXIST", this.sdk.name() + "send rdf: not exists...");
        record("rdf");
        if (getChainResponse().getAds() != null && getChainResponse().getAds().size() - 1 >= this.chainIndex && ((ChainItem) getChainResponse().getAds().get(this.chainIndex)) != null) {
            loadThirdPartyAd((ChainItem) getChainResponse().getAds().get(this.chainIndex));
        }
    }

    private SDK getSDK(String str) {
        if (str != null) {
            if (str.toLowerCase().equals("mopub")) {
                return SDK.MoPub;
            }
            if (str.toLowerCase().equals("admob")) {
                return SDK.AdMob;
            }
            if (str.toLowerCase().equals("millennialmedia")) {
                return SDK.Millenial;
            }
            if (str.toLowerCase().equals("adcolony")) {
                return SDK.AdColony;
            }
            if (str.toLowerCase().equals("facebook")) {
                return SDK.Facebook;
            }
            if (str.toLowerCase().equals("inmobi")) {
                return SDK.InMobi;
            }
        }
        return null;
    }

    public void show() {
        record("ri");
        this.currentAdapter.show();
    }

    public void cleanUp() {
        if (this.currentAdapter != null) {
            this.currentAdapter.cleanUp();
        }
        this.clickTracked = false;
        stopTimeout();
    }

    public void stopTimeout() {
        if (this.timeoutHandler != null && this.timeoutRunnable != null) {
            this.timeoutHandler.removeCallbacks(this.timeoutRunnable);
            this.lastLoadAttempt = -1L;
            OXLog.debug(TAG, "removing callbacks 1111 : cleanup");
        }
    }

    private void checkForTimeouts() {
        this.stopped = false;
        this.lastLoadAttempt = System.currentTimeMillis();
        if (this.timeoutHandler != null && this.timeoutRunnable != null) {
            this.timeoutHandler.removeCallbacks(this.timeoutRunnable);
            OXLog.debug(TAG, "removing callbacks: checking for timeout ");
        }
        this.timeoutHandler.postDelayed(this.timeoutRunnable, 1000L);
    }
}
