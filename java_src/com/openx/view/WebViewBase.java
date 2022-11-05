package com.openx.view;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.openx.android_sdk_openx.R;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.sdk.OXSettings;
import com.openx.dialogs.AdBaseDialog;
import com.openx.model.Ad;
import com.openx.model.AdModel;
import com.openx.model.AdType;
import com.openx.view.AdWebViewClient;
import com.openx.view.mraid.BaseJSInterface;
import com.openx.view.video.PreloadManager;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public class WebViewBase extends AdWebView implements AdWebViewClient.AdAssetsLoadedListener {
    private static final String TAG = "WebViewBase";
    static String script;
    private AdEventsListener adEventsListener;
    private String adHTML;
    private AdModel adModel;
    private AdType adType;
    private Context context;
    private AdBaseDialog dialog;
    private int height;
    private boolean isClicked;
    private boolean isMRAID;
    private boolean isManuallyRefreshed;
    private boolean isPortrait;
    LoadedListener loadedListener;
    private ViewGroup mDefaultParentView;
    private Rect mDefaultPosition;
    private String mOrientationProperties;
    private BaseJSInterface mraid;
    private UUID parentId;
    private PreloadManager.PreloadedListener preloadedListener;
    private boolean trackedImpression;
    private int width;

    /* loaded from: classes3.dex */
    public interface LoadedListener {
        void onLoaded();
    }

    public boolean isManuallyRefreshed() {
        return this.isManuallyRefreshed;
    }

    public void setManuallyRefreshed(boolean z) {
        this.isManuallyRefreshed = z;
    }

    public void setDialog(AdBaseDialog adBaseDialog) {
        this.dialog = adBaseDialog;
    }

    public AdBaseDialog getDialog() {
        return this.dialog;
    }

    public String getAdHTML() {
        return this.adHTML;
    }

    public WebViewBase(Context context, Ad ad, boolean z, PreloadManager.PreloadedListener preloadedListener) {
        super(context, ad, z);
        this.isClicked = false;
        this.isManuallyRefreshed = false;
        this.context = context;
        this.ad = ad;
        this.preloadedListener = preloadedListener;
        this.isPortrait = z;
        if (this instanceof WebViewInterstitial) {
            setAd(ad);
            loadAd();
        }
    }

    public WebViewBase(Context context, Ad ad, UUID uuid, boolean z, PreloadManager.PreloadedListener preloadedListener) {
        super(context, ad, z);
        this.isClicked = false;
        this.isManuallyRefreshed = false;
        this.context = context;
        this.ad = ad;
        this.preloadedListener = preloadedListener;
        this.parentId = uuid;
        this.isPortrait = z;
        if (this instanceof WebViewInterstitial) {
            setAd(ad);
            loadAd();
        }
    }

    public WebViewBase(Context context, boolean z, PreloadManager.PreloadedListener preloadedListener) {
        super(context, null, z);
        this.isClicked = false;
        this.isManuallyRefreshed = false;
        this.context = context;
        this.preloadedListener = preloadedListener;
        this.isPortrait = z;
    }

    @Override // com.openx.view.AdWebView
    public void init() {
    }

    @Override // com.openx.view.AdWebView
    public void initializeWebView() {
    }

    @Override // com.openx.view.AdWebView
    public void initializeWebSettings() {
    }

    public void setAd(Ad ad) {
        this.ad = ad;
        super.initializeWebView();
        super.initializeWebSettings();
    }

    public void loadAd() {
        OXLog.debug(TAG, "loadAd() ln 141");
        initLoad();
        setOnTouchListener(new View.OnTouchListener() { // from class: com.openx.view.WebViewBase.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                WebViewBase.this.isClicked = true;
                return motionEvent.getAction() == 2;
            }
        });
        loadDataWithBaseURL("", this.adHTML, "text/html", "UTF-8", null);
    }

    public void setParentId(UUID uuid) {
        this.parentId = uuid;
    }

    public void removeListener() {
        this.preloadedListener = null;
    }

    public boolean isClicked() {
        return this.isClicked;
    }

    public void setIsClicked(boolean z) {
        this.isClicked = z;
    }

    public void setAdModel(AdModel adModel) {
        this.adModel = adModel;
    }

    public AdModel getAdModel() {
        return this.adModel;
    }

    public void setAdEventsListener(AdEventsListener adEventsListener) {
        this.adEventsListener = adEventsListener;
    }

    public AdEventsListener getAdEventsListener() {
        return this.adEventsListener;
    }

    public void setTrackedImpression(boolean z) {
        this.trackedImpression = z;
    }

    public boolean getTrackedImpression() {
        return this.trackedImpression;
    }

    public PreloadManager.PreloadedListener getPreloadedListener() {
        return this.preloadedListener;
    }

    public void setOrientationProperties(String str) {
        this.mOrientationProperties = str;
    }

    public String getOrientationProperties() {
        return this.mOrientationProperties;
    }

    public void setDefaultPosition(Rect rect) {
        this.mDefaultPosition = rect;
    }

    public Rect getDefaultPosition() {
        return this.mDefaultPosition;
    }

    public ViewGroup getParentContainer() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) parent;
    }

    public ViewGroup detachFromParent() {
        ViewGroup parentContainer = getParentContainer();
        if (parentContainer != null) {
            parentContainer.removeView(this);
            return parentContainer;
        }
        return null;
    }

    public void setDefaultParentView(ViewGroup viewGroup) {
        this.mDefaultParentView = viewGroup;
    }

    public ViewGroup getDefaultParentView() {
        return this.mDefaultParentView;
    }

    public Context getParentContext() {
        return this.context;
    }

    public BaseJSInterface getMRAID() {
        return this.mraid;
    }

    public void setBaseJSInterface(BaseJSInterface baseJSInterface) {
        this.mraid = baseJSInterface;
    }

    public boolean isPortrait() {
        return this.isPortrait;
    }

    public UUID getParentId() {
        return this.parentId;
    }

    public Ad getAd() {
        return this.ad;
    }

    public void setAdWidth(int i) {
        this.width = i;
    }

    public int getAdWidth() {
        return this.width;
    }

    public void setAdHeight(int i) {
        this.height = i;
    }

    public int getAdHeight() {
        return this.height;
    }

    public void setAdType(AdType adType) {
        this.adType = adType;
    }

    public AdType getAdType() {
        return this.adType;
    }

    public boolean isMRAID() {
        return this.isMRAID;
    }

    public void initLoad() {
        setVisibility(4);
        if (BaseJSInterface.disabledFlags == null) {
            OXSettings.setDisabledSupportFlags(0);
        }
        setAdAssetsLoadListener(this);
        this.adHTML = this.ad.getHTML();
        try {
            this.adHTML = this.adHTML.replace(this.ad.getCreative().getTracking().getImpressionURL(), "");
        } catch (Exception e) {
        }
        this.isMRAID = Pattern.compile("<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\'])mraid\\.js\\1[^>]*>\\s*</script>\\n*", 2).matcher(this.adHTML).find();
        this.adHTML = this.adHTML.replaceAll("<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\'])mraid\\.js\\1[^>]*>\\s*</script>\\n*", "");
        if (this.isMRAID && TextUtils.isEmpty(script)) {
            script = Utils.loadStringFromFile(getResources(), R.raw.mraid);
        }
        if (this.isMRAID) {
            OXLog.debug(TAG, "preloaded isMRAID");
            if (this instanceof WebViewBanner) {
                ((WebViewBanner) this).setMRAIDInterface();
            }
        }
        this.adHTML = "<html><head>" + buildViewportMetaTag() + "<script type='text/javascript'>" + (this.isMRAID ? script : "") + "</script></head><body style='margin: 0; padding: 0; '>" + this.adHTML + "</body></html>";
    }

    public void stoppedLoading() {
        this.preloadedListener.stoppedLoading();
    }

    private String buildViewportMetaTag() {
        String format;
        String initialScaleValue = getInitialScaleValue();
        if (!TextUtils.isEmpty(initialScaleValue)) {
            if (Utils.atLeastKitKat()) {
                OXLog.debug(TAG, "WebviewBase : metatag is rightly set: scale is not null");
                format = new StringBuilder("<meta name='viewport' content='width=device-width' />").toString();
            } else {
                format = String.format(new StringBuilder("<meta name='viewport' content='width=device-width, initial-scale=%1$s, maximum-scale=%1$s, minimum-scale=%1$s, user-scalable=yes, target-densityDpi=device-dpi' />").toString(), initialScaleValue);
            }
            Utils.log(this, "meta scale: " + initialScaleValue);
            return format;
        }
        OXLog.debug(TAG, " WebviewBase : Hardcoding metatag: Something is wrong. Check!! scale is  null!!");
        return new StringBuilder("<meta name='viewport' content='width=device-width' />").toString();
    }

    public void setLoadedListener(LoadedListener loadedListener) {
        this.loadedListener = loadedListener;
    }

    public LoadedListener getLoadedListener() {
        return this.loadedListener;
    }

    @Override // com.openx.view.AdWebViewClient.AdAssetsLoadedListener
    public void adAssetsLoaded() {
        if (this.isMRAID) {
            this.mraid.onReady();
            if (getLoadedListener() != null) {
                getLoadedListener().onLoaded();
            }
        }
        if ((!(this instanceof WebViewInterstitial) || !((WebViewInterstitial) this).isImage) && this.preloadedListener != null) {
            this.preloadedListener.preloaded(this);
        }
    }

    @Override // com.openx.view.AdWebViewClient.AdAssetsLoadedListener
    public void adTimeOut(WebViewBase webViewBase) {
        if (this.preloadedListener != null) {
            this.preloadedListener.timedOut(webViewBase);
        }
    }
}
