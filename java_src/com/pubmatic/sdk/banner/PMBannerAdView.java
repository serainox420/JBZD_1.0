package com.pubmatic.sdk.banner;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.wallet.WalletConstants;
import com.google.firebase.a.a;
import com.madsdk.AdView;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.pubmatic.sdk.banner.ImageRequest;
import com.pubmatic.sdk.banner.mraid.Bridge;
import com.pubmatic.sdk.banner.mraid.Consts;
import com.pubmatic.sdk.banner.mraid.ExpandProperties;
import com.pubmatic.sdk.banner.mraid.OrientationProperties;
import com.pubmatic.sdk.banner.mraid.ResizeProperties;
import com.pubmatic.sdk.banner.mraid.WebView;
import com.pubmatic.sdk.banner.ui.GifDecoder;
import com.pubmatic.sdk.banner.ui.ImageView;
import com.pubmatic.sdk.common.AdRequest;
import com.pubmatic.sdk.common.AdResponse;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.LocationDetector;
import com.pubmatic.sdk.common.PMLogger;
import com.pubmatic.sdk.common.RRFormatter;
import com.pubmatic.sdk.common.network.AdTracking;
import com.pubmatic.sdk.common.network.HttpHandler;
import com.pubmatic.sdk.common.network.HttpRequest;
import com.pubmatic.sdk.common.network.HttpResponse;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import com.pubmatic.sdk.common.ui.BrowserDialog;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.lang.reflect.InvocationTargetException;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class PMBannerAdView extends ViewGroup {
    private static final String TAG = PMBannerAdView.class.getSimpleName();
    public static boolean isScreenOn = true;
    private final int CloseAreaSizeDp;
    private final int OrientationReset;
    private BannerAdViewDelegate.ActivityListener activityListener;
    private Map<String, String> adRequestDefaultParameters;
    private ScheduledFuture<?> adUpdateIntervalFuture;
    private String androidAid;
    private BrowserDialog browserDialog;
    private Drawable closeButtonCustomDrawable;
    private int closeButtonDelay;
    private ScheduledFuture<?> closeButtonFuture;
    private boolean deferredUpdate;
    private BannerAdViewDelegate.FeatureSupportHandler featureSupportHandler;
    private IntentFilter filter;
    private ImageView imageView;
    private BannerAdViewDelegate.InternalBrowserListener internalBrowserListener;
    private ScheduledFuture<?> interstitialDelayFuture;
    private ExpandDialog interstitialDialog;
    private boolean invokeTracking;
    private boolean isAndroidAidEnabled;
    private boolean isAndroidIdEnabled;
    private Location location;
    private LocationListener locationListener;
    private LocationManager locationManager;
    private Observer locationObserver;
    private BannerAdController mAdController;
    private BannerAdDescriptor mAdDescriptor;
    protected AdRequest mAdRequest;
    private AttributeSet mAttributes;
    private CommonConstants.CHANNEL mChannel;
    private boolean mClickTrackerSent;
    private boolean mImpressionTrackerSent;
    protected RRFormatter mRRFormatter;
    private BroadcastReceiver mReceiver;
    private boolean mRetrieveLocationInfo;
    private Bridge mraidBridge;
    private Bridge.Handler mraidBridgeHandler;
    private boolean mraidBridgeInit;
    private ExpandDialog mraidExpandDialog;
    private int mraidOriginalOrientation;
    private View mraidResizeCloseArea;
    private RelativeLayout mraidResizeLayout;
    private Bridge mraidTwoPartBridge;
    private boolean mraidTwoPartBridgeInit;
    private boolean mraidTwoPartExpand;
    private WebView mraidTwoPartWebView;
    private HttpHandler.HttpRequestListener networkListener;
    private Consts.PlacementType placementType;
    private long remainingDelay;
    private BannerAdViewDelegate.RequestListener requestListener;
    private BannerAdViewDelegate.RichMediaListener richMediaListener;
    private boolean showCloseButton;
    private TextView textView;
    private int updateInterval;
    private boolean updateOnLayout;
    private boolean useInternalBrowser;
    private String userAgent;
    private int viewVisibility;
    private WebView webView;
    private WebView.Handler webViewHandler;

    /* loaded from: classes3.dex */
    public interface BannerAdViewDelegate {

        /* loaded from: classes3.dex */
        public interface ActivityListener {
            boolean onCloseButtonClick(PMBannerAdView pMBannerAdView);

            void onLeavingApplication(PMBannerAdView pMBannerAdView);

            boolean onOpenUrl(PMBannerAdView pMBannerAdView, String str);
        }

        /* loaded from: classes3.dex */
        public interface FeatureSupportHandler {
            boolean shouldAddCalendarEntry(PMBannerAdView pMBannerAdView, String str);

            boolean shouldStorePicture(PMBannerAdView pMBannerAdView, String str);

            Boolean shouldSupportCalendar(PMBannerAdView pMBannerAdView);

            Boolean shouldSupportPhone(PMBannerAdView pMBannerAdView);

            Boolean shouldSupportSMS(PMBannerAdView pMBannerAdView);

            Boolean shouldSupportStorePicture(PMBannerAdView pMBannerAdView);
        }

        /* loaded from: classes3.dex */
        public interface InternalBrowserListener {
            void onInternalBrowserDismissed(PMBannerAdView pMBannerAdView);

            void onInternalBrowserPresented(PMBannerAdView pMBannerAdView);
        }

        /* loaded from: classes3.dex */
        public interface RequestListener {
            void onFailedToReceiveAd(PMBannerAdView pMBannerAdView, Exception exc);

            void onReceivedAd(PMBannerAdView pMBannerAdView);

            void onReceivedThirdPartyRequest(PMBannerAdView pMBannerAdView, Map<String, String> map, Map<String, String> map2);
        }

        /* loaded from: classes3.dex */
        public interface RichMediaListener {
            void onCollapsed(PMBannerAdView pMBannerAdView);

            void onEventProcessed(PMBannerAdView pMBannerAdView, String str);

            void onExpanded(PMBannerAdView pMBannerAdView);

            boolean onPlayVideo(PMBannerAdView pMBannerAdView, String str);

            void onResized(PMBannerAdView pMBannerAdView, Rect rect);
        }
    }

    private void setAdrequest(AdRequest adRequest) {
        if (adRequest == null) {
            throw new IllegalArgumentException("AdRequest object is null");
        }
        setChannel(adRequest.getChannel());
        this.mAdController.setAdRequest(adRequest);
        if (adRequest.getLocation() == null && this.mRetrieveLocationInfo) {
            findLocation(true);
        }
    }

    public AdRequest getAdRequest() {
        if (this.mAdController != null) {
            return this.mAdController.mAdRequest;
        }
        return null;
    }

    public PMBannerAdView(Context context) {
        super(context);
        this.CloseAreaSizeDp = 50;
        this.OrientationReset = -32768;
        this.userAgent = null;
        this.updateInterval = 0;
        this.viewVisibility = 4;
        this.adRequestDefaultParameters = new HashMap();
        this.useInternalBrowser = false;
        this.placementType = Consts.PlacementType.Inline;
        this.webView = null;
        this.textView = null;
        this.imageView = null;
        this.showCloseButton = false;
        this.closeButtonDelay = 0;
        this.closeButtonCustomDrawable = null;
        this.closeButtonFuture = null;
        this.interstitialDialog = null;
        this.interstitialDelayFuture = null;
        this.mraidBridge = null;
        this.mraidBridgeInit = false;
        this.mraidBridgeHandler = new MRAIDHandler();
        this.mraidExpandDialog = null;
        this.mraidResizeLayout = null;
        this.mraidResizeCloseArea = null;
        this.mraidTwoPartExpand = false;
        this.mraidTwoPartBridge = null;
        this.mraidTwoPartBridgeInit = false;
        this.mraidTwoPartWebView = null;
        this.mraidOriginalOrientation = -32768;
        this.webViewHandler = new WebViewHandler();
        this.updateOnLayout = false;
        this.deferredUpdate = false;
        this.mAdDescriptor = null;
        this.adUpdateIntervalFuture = null;
        this.remainingDelay = 0L;
        this.invokeTracking = false;
        this.mImpressionTrackerSent = false;
        this.mClickTrackerSent = false;
        this.mRetrieveLocationInfo = true;
        this.browserDialog = null;
        this.locationManager = null;
        this.locationListener = null;
        this.androidAid = "";
        this.locationObserver = new Observer() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                if (obj instanceof Location) {
                    PMBannerAdView.this.location = (Location) obj;
                }
            }
        };
        this.networkListener = new HttpHandler.HttpRequestListener() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.3
            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public void onRequestComplete(HttpResponse httpResponse, String str) {
                if (httpResponse != null) {
                    AdRequest adRequest = PMBannerAdView.this.mAdController.getAdRequest();
                    AdResponse formatResponse = PMBannerAdView.this.mAdController.getRRFormatter().formatResponse(httpResponse);
                    if (formatResponse.getRequest() == adRequest) {
                        String errorCode = formatResponse.getErrorCode();
                        if (errorCode == null) {
                            PMBannerAdView.this.renderAdDescriptor(formatResponse.getRenderable());
                            return;
                        }
                        Exception exception = formatResponse.getException();
                        String errorMessage = formatResponse.getErrorMessage();
                        if (exception != null) {
                            PMLogger.logEvent("Ad request failed: " + exception, PMLogger.LogLevel.Error);
                        } else if (String.valueOf((int) WalletConstants.ERROR_CODE_INVALID_PARAMETERS).equals(errorCode)) {
                            PMLogger.logEvent("Error response from server.  Error code: " + errorCode + ". Error message: " + errorMessage, PMLogger.LogLevel.Error);
                        }
                        if (PMBannerAdView.this.requestListener != null) {
                            PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, exception);
                        }
                    }
                }
            }

            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public void onErrorOccured(int i, int i2, String str) {
                if (PMBannerAdView.this.requestListener != null) {
                    PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, null);
                }
            }

            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public boolean overrideRedirection() {
                return false;
            }
        };
        this.mAdRequest = null;
        this.mRRFormatter = null;
        init(false);
    }

    public PMBannerAdView(Context context, boolean z) {
        super(context);
        this.CloseAreaSizeDp = 50;
        this.OrientationReset = -32768;
        this.userAgent = null;
        this.updateInterval = 0;
        this.viewVisibility = 4;
        this.adRequestDefaultParameters = new HashMap();
        this.useInternalBrowser = false;
        this.placementType = Consts.PlacementType.Inline;
        this.webView = null;
        this.textView = null;
        this.imageView = null;
        this.showCloseButton = false;
        this.closeButtonDelay = 0;
        this.closeButtonCustomDrawable = null;
        this.closeButtonFuture = null;
        this.interstitialDialog = null;
        this.interstitialDelayFuture = null;
        this.mraidBridge = null;
        this.mraidBridgeInit = false;
        this.mraidBridgeHandler = new MRAIDHandler();
        this.mraidExpandDialog = null;
        this.mraidResizeLayout = null;
        this.mraidResizeCloseArea = null;
        this.mraidTwoPartExpand = false;
        this.mraidTwoPartBridge = null;
        this.mraidTwoPartBridgeInit = false;
        this.mraidTwoPartWebView = null;
        this.mraidOriginalOrientation = -32768;
        this.webViewHandler = new WebViewHandler();
        this.updateOnLayout = false;
        this.deferredUpdate = false;
        this.mAdDescriptor = null;
        this.adUpdateIntervalFuture = null;
        this.remainingDelay = 0L;
        this.invokeTracking = false;
        this.mImpressionTrackerSent = false;
        this.mClickTrackerSent = false;
        this.mRetrieveLocationInfo = true;
        this.browserDialog = null;
        this.locationManager = null;
        this.locationListener = null;
        this.androidAid = "";
        this.locationObserver = new Observer() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                if (obj instanceof Location) {
                    PMBannerAdView.this.location = (Location) obj;
                }
            }
        };
        this.networkListener = new HttpHandler.HttpRequestListener() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.3
            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public void onRequestComplete(HttpResponse httpResponse, String str) {
                if (httpResponse != null) {
                    AdRequest adRequest = PMBannerAdView.this.mAdController.getAdRequest();
                    AdResponse formatResponse = PMBannerAdView.this.mAdController.getRRFormatter().formatResponse(httpResponse);
                    if (formatResponse.getRequest() == adRequest) {
                        String errorCode = formatResponse.getErrorCode();
                        if (errorCode == null) {
                            PMBannerAdView.this.renderAdDescriptor(formatResponse.getRenderable());
                            return;
                        }
                        Exception exception = formatResponse.getException();
                        String errorMessage = formatResponse.getErrorMessage();
                        if (exception != null) {
                            PMLogger.logEvent("Ad request failed: " + exception, PMLogger.LogLevel.Error);
                        } else if (String.valueOf((int) WalletConstants.ERROR_CODE_INVALID_PARAMETERS).equals(errorCode)) {
                            PMLogger.logEvent("Error response from server.  Error code: " + errorCode + ". Error message: " + errorMessage, PMLogger.LogLevel.Error);
                        }
                        if (PMBannerAdView.this.requestListener != null) {
                            PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, exception);
                        }
                    }
                }
            }

            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public void onErrorOccured(int i, int i2, String str) {
                if (PMBannerAdView.this.requestListener != null) {
                    PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, null);
                }
            }

            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public boolean overrideRedirection() {
                return false;
            }
        };
        this.mAdRequest = null;
        this.mRRFormatter = null;
        init(z);
    }

    public PMBannerAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.CloseAreaSizeDp = 50;
        this.OrientationReset = -32768;
        this.userAgent = null;
        this.updateInterval = 0;
        this.viewVisibility = 4;
        this.adRequestDefaultParameters = new HashMap();
        this.useInternalBrowser = false;
        this.placementType = Consts.PlacementType.Inline;
        this.webView = null;
        this.textView = null;
        this.imageView = null;
        this.showCloseButton = false;
        this.closeButtonDelay = 0;
        this.closeButtonCustomDrawable = null;
        this.closeButtonFuture = null;
        this.interstitialDialog = null;
        this.interstitialDelayFuture = null;
        this.mraidBridge = null;
        this.mraidBridgeInit = false;
        this.mraidBridgeHandler = new MRAIDHandler();
        this.mraidExpandDialog = null;
        this.mraidResizeLayout = null;
        this.mraidResizeCloseArea = null;
        this.mraidTwoPartExpand = false;
        this.mraidTwoPartBridge = null;
        this.mraidTwoPartBridgeInit = false;
        this.mraidTwoPartWebView = null;
        this.mraidOriginalOrientation = -32768;
        this.webViewHandler = new WebViewHandler();
        this.updateOnLayout = false;
        this.deferredUpdate = false;
        this.mAdDescriptor = null;
        this.adUpdateIntervalFuture = null;
        this.remainingDelay = 0L;
        this.invokeTracking = false;
        this.mImpressionTrackerSent = false;
        this.mClickTrackerSent = false;
        this.mRetrieveLocationInfo = true;
        this.browserDialog = null;
        this.locationManager = null;
        this.locationListener = null;
        this.androidAid = "";
        this.locationObserver = new Observer() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                if (obj instanceof Location) {
                    PMBannerAdView.this.location = (Location) obj;
                }
            }
        };
        this.networkListener = new HttpHandler.HttpRequestListener() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.3
            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public void onRequestComplete(HttpResponse httpResponse, String str) {
                if (httpResponse != null) {
                    AdRequest adRequest = PMBannerAdView.this.mAdController.getAdRequest();
                    AdResponse formatResponse = PMBannerAdView.this.mAdController.getRRFormatter().formatResponse(httpResponse);
                    if (formatResponse.getRequest() == adRequest) {
                        String errorCode = formatResponse.getErrorCode();
                        if (errorCode == null) {
                            PMBannerAdView.this.renderAdDescriptor(formatResponse.getRenderable());
                            return;
                        }
                        Exception exception = formatResponse.getException();
                        String errorMessage = formatResponse.getErrorMessage();
                        if (exception != null) {
                            PMLogger.logEvent("Ad request failed: " + exception, PMLogger.LogLevel.Error);
                        } else if (String.valueOf((int) WalletConstants.ERROR_CODE_INVALID_PARAMETERS).equals(errorCode)) {
                            PMLogger.logEvent("Error response from server.  Error code: " + errorCode + ". Error message: " + errorMessage, PMLogger.LogLevel.Error);
                        }
                        if (PMBannerAdView.this.requestListener != null) {
                            PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, exception);
                        }
                    }
                }
            }

            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public void onErrorOccured(int i, int i2, String str) {
                if (PMBannerAdView.this.requestListener != null) {
                    PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, null);
                }
            }

            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public boolean overrideRedirection() {
                return false;
            }
        };
        this.mAdRequest = null;
        this.mRRFormatter = null;
        applyAttributeSet(attributeSet);
        init(false);
    }

    public PMBannerAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.CloseAreaSizeDp = 50;
        this.OrientationReset = -32768;
        this.userAgent = null;
        this.updateInterval = 0;
        this.viewVisibility = 4;
        this.adRequestDefaultParameters = new HashMap();
        this.useInternalBrowser = false;
        this.placementType = Consts.PlacementType.Inline;
        this.webView = null;
        this.textView = null;
        this.imageView = null;
        this.showCloseButton = false;
        this.closeButtonDelay = 0;
        this.closeButtonCustomDrawable = null;
        this.closeButtonFuture = null;
        this.interstitialDialog = null;
        this.interstitialDelayFuture = null;
        this.mraidBridge = null;
        this.mraidBridgeInit = false;
        this.mraidBridgeHandler = new MRAIDHandler();
        this.mraidExpandDialog = null;
        this.mraidResizeLayout = null;
        this.mraidResizeCloseArea = null;
        this.mraidTwoPartExpand = false;
        this.mraidTwoPartBridge = null;
        this.mraidTwoPartBridgeInit = false;
        this.mraidTwoPartWebView = null;
        this.mraidOriginalOrientation = -32768;
        this.webViewHandler = new WebViewHandler();
        this.updateOnLayout = false;
        this.deferredUpdate = false;
        this.mAdDescriptor = null;
        this.adUpdateIntervalFuture = null;
        this.remainingDelay = 0L;
        this.invokeTracking = false;
        this.mImpressionTrackerSent = false;
        this.mClickTrackerSent = false;
        this.mRetrieveLocationInfo = true;
        this.browserDialog = null;
        this.locationManager = null;
        this.locationListener = null;
        this.androidAid = "";
        this.locationObserver = new Observer() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                if (obj instanceof Location) {
                    PMBannerAdView.this.location = (Location) obj;
                }
            }
        };
        this.networkListener = new HttpHandler.HttpRequestListener() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.3
            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public void onRequestComplete(HttpResponse httpResponse, String str) {
                if (httpResponse != null) {
                    AdRequest adRequest = PMBannerAdView.this.mAdController.getAdRequest();
                    AdResponse formatResponse = PMBannerAdView.this.mAdController.getRRFormatter().formatResponse(httpResponse);
                    if (formatResponse.getRequest() == adRequest) {
                        String errorCode = formatResponse.getErrorCode();
                        if (errorCode == null) {
                            PMBannerAdView.this.renderAdDescriptor(formatResponse.getRenderable());
                            return;
                        }
                        Exception exception = formatResponse.getException();
                        String errorMessage = formatResponse.getErrorMessage();
                        if (exception != null) {
                            PMLogger.logEvent("Ad request failed: " + exception, PMLogger.LogLevel.Error);
                        } else if (String.valueOf((int) WalletConstants.ERROR_CODE_INVALID_PARAMETERS).equals(errorCode)) {
                            PMLogger.logEvent("Error response from server.  Error code: " + errorCode + ". Error message: " + errorMessage, PMLogger.LogLevel.Error);
                        }
                        if (PMBannerAdView.this.requestListener != null) {
                            PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, exception);
                        }
                    }
                }
            }

            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public void onErrorOccured(int i2, int i22, String str) {
                if (PMBannerAdView.this.requestListener != null) {
                    PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, null);
                }
            }

            @Override // com.pubmatic.sdk.common.network.HttpHandler.HttpRequestListener
            public boolean overrideRedirection() {
                return false;
            }
        };
        this.mAdRequest = null;
        this.mRRFormatter = null;
        applyAttributeSet(attributeSet);
        init(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyAttributeSet(AttributeSet attributeSet) {
        this.mAttributes = attributeSet;
        String attributeValue = attributeSet.getAttributeValue(null, "logLevel");
        if (!TextUtils.isEmpty(attributeValue)) {
            if ("error".equalsIgnoreCase(attributeValue)) {
                PMLogger.setLogLevel(PMLogger.LogLevel.Error);
            } else if ("debug".equalsIgnoreCase(attributeValue)) {
                PMLogger.setLogLevel(PMLogger.LogLevel.Error);
            } else {
                PMLogger.setLogLevel(PMLogger.LogLevel.None);
            }
        }
        String attributeValue2 = attributeSet.getAttributeValue(null, CommonConstants.xml_layout_attribute_update_interval);
        if (!TextUtils.isEmpty(attributeValue2)) {
            try {
                setUpdateInterval(Integer.parseInt(attributeValue2));
            } catch (NumberFormatException e) {
                PMLogger.logEvent("Invalid value of updateInterval set in XML. Valid range is 12 to 120 seconds. Eg: updateInterval=\"12\"", PMLogger.LogLevel.Error);
            }
        }
        String attributeValue3 = attributeSet.getAttributeValue(null, "channel");
        if ("pubmatic".equalsIgnoreCase(attributeValue3)) {
            setChannel(CommonConstants.CHANNEL.PUBMATIC);
        } else if ("phoenix".equalsIgnoreCase(attributeValue3)) {
            setChannel(CommonConstants.CHANNEL.PHOENIX);
        } else {
            setChannel(CommonConstants.CHANNEL.MOCEAN);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void init(boolean z) {
        this.placementType = Consts.PlacementType.Inline;
        if (z) {
            this.placementType = Consts.PlacementType.Interstitial;
            this.interstitialDialog = new ExpandDialog(getContext());
        }
        setOnClickListener(new OnClickHandler());
        initUserAgent();
    }

    protected void initController(CommonConstants.CHANNEL channel) {
        if (this.mAdController == null) {
            this.mAdController = new BannerAdController(channel, getContext(), this.mAttributes);
        }
    }

    private boolean checkForMandatoryParams() {
        return this.mAdController.checkMandatoryParams();
    }

    private void setChannel(CommonConstants.CHANNEL channel) {
        initController(channel);
        this.mChannel = channel;
        if (checkForMandatoryParams() && this.mAttributes != null) {
            this.updateOnLayout = true;
        }
    }

    public CommonConstants.CHANNEL getChannel() {
        return this.mChannel;
    }

    private void updateOnLayout() {
        if (this.updateOnLayout) {
            this.updateOnLayout = false;
            update();
        }
    }

    private void initUserAgent() {
        if (TextUtils.isEmpty(this.userAgent)) {
            this.userAgent = getWebView().getSettings().getUserAgentString();
            if (TextUtils.isEmpty(this.userAgent)) {
                this.userAgent = PubMaticConstants.USER_AGENT_VALUE;
            }
        }
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public boolean isInline() {
        return this.placementType == Consts.PlacementType.Inline;
    }

    public boolean isInterstitial() {
        return this.placementType == Consts.PlacementType.Interstitial;
    }

    public void setActivityListener(BannerAdViewDelegate.ActivityListener activityListener) {
        this.activityListener = activityListener;
    }

    public BannerAdViewDelegate.ActivityListener getActivityListener() {
        return this.activityListener;
    }

    public void setFeatureSupportHandler(BannerAdViewDelegate.FeatureSupportHandler featureSupportHandler) {
        this.featureSupportHandler = featureSupportHandler;
    }

    public BannerAdViewDelegate.FeatureSupportHandler getFeatureSupportHandler() {
        return this.featureSupportHandler;
    }

    public void setInternalBrowserListener(BannerAdViewDelegate.InternalBrowserListener internalBrowserListener) {
        this.internalBrowserListener = internalBrowserListener;
    }

    public BannerAdViewDelegate.InternalBrowserListener getInternalBrowserListener() {
        return this.internalBrowserListener;
    }

    public void setRequestListener(BannerAdViewDelegate.RequestListener requestListener) {
        this.requestListener = requestListener;
    }

    public BannerAdViewDelegate.RequestListener getRequestListener() {
        return this.requestListener;
    }

    public void setRichMediaListener(BannerAdViewDelegate.RichMediaListener richMediaListener) {
        this.richMediaListener = richMediaListener;
    }

    public BannerAdViewDelegate.RichMediaListener getRichMediaListener() {
        return this.richMediaListener;
    }

    public Map<String, String> getAdRequestParameters() {
        return this.adRequestDefaultParameters;
    }

    public void setUpdateInterval(int i) {
        if (i > 0 && i <= 12) {
            this.updateInterval = 12;
            PMLogger.logEvent("Valid update interval time is between 12 to 120 sec. Setting update interval to minimum 12 seconds", PMLogger.LogLevel.Debug);
        } else if (i > 12 && i <= 120) {
            this.updateInterval = i;
            PMLogger.logEvent("Ad Update interval set to " + i + " seconds.", PMLogger.LogLevel.Debug);
        } else if (i > 120) {
            this.updateInterval = 120;
            PMLogger.logEvent("Valid update interval time is between 12 to 120 sec. Setting update interval to maximum 120 seconds", PMLogger.LogLevel.Debug);
        }
    }

    public int getUpdateInterval() {
        return this.updateInterval;
    }

    public void setShowCloseButton(boolean z) {
        this.showCloseButton = z;
    }

    public boolean getShowCloseButton() {
        return this.showCloseButton;
    }

    public void setCloseButtonDelay(int i) {
        this.closeButtonDelay = i;
    }

    public int getCloseButtonDelay() {
        return this.closeButtonDelay;
    }

    public void setCloseButtonCustomDrawable(Drawable drawable) {
        this.closeButtonCustomDrawable = drawable;
    }

    public Drawable getCloseButtonCustomDrawable() {
        return this.closeButtonCustomDrawable;
    }

    public void setUseInternalBrowser(boolean z) {
        this.useInternalBrowser = z;
    }

    public boolean getUseInternalBrowser() {
        return this.useInternalBrowser;
    }

    public boolean isInternalBrowserOpen() {
        return this.browserDialog != null && this.browserDialog.isShowing();
    }

    public boolean isLocationDetectionEnabled() {
        return this.locationManager != null;
    }

    public Location getLocation() {
        return this.location;
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [com.pubmatic.sdk.banner.PMBannerAdView$LocationListener, android.location.LocationManager] */
    private void findLocation(boolean z) {
        if (!z) {
            if (this.locationManager != null && this.locationListener != null) {
                try {
                    this.locationManager.removeUpdates(this.locationListener);
                    return;
                } catch (SecurityException e) {
                    return;
                } finally {
                    this.locationManager = null;
                    this.locationListener = null;
                }
            }
            return;
        }
        Criteria criteria = new Criteria();
        criteria.setCostAllowed(false);
        criteria.setPowerRequirement(0);
        criteria.setBearingRequired(false);
        criteria.setSpeedRequired(false);
        criteria.setAltitudeRequired(false);
        criteria.setAccuracy(2);
        enableLocationDetection(600000L, 20.0f, criteria, null);
    }

    public void setLocationDetectionEnabled(boolean z) {
        this.mRetrieveLocationInfo = z;
    }

    public void enableLocationDetection(long j, float f, Criteria criteria, String str) {
        if (str == null && criteria == null) {
            throw new IllegalArgumentException("criteria or provider required");
        }
        LocationDetector.getInstance(getContext()).addObserver(this.locationObserver);
    }

    public void setAndroidIdEnabled(boolean z) {
        this.isAndroidIdEnabled = z;
    }

    public boolean isAndoridIdEnabled() {
        return this.isAndroidIdEnabled;
    }

    public void execute(AdRequest adRequest) {
        setAdrequest(adRequest);
        update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        update(false);
    }

    private void update(boolean z) {
        if (getChannel() == null || !checkForMandatoryParams()) {
            throw new IllegalStateException("Required parameters are not set.");
        }
        if (this.adUpdateIntervalFuture != null) {
            this.adUpdateIntervalFuture.cancel(true);
            this.adUpdateIntervalFuture = null;
        }
        if (this.updateInterval > 0) {
            startUpdateTimer(this.updateInterval);
        }
        if (z) {
            closeInternalBrowser();
            if (this.placementType == Consts.PlacementType.Inline && this.mraidBridge != null && this.mraidBridgeHandler != null) {
                switch (this.mraidBridge.getState()) {
                    case Expanded:
                    case Resized:
                        this.mraidBridgeHandler.mraidClose(this.mraidBridge);
                        break;
                }
            }
        }
        internalUpdate();
    }

    private synchronized void startUpdateTimer(long j) {
        if (this.adUpdateIntervalFuture == null && !isInterstitial()) {
            this.adUpdateIntervalFuture = Background.getExecutor().scheduleAtFixedRate(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.2
                @Override // java.lang.Runnable
                public void run() {
                    PMBannerAdView.this.internalUpdate();
                }
            }, j, this.updateInterval, TimeUnit.SECONDS);
        }
    }

    public void reset() {
        this.deferredUpdate = false;
        this.mImpressionTrackerSent = false;
        this.mClickTrackerSent = false;
        removeContent();
        if (this.adUpdateIntervalFuture != null) {
            this.adUpdateIntervalFuture.cancel(true);
            this.adUpdateIntervalFuture = null;
        }
        if (this.interstitialDelayFuture != null) {
            this.interstitialDelayFuture.cancel(true);
            this.interstitialDelayFuture = null;
        }
        closeInternalBrowser();
        this.browserDialog = null;
        findLocation(false);
        unregisterReceiver();
    }

    public void removeContent() {
        this.deferredUpdate = false;
        resetRichMediaAd();
        resetImageAd();
        resetTextAd();
        switch (this.placementType) {
            case Inline:
                removeAllViews();
                break;
            case Interstitial:
                this.interstitialDialog.removeAllViews();
                break;
        }
        this.mAdController = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalUpdate() {
        this.deferredUpdate = false;
        if (isInternalBrowserOpen()) {
            this.deferredUpdate = true;
            return;
        }
        if (this.mraidBridge != null && this.mraidBridgeHandler != null) {
            switch (this.mraidBridge.getState()) {
                case Expanded:
                case Resized:
                    this.deferredUpdate = true;
                    return;
            }
        }
        if (this.mraidBridge != null && this.mraidBridgeHandler != null) {
            switch (this.mraidBridge.getState()) {
                case Expanded:
                case Resized:
                    this.mraidBridgeHandler.mraidClose(this.mraidBridge);
                    break;
            }
        }
        AdRequest adRequest = this.mAdController.getAdRequest();
        adRequest.setUserAgent(getUserAgent());
        int width = getWidth();
        int height = getHeight();
        if (isInterstitial()) {
            DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
            adRequest.setWidth(displayMetrics.widthPixels);
            adRequest.setHeight(displayMetrics.heightPixels);
        } else {
            if (width != 0 && adRequest.getWidth() <= 0) {
                adRequest.setWidth(width);
            }
            if (height != 0 && adRequest.getHeight() <= 0) {
                adRequest.setHeight(height);
            }
        }
        adRequest.createRequest(getContext());
        if (adRequest.getLocation() == null) {
            adRequest.setLocation(this.location);
        }
        if (!TextUtils.isEmpty(this.androidAid)) {
        }
        HttpRequest formatRequest = this.mAdController.getRRFormatter().formatRequest(adRequest);
        PMLogger.logEvent("Ad request:" + formatRequest.getRequestUrl(), PMLogger.LogLevel.Debug);
        PMLogger.logEvent("Ad request body:" + formatRequest.getPostData(), PMLogger.LogLevel.Debug);
        Background.getExecutor().execute(new HttpHandler(this.networkListener, formatRequest));
    }

    public void showInterstitial() {
        showInterstitialWithDuration(0);
    }

    public void showInterstitialWithDuration(int i) {
        if (!isInterstitial()) {
            throw new IllegalStateException("showInterstitial requires interstitial instance");
        }
        if (this.interstitialDelayFuture != null) {
            this.interstitialDelayFuture.cancel(true);
            this.interstitialDelayFuture = null;
        }
        this.interstitialDialog.show();
        prepareCloseButton();
        performAdTracking();
        if (i > 0) {
            this.interstitialDelayFuture = Background.getExecutor().schedule(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.4
                @Override // java.lang.Runnable
                public void run() {
                    PMBannerAdView.this.closeInterstitial();
                }
            }, i, TimeUnit.SECONDS);
        }
    }

    public void closeInterstitial() {
        if (this.interstitialDelayFuture != null) {
            this.interstitialDelayFuture.cancel(true);
            this.interstitialDelayFuture = null;
        }
        if (this.interstitialDialog != null) {
            this.interstitialDialog.dismiss();
        }
    }

    public ImageView getImageView() {
        if (this.imageView == null) {
            this.imageView = new ImageView(getContext());
        }
        return this.imageView;
    }

    public TextView getTextView() {
        if (this.textView == null) {
            this.textView = new TextView(getContext());
            this.textView.setGravity(17);
        }
        return this.textView;
    }

    public android.webkit.WebView getWebView() {
        if (this.webView == null) {
            this.webView = new WebView(getContext());
            this.webView.setHandler(this.webViewHandler);
        }
        return this.webView;
    }

    private void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        switch (this.placementType) {
            case Inline:
                if (view.getParent() != this) {
                    if (view.getParent() != null) {
                        ((ViewGroup) view.getParent()).removeView(view);
                    }
                    addView(view, layoutParams);
                    return;
                }
                return;
            case Interstitial:
                this.interstitialDialog.addView(view);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderAdDescriptor(AdResponse.Renderable renderable) {
        if (renderable == null) {
            throw new IllegalArgumentException("renderable is null");
        }
        final BannerAdDescriptor bannerAdDescriptor = (BannerAdDescriptor) renderable;
        this.invokeTracking = true;
        this.mImpressionTrackerSent = false;
        this.mClickTrackerSent = false;
        String type = bannerAdDescriptor.getType();
        if (type.startsWith(AdView.DEFAULT_IMAGE_NAME)) {
            fetchImage(bannerAdDescriptor, bannerAdDescriptor.getImage());
        } else if (type.startsWith(CommonConstants.RESPONSE_TEXT)) {
            final String text = bannerAdDescriptor.getText();
            runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.5
                @Override // java.lang.Runnable
                public void run() {
                    PMBannerAdView.this.renderText(bannerAdDescriptor, text);
                }
            });
        } else {
            String content = bannerAdDescriptor.getContent();
            if (type.startsWith("thirdparty")) {
                String url = bannerAdDescriptor.getURL();
                if (!TextUtils.isEmpty(url) && url.trim().length() > 0) {
                    String image = bannerAdDescriptor.getImage();
                    if (!TextUtils.isEmpty(image) && image.trim().length() > 0 && verifyThirdPartyRendering(content, url, image)) {
                        fetchImage(bannerAdDescriptor, image);
                        return;
                    }
                    final String text2 = bannerAdDescriptor.getText();
                    if (!TextUtils.isEmpty(text2) && text2.trim().length() > 0 && verifyThirdPartyRendering(content, url, text2)) {
                        runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.6
                            @Override // java.lang.Runnable
                            public void run() {
                                PMBannerAdView.this.renderText(bannerAdDescriptor, text2);
                            }
                        });
                        return;
                    }
                } else if (!TextUtils.isEmpty(content) && content.contains("client_side_external_campaign")) {
                    try {
                        if (this.requestListener != null) {
                            ThirdPartyDescriptor parseDescriptor = ThirdPartyDescriptor.parseDescriptor(content);
                            this.mAdDescriptor = bannerAdDescriptor;
                            this.requestListener.onReceivedThirdPartyRequest(this, parseDescriptor.getProperties(), parseDescriptor.getParams());
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        PMLogger.logEvent("Error parsing third party content descriptor.  Exception:" + e, PMLogger.LogLevel.Error);
                        return;
                    }
                }
            }
            if (TextUtils.isEmpty(content)) {
                PMLogger.logEvent("Ad descriptor missing ad content", PMLogger.LogLevel.Error);
                if (this.requestListener != null) {
                    this.requestListener.onFailedToReceiveAd(this, null);
                    return;
                }
                return;
            }
            runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.7
                @Override // java.lang.Runnable
                public void run() {
                    PMBannerAdView.this.renderRichMedia(bannerAdDescriptor);
                }
            });
        }
    }

    private boolean verifyThirdPartyRendering(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        if (str.contains("<script")) {
            return false;
        }
        return str.contains(str2) && str.contains(str3) && (str.length() - str2.length()) - str3.length() < 20;
    }

    private void performAdTracking() {
        if ((isInterstitial() || isShown()) && this.invokeTracking && this.mAdDescriptor != null) {
            this.invokeTracking = false;
            if (this.mAdDescriptor.getImpressionTrackers().size() > 0) {
                Iterator<String> it = this.mAdDescriptor.getImpressionTrackers().iterator();
                while (it.hasNext()) {
                    AdTracking.invokeTrackingUrl(5, it.next(), this.userAgent);
                }
            }
        }
    }

    public int getImageWidth() {
        if (this.mAdDescriptor == null || this.mAdDescriptor.getWidth() == null) {
            return 0;
        }
        return Integer.parseInt(this.mAdDescriptor.getWidth());
    }

    public int getImageHeight() {
        if (this.mAdDescriptor == null || this.mAdDescriptor.getHeight() == null) {
            return 0;
        }
        return Integer.parseInt(this.mAdDescriptor.getHeight());
    }

    public void sendImpression() {
        if (!this.mImpressionTrackerSent && this.mAdDescriptor != null && "thirdparty".equals(this.mAdDescriptor.getType())) {
            if (this.mAdDescriptor.getImpressionTrackers() != null && this.mAdDescriptor.getImpressionTrackers().size() > 0) {
                Iterator<String> it = this.mAdDescriptor.getImpressionTrackers().iterator();
                while (it.hasNext()) {
                    AdTracking.invokeTrackingUrl(5, it.next(), this.userAgent);
                }
            }
            this.mImpressionTrackerSent = true;
        }
    }

    public void sendClickTracker() {
        if (!this.mClickTrackerSent && this.mAdDescriptor != null && "thirdparty".equals(this.mAdDescriptor.getType())) {
            if (this.mAdDescriptor.getClickTrackers() != null && this.mAdDescriptor.getClickTrackers().size() > 0) {
                Iterator<String> it = this.mAdDescriptor.getClickTrackers().iterator();
                while (it.hasNext()) {
                    AdTracking.invokeTrackingUrl(5, it.next(), this.userAgent);
                }
            }
            this.mClickTrackerSent = true;
        }
    }

    private void performClickTracking() {
        if (!this.mClickTrackerSent && this.mAdDescriptor != null) {
            if (this.mAdDescriptor.getClickTrackers() != null && this.mAdDescriptor.getClickTrackers().size() > 0) {
                Iterator<String> it = this.mAdDescriptor.getClickTrackers().iterator();
                while (it.hasNext()) {
                    AdTracking.invokeTrackingUrl(5, it.next(), this.userAgent);
                }
            }
            this.mClickTrackerSent = true;
        }
    }

    private void fetchImage(final BannerAdDescriptor bannerAdDescriptor, String str) {
        ImageRequest.create(5, str, getUserAgent(), true, new ImageRequest.Handler() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.8
            @Override // com.pubmatic.sdk.banner.ImageRequest.Handler
            public void imageFailed(ImageRequest imageRequest, Exception exc) {
                PMLogger.logEvent("Image download failure.  Exception:" + exc, PMLogger.LogLevel.Error);
                if (PMBannerAdView.this.requestListener != null) {
                    PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, exc);
                }
            }

            @Override // com.pubmatic.sdk.banner.ImageRequest.Handler
            public void imageReceived(ImageRequest imageRequest, final Object obj) {
                PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PMBannerAdView.this.renderImage(bannerAdDescriptor, obj);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderImage(BannerAdDescriptor bannerAdDescriptor, Object obj) {
        resetTextAd();
        resetRichMediaAd();
        getImageView();
        addContentView(this.imageView, new ViewGroup.LayoutParams(-1, -2));
        if (obj instanceof Bitmap) {
            this.imageView.setImageBitmap((Bitmap) obj);
        } else if (obj instanceof GifDecoder) {
            this.imageView.setImageGifDecoder((GifDecoder) obj);
        }
        this.mAdDescriptor = bannerAdDescriptor;
        prepareCloseButton();
        performAdTracking();
        if (this.requestListener != null) {
            this.requestListener.onReceivedAd(this);
        }
    }

    private void resetImageAd() {
        if (this.imageView != null) {
            this.imageView.setImageBitmap(null);
        }
        this.mAdDescriptor = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderText(BannerAdDescriptor bannerAdDescriptor, String str) {
        resetImageAd();
        resetRichMediaAd();
        getTextView();
        addContentView(this.textView, new ViewGroup.LayoutParams(-1, -1));
        this.textView.setText(str);
        this.mAdDescriptor = bannerAdDescriptor;
        prepareCloseButton();
        performAdTracking();
        if (this.requestListener != null) {
            this.requestListener.onReceivedAd(this);
        }
    }

    private void resetTextAd() {
        if (this.textView != null) {
            this.textView.setText("");
        }
        this.mAdDescriptor = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderRichMedia(BannerAdDescriptor bannerAdDescriptor) {
        resetImageAd();
        resetTextAd();
        getWebView().stopLoading();
        addContentView(this.webView, new ViewGroup.LayoutParams(-1, -1));
        this.mraidBridgeInit = false;
        this.mraidBridge = new Bridge(this.webView, this.mraidBridgeHandler);
        this.webView.loadFragment(bannerAdDescriptor.getContent(), this.mraidBridge, getAdRequest().getAdServerURL());
        this.mAdDescriptor = bannerAdDescriptor;
        performAdTracking();
        if (this.requestListener != null) {
            this.requestListener.onReceivedAd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetRichMediaAd() {
        if (this.mraidBridge != null) {
            this.mraidBridgeHandler.mraidClose(this.mraidBridge);
            if (this.mraidExpandDialog != null) {
                this.mraidExpandDialog.dismiss();
                this.mraidExpandDialog = null;
            }
            if (this.mraidResizeLayout != null) {
                ViewGroup viewGroup = (ViewGroup) this.mraidResizeLayout.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.mraidResizeLayout);
                }
                this.mraidResizeLayout = null;
                this.mraidResizeCloseArea = null;
            }
            this.mraidBridge = null;
        }
        if (this.webView != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                this.webView.loadUrl("about:blank");
            } else {
                this.webView.clearView();
            }
            this.webView.clearHistory();
        }
        this.mAdDescriptor = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderTwoPartExpand(String str) {
        this.mraidTwoPartExpand = true;
        this.mraidTwoPartWebView = new WebView(getContext());
        this.mraidTwoPartWebView.setHandler(this.webViewHandler);
        this.mraidTwoPartBridgeInit = false;
        this.mraidTwoPartBridge = new Bridge(this.mraidTwoPartWebView, this.mraidBridgeHandler);
        this.mraidTwoPartBridge.setExpandProperties(this.mraidBridge.getExpandProperties());
        this.mraidTwoPartWebView.loadUrl(str, this.mraidTwoPartBridge);
        this.mraidExpandDialog = new ExpandDialog(getContext());
        this.mraidExpandDialog.addView(this.mraidTwoPartWebView);
        this.mraidExpandDialog.show();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        performAdTracking();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            PMLogger.logEvent("Window focus gain ad is VISIBLE", PMLogger.LogLevel.Debug);
            setViewVisibility(0);
            return;
        }
        PMLogger.logEvent("Window focus lost ad is INVISIBLE", PMLogger.LogLevel.Debug);
        setViewVisibility(4);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            PMLogger.logEvent("Ad view is VISIBLE", PMLogger.LogLevel.Debug);
            performAdTracking();
        } else {
            PMLogger.logEvent("Ad view is INVISIBLE", PMLogger.LogLevel.Debug);
        }
        setViewVisibility(i);
    }

    private void setViewVisibility(int i) {
        if (this.viewVisibility != i) {
            this.viewVisibility = i;
            if (this.updateInterval > 0) {
                if (i == 0) {
                    startUpdateTimer(this.remainingDelay);
                } else if (this.adUpdateIntervalFuture != null) {
                    this.remainingDelay = this.adUpdateIntervalFuture.getDelay(TimeUnit.SECONDS);
                    this.adUpdateIntervalFuture.cancel(true);
                    this.adUpdateIntervalFuture = null;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        Activity activity = getActivity();
        if (activity != null && !activity.isFinishing()) {
            if (this.mraidBridge != null) {
                switch (this.mraidBridge.getState()) {
                    case Expanded:
                    case Resized:
                        this.mraidBridgeHandler.mraidClose(this.mraidBridge);
                        break;
                }
            }
            super.onDetachedFromWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.webView != null) {
            if (this.webView.getParent() == this) {
                this.webView.layout(0, 0, getWidth(), getHeight());
            }
            if (this.mraidBridge != null) {
                if (z || !this.webView.hasFocus()) {
                    updateMRAIDLayoutForState(this.mraidBridge, this.mraidBridge.getState());
                } else {
                    return;
                }
            }
        }
        if (this.imageView != null) {
            this.imageView.layout(0, 0, getWidth(), getHeight());
        }
        if (this.textView != null) {
            this.textView.layout(0, 0, getWidth(), getHeight());
        }
        updateOnLayout();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        super.measureChildren(i, i2);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (this.mAdDescriptor == null) {
        }
        return onSaveInstanceState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openUrl(final String str, final boolean z) {
        if (this.activityListener == null || !this.activityListener.onOpenUrl(this, str)) {
            runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.9
                @Override // java.lang.Runnable
                public void run() {
                    if (!z && PMBannerAdView.this.useInternalBrowser) {
                        try {
                            if (new URI(str).getScheme().startsWith("http")) {
                                PMBannerAdView.this.openInternalBrowser(str);
                                return;
                            }
                        } catch (URISyntaxException e) {
                        }
                    }
                    if (PMBannerAdView.this.activityListener != null) {
                        PMBannerAdView.this.activityListener.onLeavingApplication(PMBannerAdView.this);
                    }
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    if (PMBannerAdView.this.intentAvailable(intent)) {
                        PMBannerAdView.this.getContext().startActivity(intent);
                    } else {
                        PMLogger.logEvent("Unable to start activity for browsing URL:" + str, PMLogger.LogLevel.Error);
                    }
                }
            });
            performClickTracking();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openInternalBrowser(String str) {
        if (this.browserDialog != null) {
            this.browserDialog.dismiss();
            this.browserDialog = null;
        }
        this.browserDialog = new BrowserDialog(getContext(), str, new BrowserDialog.Handler() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.10
            @Override // com.pubmatic.sdk.common.ui.BrowserDialog.Handler
            public void browserDialogDismissed(BrowserDialog browserDialog) {
                if (PMBannerAdView.this.internalBrowserListener != null) {
                    PMBannerAdView.this.internalBrowserListener.onInternalBrowserDismissed(PMBannerAdView.this);
                }
            }

            @Override // com.pubmatic.sdk.common.ui.BrowserDialog.Handler
            public void browserDialogOpenUrl(BrowserDialog browserDialog, String str2, boolean z) {
                PMBannerAdView.this.openUrl(str2, true);
                if (z) {
                    browserDialog.dismiss();
                }
            }
        });
        if (!this.browserDialog.isShowing()) {
            this.browserDialog.show();
        }
        if (this.internalBrowserListener != null) {
            this.internalBrowserListener.onInternalBrowserPresented(this);
        }
    }

    private void closeInternalBrowser() {
        if (this.browserDialog != null && this.browserDialog.isShowing()) {
            this.browserDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initMRAIDBridge(Bridge bridge) {
        if (bridge != null) {
            synchronized (bridge) {
                if (bridge != this.mraidBridge || this.mraidBridgeInit) {
                    if (bridge != this.mraidTwoPartBridge || this.mraidTwoPartBridgeInit) {
                        if (bridge.webView.isLoaded()) {
                            if (bridge.getState() == Consts.State.Loading) {
                                bridge.setPlacementType(this.placementType);
                                setMRAIDSupportedFeatures(bridge);
                                if (bridge == this.mraidBridge) {
                                    switch (this.placementType) {
                                        case Inline:
                                            updateMRAIDLayoutForState(bridge, Consts.State.Default);
                                            break;
                                        case Interstitial:
                                            updateMRAIDLayoutForState(bridge, Consts.State.Expanded);
                                            break;
                                    }
                                    bridge.setState(Consts.State.Default);
                                } else {
                                    bridge.setExpandProperties(this.mraidBridge.getExpandProperties());
                                    updateMRAIDLayoutForState(bridge, Consts.State.Expanded);
                                    bridge.setState(Consts.State.Expanded);
                                }
                                bridge.sendReady();
                            }
                        }
                    }
                }
            }
        }
    }

    private void setMRAIDSupportedFeatures(Bridge bridge) {
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        Boolean bool4;
        Boolean bool5;
        Boolean bool6 = null;
        boolean z = true;
        if (bridge != null) {
            if (this.featureSupportHandler != null) {
                bool3 = this.featureSupportHandler.shouldSupportSMS(this);
                bool2 = this.featureSupportHandler.shouldSupportPhone(this);
                bool = this.featureSupportHandler.shouldSupportCalendar(this);
                bool6 = this.featureSupportHandler.shouldSupportStorePicture(this);
            } else {
                bool = null;
                bool2 = null;
                bool3 = null;
            }
            if (bool3 == null) {
                bool4 = Boolean.valueOf(getContext().checkCallingOrSelfPermission("android.permission.SEND_SMS") == 0);
            } else {
                bool4 = bool3;
            }
            if (bool2 == null) {
                bool2 = Boolean.valueOf(getContext().checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0);
            }
            if (bool == null) {
                bool = Boolean.valueOf(getContext().checkCallingOrSelfPermission("android.permission.WRITE_CALENDAR") == 0 && getContext().checkCallingOrSelfPermission("android.permission.READ_CALENDAR") == 0);
            }
            if (bool6 == null) {
                if (getContext().checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                    z = false;
                }
                bool5 = Boolean.valueOf(z);
            } else {
                bool5 = bool6;
            }
            bridge.setSupportedFeature(Consts.Feature.SMS, bool4.booleanValue());
            bridge.setSupportedFeature(Consts.Feature.Tel, bool2.booleanValue());
            bridge.setSupportedFeature(Consts.Feature.Calendar, bool.booleanValue());
            bridge.setSupportedFeature(Consts.Feature.StorePicture, bool5.booleanValue());
            bridge.setSupportedFeature(Consts.Feature.InlineVideo, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMRAIDLayoutForState(Bridge bridge, Consts.State state) {
        int[] iArr;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        WebView webView = this.webView;
        if (bridge == this.mraidTwoPartBridge) {
            webView = this.mraidTwoPartWebView;
        }
        boolean isShown = webView.isShown();
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        View rootView = getRootView();
        int pxToDp = BannerUtils.pxToDp(getWidth());
        int pxToDp2 = BannerUtils.pxToDp(getHeight());
        int pxToDp3 = BannerUtils.pxToDp(webView.getWidth());
        int pxToDp4 = BannerUtils.pxToDp(webView.getHeight());
        getLocationOnScreen(new int[2]);
        int pxToDp5 = BannerUtils.pxToDp(iArr[0]);
        int pxToDp6 = BannerUtils.pxToDp(iArr[1]);
        int[] iArr2 = new int[2];
        if (state == Consts.State.Resized && this.mraidResizeLayout != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) webView.getLayoutParams();
            iArr2[0] = layoutParams.leftMargin;
            iArr2[1] = layoutParams.topMargin;
        } else {
            webView.getLocationOnScreen(iArr2);
        }
        int pxToDp7 = BannerUtils.pxToDp(iArr2[0]);
        int pxToDp8 = BannerUtils.pxToDp(iArr2[1]);
        int pxToDp9 = BannerUtils.pxToDp(displayMetrics.widthPixels);
        int pxToDp10 = BannerUtils.pxToDp(displayMetrics.heightPixels);
        int pxToDp11 = BannerUtils.pxToDp(rootView.getWidth());
        int pxToDp12 = BannerUtils.pxToDp(rootView.getHeight());
        switch (state) {
            case Default:
                pxToDp8 = pxToDp6;
                pxToDp7 = pxToDp5;
                pxToDp4 = pxToDp2;
                pxToDp3 = pxToDp;
                break;
            case Expanded:
                pxToDp7 = 0;
                pxToDp8 = 0;
                pxToDp4 = pxToDp10;
                pxToDp3 = pxToDp9;
                break;
        }
        if (this.placementType == Consts.PlacementType.Interstitial) {
            i7 = 0;
            i2 = 0;
            i6 = pxToDp10;
            i5 = pxToDp9;
            i = pxToDp10;
            i4 = pxToDp9;
            i8 = pxToDp10;
            i3 = pxToDp9;
        } else {
            i = pxToDp2;
            i2 = pxToDp5;
            i3 = pxToDp11;
            i4 = pxToDp;
            i5 = pxToDp3;
            i6 = pxToDp4;
            i7 = pxToDp6;
            i8 = pxToDp12;
        }
        bridge.setScreenSize(pxToDp9, pxToDp10);
        bridge.setMaxSize(i3, i8);
        bridge.setDefaultPosition(i2, i7, i4, i);
        bridge.setCurrentPosition(pxToDp7, pxToDp8, i5, i6);
        bridge.setViewable(isShown);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMRAIDOrientation() {
        Activity activity = getActivity();
        if (activity != null) {
            if (this.mraidOriginalOrientation == -32768) {
                this.mraidOriginalOrientation = activity.getRequestedOrientation();
            }
            OrientationProperties orientationProperties = this.mraidBridge.getOrientationProperties();
            Consts.ForceOrientation forceOrientation = orientationProperties.getForceOrientation();
            switch (forceOrientation) {
                case Portrait:
                    activity.setRequestedOrientation(1);
                    break;
                case Landscape:
                    activity.setRequestedOrientation(0);
                    break;
            }
            if (orientationProperties.getAllowOrientationChange()) {
                activity.setRequestedOrientation(4);
            } else if (forceOrientation == Consts.ForceOrientation.None) {
                switch (activity.getResources().getConfiguration().orientation) {
                    case 1:
                        activity.setRequestedOrientation(1);
                        return;
                    case 2:
                        activity.setRequestedOrientation(0);
                        return;
                    default:
                        activity.setRequestedOrientation(5);
                        return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetMRAIDOrientation() {
        Activity activity = getActivity();
        if (activity != null && this.mraidOriginalOrientation != -32768) {
            activity.setRequestedOrientation(this.mraidOriginalOrientation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void prepareCloseButton() {
        if (this.mraidExpandDialog != null) {
            this.mraidExpandDialog.setCloseImage(null);
        }
        if (this.closeButtonFuture != null) {
            this.closeButtonFuture.cancel(true);
            this.closeButtonFuture = null;
        }
        if (this.mraidBridge != null) {
            switch (this.mraidBridge.getState()) {
                case Default:
                    if (this.placementType == Consts.PlacementType.Interstitial) {
                        if (!this.mraidBridge.getExpandProperties().useCustomClose()) {
                            showCloseButton();
                            return;
                        }
                        return;
                    }
                    break;
                case Expanded:
                    ExpandProperties expandProperties = this.mraidBridge.getExpandProperties();
                    if (this.mraidTwoPartExpand && this.mraidTwoPartBridgeInit && this.mraidTwoPartBridge != null) {
                        expandProperties = this.mraidTwoPartBridge.getExpandProperties();
                    }
                    if (!expandProperties.useCustomClose()) {
                        showCloseButton();
                        return;
                    }
                    return;
                case Resized:
                    return;
            }
        }
        if (this.closeButtonDelay >= 0) {
            if (this.closeButtonDelay == 0) {
                showCloseButton();
            } else {
                this.closeButtonFuture = Background.getExecutor().schedule(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.11
                    @Override // java.lang.Runnable
                    public void run() {
                        PMBannerAdView.this.showCloseButton();
                    }
                }, this.closeButtonDelay, TimeUnit.SECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0017 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void showCloseButton() {
        Drawable bitmapDrawable;
        Drawable drawable = this.closeButtonCustomDrawable;
        if (drawable == null) {
            try {
                bitmapDrawable = new BitmapDrawable(getResources(), WebView.class.getResourceAsStream("/close_button.png"));
            } catch (Exception e) {
                PMLogger.logEvent("Error loading built in close button.  Exception:" + e, PMLogger.LogLevel.Error);
            }
            if (bitmapDrawable == null) {
                if (this.mraidBridge != null) {
                    switch (this.mraidBridge.getState()) {
                        case Loading:
                        case Default:
                            if (this.placementType == Consts.PlacementType.Interstitial) {
                                this.interstitialDialog.setCloseImage(bitmapDrawable);
                                return;
                            }
                            break;
                        case Expanded:
                            this.mraidExpandDialog.setCloseImage(bitmapDrawable);
                            return;
                        case Resized:
                            if (Build.VERSION.SDK_INT >= 16) {
                                this.mraidResizeCloseArea.setBackground(bitmapDrawable);
                                return;
                            } else {
                                this.mraidResizeCloseArea.setBackgroundDrawable(bitmapDrawable);
                                return;
                            }
                    }
                }
                switch (this.placementType) {
                    case Inline:
                    default:
                        return;
                    case Interstitial:
                        this.interstitialDialog.setCloseImage(bitmapDrawable);
                        return;
                }
            }
            return;
        }
        bitmapDrawable = drawable;
        if (bitmapDrawable == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class OnClickHandler implements View.OnClickListener {
        private OnClickHandler() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (((PMBannerAdView.this.imageView != null && PMBannerAdView.this.imageView.getParent() == view) || (PMBannerAdView.this.textView != null && PMBannerAdView.this.textView.getParent() == view)) && PMBannerAdView.this.mAdDescriptor != null && !TextUtils.isEmpty(PMBannerAdView.this.mAdDescriptor.getURL())) {
                PMBannerAdView.this.openUrl(PMBannerAdView.this.mAdDescriptor.getURL(), false);
            }
        }
    }

    /* loaded from: classes3.dex */
    private class WebViewHandler implements WebView.Handler {
        private WebViewHandler() {
        }

        @Override // com.pubmatic.sdk.banner.mraid.WebView.Handler
        public void webViewPageStarted(WebView webView) {
        }

        @Override // com.pubmatic.sdk.banner.mraid.WebView.Handler
        public void webViewPageFinished(WebView webView) {
            if (PMBannerAdView.this.mraidBridge == null || PMBannerAdView.this.mraidBridge.webView != webView) {
                if (PMBannerAdView.this.mraidTwoPartBridge != null && PMBannerAdView.this.mraidTwoPartBridge.webView == webView) {
                    PMBannerAdView.this.initMRAIDBridge(PMBannerAdView.this.mraidTwoPartBridge);
                    return;
                }
                return;
            }
            PMBannerAdView.this.initMRAIDBridge(PMBannerAdView.this.mraidBridge);
        }

        @Override // com.pubmatic.sdk.banner.mraid.WebView.Handler
        public void webViewReceivedError(WebView webView, int i, String str, String str2) {
            PMBannerAdView.this.resetRichMediaAd();
            PMLogger.logEvent("Error loading rich media ad content.  Error code:" + String.valueOf(i) + " Description:" + str, PMLogger.LogLevel.Error);
            if (PMBannerAdView.this.requestListener != null) {
                PMBannerAdView.this.requestListener.onFailedToReceiveAd(PMBannerAdView.this, null);
            }
            PMBannerAdView.this.removeContent();
        }

        @Override // com.pubmatic.sdk.banner.mraid.WebView.Handler
        public boolean webViewShouldOverrideUrlLoading(WebView webView, String str) {
            PMBannerAdView.this.openUrl(str, false);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    private class MRAIDHandler implements Bridge.Handler {
        private MRAIDHandler() {
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidInit(Bridge bridge) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                if (bridge == PMBannerAdView.this.mraidBridge) {
                    PMBannerAdView.this.mraidBridgeInit = true;
                } else if (bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                    PMBannerAdView.this.mraidTwoPartBridgeInit = true;
                }
                PMBannerAdView.this.initMRAIDBridge(bridge);
            }
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidClose(final Bridge bridge) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                if (PMBannerAdView.this.placementType == Consts.PlacementType.Interstitial) {
                    if (PMBannerAdView.this.activityListener != null) {
                        PMBannerAdView.this.activityListener.onCloseButtonClick(PMBannerAdView.this);
                        return;
                    }
                    return;
                }
                switch (bridge.getState()) {
                    case Loading:
                    case Default:
                    case Hidden:
                    default:
                        return;
                    case Expanded:
                        if (PMBannerAdView.this.mraidExpandDialog != null) {
                            PMBannerAdView.this.mraidExpandDialog.dismiss();
                            PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (!PMBannerAdView.this.mraidTwoPartExpand) {
                                        PMBannerAdView.this.mraidExpandDialog.removeView(PMBannerAdView.this.webView);
                                        PMBannerAdView.this.addView(PMBannerAdView.this.webView);
                                    } else {
                                        PMBannerAdView.this.mraidExpandDialog.removeView(PMBannerAdView.this.mraidTwoPartWebView);
                                        PMBannerAdView.this.mraidTwoPartWebView = null;
                                        PMBannerAdView.this.mraidTwoPartBridge = null;
                                        PMBannerAdView.this.mraidTwoPartExpand = false;
                                    }
                                    PMBannerAdView.this.mraidExpandDialog = null;
                                    PMBannerAdView.this.updateMRAIDLayoutForState(PMBannerAdView.this.mraidBridge, Consts.State.Default);
                                    PMBannerAdView.this.mraidBridge.setState(Consts.State.Default);
                                    PMBannerAdView.this.resetMRAIDOrientation();
                                    if (PMBannerAdView.this.richMediaListener != null) {
                                        PMBannerAdView.this.richMediaListener.onCollapsed(PMBannerAdView.this);
                                    }
                                    if (bridge == PMBannerAdView.this.mraidBridge && PMBannerAdView.this.deferredUpdate) {
                                        PMBannerAdView.this.update();
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    case Resized:
                        PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (PMBannerAdView.this.mraidResizeLayout != null) {
                                    ViewGroup viewGroup = (ViewGroup) PMBannerAdView.this.webView.getParent();
                                    if (viewGroup != null) {
                                        viewGroup.removeView(PMBannerAdView.this.webView);
                                    }
                                    ViewGroup viewGroup2 = (ViewGroup) PMBannerAdView.this.mraidResizeLayout.getParent();
                                    if (viewGroup2 != null) {
                                        viewGroup2.removeView(PMBannerAdView.this.mraidResizeLayout);
                                    }
                                    PMBannerAdView.this.mraidResizeLayout = null;
                                    PMBannerAdView.this.mraidResizeCloseArea = null;
                                    PMBannerAdView.this.addView(PMBannerAdView.this.webView, new ViewGroup.LayoutParams(-1, -1));
                                    PMBannerAdView.this.updateMRAIDLayoutForState(bridge, Consts.State.Default);
                                    bridge.setState(Consts.State.Default);
                                    if (PMBannerAdView.this.richMediaListener != null) {
                                        PMBannerAdView.this.richMediaListener.onCollapsed(PMBannerAdView.this);
                                    }
                                    if (bridge == PMBannerAdView.this.mraidBridge && PMBannerAdView.this.deferredUpdate) {
                                        PMBannerAdView.this.update();
                                    }
                                }
                            }
                        });
                        return;
                }
            }
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidOpen(Bridge bridge, String str) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                PMBannerAdView.this.openUrl(str, false);
            }
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidUpdateCurrentPosition(Bridge bridge) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                PMBannerAdView.this.updateMRAIDLayoutForState(bridge, bridge.getState());
            }
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidUpdatedExpandProperties(Bridge bridge) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.3
                    @Override // java.lang.Runnable
                    public void run() {
                        PMBannerAdView.this.prepareCloseButton();
                    }
                });
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidExpand(Bridge bridge, final String str) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                if (PMBannerAdView.this.placementType == Consts.PlacementType.Interstitial) {
                    bridge.sendErrorMessage("Can not expand with placementType interstitial.", "expand");
                    return;
                }
                boolean z = false;
                if (!TextUtils.isEmpty(str)) {
                    z = true;
                }
                switch (bridge.getState()) {
                    case Loading:
                        if (!PMBannerAdView.this.mraidTwoPartExpand || z) {
                            bridge.sendErrorMessage("Can not expand while state is loading.", "expand");
                            return;
                        }
                    case Hidden:
                        return;
                    case Expanded:
                        bridge.sendErrorMessage("Can not expand while state is expanded.", "expand");
                        return;
                }
                if (!z) {
                    PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.4
                        @Override // java.lang.Runnable
                        public void run() {
                            PMBannerAdView.this.removeView(PMBannerAdView.this.webView);
                            PMBannerAdView.this.mraidExpandDialog = new ExpandDialog(PMBannerAdView.this.getContext());
                            PMBannerAdView.this.mraidExpandDialog.addView(PMBannerAdView.this.webView);
                            PMBannerAdView.this.mraidExpandDialog.show();
                        }
                    });
                } else {
                    PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.5
                        @Override // java.lang.Runnable
                        public void run() {
                            PMBannerAdView.this.renderTwoPartExpand(str);
                        }
                    });
                }
            }
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidUpdatedOrientationProperties(Bridge bridge) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.6
                    @Override // java.lang.Runnable
                    public void run() {
                        PMBannerAdView.this.setMRAIDOrientation();
                    }
                });
            }
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidUpdatedResizeProperties(Bridge bridge) {
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidResize(final Bridge bridge) {
            int[] iArr;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                if (PMBannerAdView.this.placementType == Consts.PlacementType.Interstitial) {
                    bridge.sendErrorMessage("Can not resize with placementType interstitial.", "resize");
                    return;
                }
                switch (bridge.getState()) {
                    case Loading:
                    case Hidden:
                    case Expanded:
                        bridge.sendErrorMessage("Can not resize loading, hidden or expanded.", "resize");
                        return;
                    case Default:
                    default:
                        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
                        int pxToDp = BannerUtils.pxToDp(displayMetrics.widthPixels);
                        int pxToDp2 = BannerUtils.pxToDp(displayMetrics.heightPixels);
                        PMBannerAdView.this.getLocationOnScreen(new int[2]);
                        int pxToDp3 = BannerUtils.pxToDp(iArr[0]);
                        int pxToDp4 = BannerUtils.pxToDp(iArr[1]);
                        ResizeProperties resizeProperties = bridge.getResizeProperties();
                        boolean allowOffscreen = resizeProperties.getAllowOffscreen();
                        int offsetX = pxToDp3 + resizeProperties.getOffsetX();
                        int offsetY = pxToDp4 + resizeProperties.getOffsetY();
                        int width = resizeProperties.getWidth();
                        int height = resizeProperties.getHeight();
                        Consts.CustomClosePosition customClosePosition = resizeProperties.getCustomClosePosition();
                        if (width >= pxToDp && height >= pxToDp2) {
                            bridge.sendErrorMessage("Size must be smaller than the max size.", "resize");
                            return;
                        } else if (width < 50 || height < 50) {
                            bridge.sendErrorMessage("Size must be at least the minimum close area size.", "resize");
                            return;
                        } else {
                            int statusBarHeightDp = PMBannerAdView.this.statusBarHeightDp();
                            if (!allowOffscreen) {
                                int i6 = width > pxToDp ? pxToDp : width;
                                int i7 = height > pxToDp2 ? pxToDp2 : height;
                                if (offsetX < 0) {
                                    i4 = 0;
                                } else {
                                    i4 = offsetX + i6 > pxToDp ? (int) (offsetX - ((offsetX + i6) - pxToDp)) : offsetX;
                                }
                                if (offsetY < statusBarHeightDp) {
                                    i5 = statusBarHeightDp;
                                } else {
                                    i5 = offsetY + i7 > pxToDp2 ? (int) (offsetY - ((offsetY + i7) - pxToDp2)) : offsetY;
                                }
                                int i8 = i7;
                                i3 = (int) (offsetY - (offsetY - i5));
                                i2 = i6;
                                i = (int) (offsetX - (offsetX - i4));
                                height = i8;
                            } else {
                                i = offsetX;
                                i2 = width;
                                i3 = offsetY;
                            }
                            int i9 = i2 - 50;
                            int i10 = 0;
                            switch (customClosePosition) {
                                case TopCenter:
                                    i9 = (i2 / 2) - 25;
                                    i10 = 0;
                                    break;
                                case TopLeft:
                                    i9 = 0;
                                    i10 = 0;
                                    break;
                                case BottomLeft:
                                    i9 = 0;
                                    i10 = height - 50;
                                    break;
                                case BottomCenter:
                                    i9 = (i2 / 2) - 25;
                                    i10 = height - 50;
                                    break;
                                case BottomRight:
                                    i9 = i2 - 50;
                                    i10 = height - 50;
                                    break;
                                case Center:
                                    i9 = (i2 / 2) - 25;
                                    i10 = (height / 2) - 25;
                                    break;
                            }
                            int i11 = i9 + i;
                            int i12 = i3 + i10;
                            int i13 = i11 + 50;
                            int i14 = i12 + 50;
                            if (i11 < 0 || i12 < statusBarHeightDp || i13 > pxToDp || i14 > pxToDp2) {
                                bridge.sendErrorMessage("Resize close control must remain on screen.", "resize");
                                return;
                            }
                            final int dpToPx = BannerUtils.dpToPx(i);
                            final int dpToPx2 = BannerUtils.dpToPx(i3);
                            final int dpToPx3 = BannerUtils.dpToPx(i2);
                            final int dpToPx4 = BannerUtils.dpToPx(height);
                            final int dpToPx5 = BannerUtils.dpToPx(i11);
                            final int dpToPx6 = BannerUtils.dpToPx(i12);
                            PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.7
                                @Override // java.lang.Runnable
                                public void run() {
                                    ViewGroup viewGroup = (ViewGroup) PMBannerAdView.this.getActivity().getWindow().getDecorView();
                                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dpToPx3, dpToPx4);
                                    layoutParams.setMargins(dpToPx, dpToPx2, Integer.MIN_VALUE, Integer.MIN_VALUE);
                                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(BannerUtils.dpToPx(50), BannerUtils.dpToPx(50));
                                    layoutParams2.setMargins(dpToPx5, dpToPx6, Integer.MIN_VALUE, Integer.MIN_VALUE);
                                    if (PMBannerAdView.this.mraidResizeLayout == null) {
                                        ViewGroup viewGroup2 = (ViewGroup) PMBannerAdView.this.webView.getParent();
                                        if (viewGroup2 != null) {
                                            viewGroup2.removeView(PMBannerAdView.this.webView);
                                        }
                                        PMBannerAdView.this.mraidResizeCloseArea = new View(PMBannerAdView.this.getContext());
                                        PMBannerAdView.this.mraidResizeCloseArea.setBackgroundColor(0);
                                        PMBannerAdView.this.mraidResizeCloseArea.setOnClickListener(new View.OnClickListener() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.7.1
                                            @Override // android.view.View.OnClickListener
                                            public void onClick(View view) {
                                                if (view == PMBannerAdView.this.mraidResizeCloseArea) {
                                                    PMBannerAdView.this.mraidBridgeHandler.mraidClose(bridge);
                                                }
                                            }
                                        });
                                        PMBannerAdView.this.mraidResizeLayout = new RelativeLayout(PMBannerAdView.this.getContext());
                                        PMBannerAdView.this.mraidResizeLayout.addView(PMBannerAdView.this.webView, layoutParams);
                                        PMBannerAdView.this.mraidResizeLayout.addView(PMBannerAdView.this.mraidResizeCloseArea, layoutParams2);
                                        viewGroup.addView(PMBannerAdView.this.mraidResizeLayout, 0, new ViewGroup.LayoutParams(-1, -1));
                                        viewGroup.bringChildToFront(PMBannerAdView.this.mraidResizeLayout);
                                    } else {
                                        PMBannerAdView.this.mraidResizeLayout.updateViewLayout(PMBannerAdView.this.webView, layoutParams);
                                        PMBannerAdView.this.mraidResizeLayout.updateViewLayout(PMBannerAdView.this.mraidResizeCloseArea, layoutParams2);
                                    }
                                    PMBannerAdView.this.updateMRAIDLayoutForState(bridge, Consts.State.Resized);
                                    bridge.setState(Consts.State.Resized);
                                    if (PMBannerAdView.this.richMediaListener != null) {
                                        PMBannerAdView.this.richMediaListener.onResized(PMBannerAdView.this, new Rect(dpToPx, dpToPx2, dpToPx3, dpToPx4));
                                    }
                                }
                            });
                            return;
                        }
                }
            }
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidPlayVideo(Bridge bridge, String str) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                if (PMBannerAdView.this.richMediaListener == null || !PMBannerAdView.this.richMediaListener.onPlayVideo(PMBannerAdView.this, str)) {
                    PMBannerAdView.this.openUrl(str, true);
                }
            }
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidCreateCalendarEvent(Bridge bridge, String str) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                if (PMBannerAdView.this.featureSupportHandler != null && !PMBannerAdView.this.featureSupportHandler.shouldAddCalendarEntry(PMBannerAdView.this, str)) {
                    bridge.sendErrorMessage("Access denied.", Consts.CommandCreateCalendarEvent);
                    return;
                }
                try {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ");
                    JSONObject jSONObject = new JSONObject(str);
                    final Intent intent = new Intent("android.intent.action.EDIT");
                    intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
                    if (jSONObject.has(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)) {
                        intent.putExtra("beginTime", simpleDateFormat.parse(jSONObject.getString(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)).getTime());
                    }
                    if (jSONObject.has("end")) {
                        intent.putExtra("endTime", simpleDateFormat.parse(jSONObject.getString("end")).getTime());
                    }
                    if (jSONObject.has("description")) {
                        intent.putExtra("title", jSONObject.getString("description"));
                    }
                    if (jSONObject.has("summary")) {
                        intent.putExtra("description", jSONObject.getString("summary"));
                    }
                    if (jSONObject.has(a.b.LOCATION)) {
                        intent.putExtra("eventLocation", jSONObject.getString(a.b.LOCATION));
                    }
                    PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.8
                        @Override // java.lang.Runnable
                        public void run() {
                            if (PMBannerAdView.this.intentAvailable(intent)) {
                                PMBannerAdView.this.getContext().startActivity(intent);
                                if (PMBannerAdView.this.activityListener != null) {
                                    PMBannerAdView.this.activityListener.onLeavingApplication(PMBannerAdView.this);
                                    return;
                                }
                                return;
                            }
                            PMLogger.logEvent("Unable to start activity for calendary edit.", PMLogger.LogLevel.Error);
                        }
                    });
                } catch (Exception e) {
                    bridge.sendErrorMessage("Error parsing event data.", Consts.CommandCreateCalendarEvent);
                }
            }
        }

        @Override // com.pubmatic.sdk.banner.mraid.Bridge.Handler
        public void mraidStorePicture(final Bridge bridge, String str) {
            if (bridge == PMBannerAdView.this.mraidBridge || bridge == PMBannerAdView.this.mraidTwoPartBridge) {
                if (!TextUtils.isEmpty(str)) {
                    if (PMBannerAdView.this.featureSupportHandler != null && !PMBannerAdView.this.featureSupportHandler.shouldStorePicture(PMBannerAdView.this, str)) {
                        bridge.sendErrorMessage("Access denied.", Consts.CommandStorePicture);
                        return;
                    } else {
                        ImageRequest.create(5, str, PMBannerAdView.this.getUserAgent(), false, new ImageRequest.Handler() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.9
                            @Override // com.pubmatic.sdk.banner.ImageRequest.Handler
                            public void imageFailed(ImageRequest imageRequest, Exception exc) {
                                bridge.sendErrorMessage("Network error connecting to url.", Consts.CommandStorePicture);
                                PMLogger.logEvent("Error obtaining photo request to save to camera roll.  Exception:" + exc, PMLogger.LogLevel.Error);
                            }

                            @Override // com.pubmatic.sdk.banner.ImageRequest.Handler
                            public void imageReceived(ImageRequest imageRequest, Object obj) {
                                final Bitmap bitmap = (Bitmap) obj;
                                PMBannerAdView.this.runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.MRAIDHandler.9.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        try {
                                            String insertImage = MediaStore.Images.Media.insertImage(PMBannerAdView.this.getContext().getContentResolver(), bitmap, "AdImage", "Image created by rich media ad.");
                                            if (TextUtils.isEmpty(insertImage)) {
                                                bridge.sendErrorMessage("Error saving picture to device.", Consts.CommandStorePicture);
                                                PMLogger.logEvent("Error saving picture to device.", PMLogger.LogLevel.Error);
                                            } else {
                                                MediaScannerConnection.scanFile(PMBannerAdView.this.getContext(), new String[]{insertImage}, null, null);
                                            }
                                        } catch (Exception e) {
                                            bridge.sendErrorMessage("Error saving picture to device.", Consts.CommandStorePicture);
                                            PMLogger.logEvent("Error saving picture to device. Exception:" + e, PMLogger.LogLevel.Error);
                                        }
                                    }
                                });
                            }
                        });
                        return;
                    }
                }
                bridge.sendErrorMessage("Missing picture url.", Consts.CommandStorePicture);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class ExpandDialog extends Dialog {
        private ViewGroup closeArea;
        private ViewGroup container;

        public ExpandDialog(Context context) {
            super(context, 16973831);
            this.container = null;
            this.closeArea = null;
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            this.container = new RelativeLayout(getContext());
            this.container.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            setContentView(this.container, layoutParams);
            this.container.setOnClickListener(new View.OnClickListener() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.ExpandDialog.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (((PMBannerAdView.this.imageView != null && PMBannerAdView.this.imageView.getParent() == ExpandDialog.this.container) || (PMBannerAdView.this.textView != null && PMBannerAdView.this.textView.getParent() == ExpandDialog.this.container)) && PMBannerAdView.this.mAdDescriptor != null && !TextUtils.isEmpty(PMBannerAdView.this.mAdDescriptor.getURL())) {
                        PMBannerAdView.this.openUrl(PMBannerAdView.this.mAdDescriptor.getURL(), false);
                    }
                }
            });
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(BannerUtils.dpToPx(50), BannerUtils.dpToPx(50));
            layoutParams2.addRule(11);
            layoutParams2.addRule(10);
            this.closeArea = new RelativeLayout(getContext());
            this.closeArea.setBackgroundColor(0);
            this.container.addView(this.closeArea, layoutParams2);
            this.closeArea.setOnClickListener(new View.OnClickListener() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.ExpandDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (PMBannerAdView.this.activityListener == null || !PMBannerAdView.this.activityListener.onCloseButtonClick(PMBannerAdView.this)) {
                        ExpandDialog.this.dismiss();
                    }
                }
            });
            setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.ExpandDialog.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (PMBannerAdView.this.mraidBridge != null) {
                        switch (PMBannerAdView.this.placementType) {
                            case Inline:
                                if (PMBannerAdView.this.mraidBridge.getState() == Consts.State.Expanded) {
                                    PMBannerAdView.this.mraidBridgeHandler.mraidClose(PMBannerAdView.this.mraidBridge);
                                    break;
                                }
                                break;
                            case Interstitial:
                                PMBannerAdView.this.mraidBridge.setState(Consts.State.Hidden);
                                break;
                        }
                    }
                    PMBannerAdView.this.resetMRAIDOrientation();
                }
            });
        }

        @Override // android.app.Dialog
        protected void onStart() {
            super.onStart();
            switch (PMBannerAdView.this.placementType) {
                case Inline:
                    if (!PMBannerAdView.this.mraidTwoPartExpand) {
                        PMBannerAdView.this.updateMRAIDLayoutForState(PMBannerAdView.this.mraidBridge, Consts.State.Expanded);
                    }
                    PMBannerAdView.this.mraidBridge.setState(Consts.State.Expanded);
                    break;
            }
            this.closeArea.bringToFront();
            if (PMBannerAdView.this.mraidBridge != null && PMBannerAdView.this.richMediaListener != null) {
                PMBannerAdView.this.richMediaListener.onExpanded(PMBannerAdView.this);
            }
            PMBannerAdView.this.prepareCloseButton();
        }

        @Override // android.app.Dialog
        public void onBackPressed() {
            if (this == PMBannerAdView.this.interstitialDialog) {
                if (this.closeArea.getBackground() != null) {
                    if (PMBannerAdView.this.activityListener != null && PMBannerAdView.this.activityListener.onCloseButtonClick(PMBannerAdView.this)) {
                        return;
                    }
                } else {
                    return;
                }
            }
            super.onBackPressed();
        }

        public void addView(View view) {
            if (view.getParent() != this.container) {
                if (view.getParent() != null) {
                    ((ViewGroup) view.getParent()).removeView(view);
                }
                this.container.addView(view, new ViewGroup.LayoutParams(-1, -1));
            }
            this.closeArea.bringToFront();
        }

        public void removeView(View view) {
            this.container.removeView(view);
        }

        public void removeAllViews() {
            int childCount = this.container.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.container.getChildAt(i);
                if (childAt != this.closeArea) {
                    this.container.removeView(childAt);
                }
            }
        }

        public void setCloseImage(Drawable drawable) {
            this.closeArea.removeAllViews();
            if (drawable != null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                int pxToDp = BannerUtils.pxToDp(15.0f);
                layoutParams.setMargins(pxToDp, pxToDp, pxToDp, pxToDp);
                ImageView imageView = new ImageView(getContext());
                imageView.setBackgroundColor(0);
                imageView.setImageDrawable(drawable);
                ((RelativeLayout) this.closeArea).addView(imageView, layoutParams);
            }
        }

        @Override // android.app.Dialog
        public void show() {
            super.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class LocationListener implements android.location.LocationListener {
        public LocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            PMLogger.logEvent("LocationListener.onLocationChanged location:" + location.toString(), PMLogger.LogLevel.Debug);
            String valueOf = String.valueOf(location.getLatitude());
            String valueOf2 = String.valueOf(location.getLongitude());
            PMBannerAdView.this.adRequestDefaultParameters.put("lat", valueOf);
            PMBannerAdView.this.adRequestDefaultParameters.put("long", valueOf2);
            PMBannerAdView.this.adRequestDefaultParameters.put("provider", location.getProvider());
            PMBannerAdView.this.location = location;
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            PMLogger.logEvent("LocationListener.onProviderDisabled provider:" + str, PMLogger.LogLevel.Debug);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            PMLogger.logEvent("LocationListener.onProviderEnabled provider:" + str, PMLogger.LogLevel.Debug);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            PMLogger.logEvent("LocationListener.onStatusChanged provider:" + str + " status:" + String.valueOf(i), PMLogger.LogLevel.Debug);
            if (i != 2) {
                PMBannerAdView.this.adRequestDefaultParameters.remove("lat");
                PMBannerAdView.this.adRequestDefaultParameters.remove("long");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Activity getActivity() {
        Context context = getContext();
        if (!(context instanceof Activity)) {
            return null;
        }
        return (Activity) context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean intentAvailable(Intent intent) {
        List<ResolveInfo> queryIntentActivities = getContext().getPackageManager().queryIntentActivities(intent, 65536);
        return queryIntentActivities != null && !queryIntentActivities.isEmpty();
    }

    protected final void runOnUiThread(final Runnable runnable) {
        if (runnable != null) {
            Runnable runnable2 = new Runnable() { // from class: com.pubmatic.sdk.banner.PMBannerAdView.12
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } catch (Exception e) {
                        PMLogger.logEvent("Exception during runOnUiThread:" + e, PMLogger.LogLevel.Error);
                    }
                }
            };
            Context context = getContext();
            if (context instanceof Activity) {
                ((Activity) context).runOnUiThread(runnable2);
            } else {
                PMLogger.logEvent("Context not instance of Activity, unable to run on UI thread.", PMLogger.LogLevel.Error);
            }
        }
    }

    public int statusBarHeightDp() {
        int identifier;
        View rootView = getRootView();
        if (rootView == null || (identifier = rootView.getResources().getIdentifier("status_bar_height", "dimen", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE)) <= 0) {
            return 25;
        }
        return BannerUtils.pxToDp(rootView.getResources().getDimensionPixelSize(identifier));
    }

    private static String getUdidFromContext(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return string == null ? "" : sha1(string);
    }

    @SuppressLint({"DefaultLocale"})
    public static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString().toLowerCase();
        } catch (Exception e) {
            return "";
        }
    }

    /* loaded from: classes3.dex */
    public class ScreenReceiver extends BroadcastReceiver {
        public ScreenReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                PMBannerAdView.isScreenOn = false;
            } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                PMBannerAdView.isScreenOn = true;
            }
            PMBannerAdView.this.setMraidViewable(PMBannerAdView.isScreenOn);
        }
    }

    public void registerReceiver() {
        if (this.filter == null) {
            this.filter = new IntentFilter("android.intent.action.SCREEN_ON");
            this.filter.addAction("android.intent.action.SCREEN_OFF");
        }
        if (this.mReceiver == null) {
            this.mReceiver = new ScreenReceiver();
            getContext().registerReceiver(this.mReceiver, this.filter);
        }
    }

    public void unregisterReceiver() {
        if (this.mReceiver != null) {
            getContext().unregisterReceiver(this.mReceiver);
        }
    }

    public void setMraidViewable(boolean z) {
        if (this.mraidBridge != null) {
            this.mraidBridge.setViewable(z);
        }
    }

    private void createDefaultAdRequest(AttributeSet attributeSet) {
        try {
            switch (this.mChannel) {
                case MOCEAN:
                    Class<?> cls = Class.forName("com.pubmatic.sdk.banner.mocean.MoceanBannerAdRequest");
                    this.mAdRequest = (AdRequest) cls.getMethod("createMoceanBannerAdRequest", Context.class, String.class).invoke(null, getContext(), null);
                    cls.getMethod("setAttributes", AttributeSet.class).invoke(this.mAdRequest, attributeSet);
                    break;
                case PUBMATIC:
                    Class<?> cls2 = Class.forName("com.pubmatic.sdk.banner.pubmatic.PubMaticBannerAdRequest");
                    this.mAdRequest = (AdRequest) cls2.getMethod("createPubMaticBannerAdRequest", Context.class, String.class, String.class, String.class).invoke(null, getContext(), null, null, null);
                    cls2.getMethod("setAttributes", AttributeSet.class).invoke(this.mAdRequest, attributeSet);
                    break;
            }
            createRRFormatter();
        } catch (ClassCastException e) {
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
        }
    }

    public void setAdRequest(AdRequest adRequest) {
        if (adRequest == null) {
            throw new IllegalArgumentException("AdRequest object is null");
        }
        this.mAdRequest = adRequest;
        createRRFormatter();
    }

    private void createRRFormatter() {
        if (this.mAdRequest != null) {
            try {
                this.mRRFormatter = (RRFormatter) Class.forName(this.mAdRequest.getFormatter()).newInstance();
            } catch (ClassCastException e) {
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
            } catch (InstantiationException e4) {
                e4.printStackTrace();
            }
        }
    }

    public RRFormatter getRRFormatter() {
        return this.mRRFormatter;
    }

    public boolean checkMandatoryParams() {
        if (this.mAdRequest == null) {
            return false;
        }
        return this.mAdRequest.checkMandatoryParams();
    }
}
