package com.openx.view;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.model.AdCreative;
import com.openx.sdk.event.OXMEvent;
import com.openx.sdk.event.OXMEventsHandler;
import com.openx.sdk.event.OXMEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
import java.util.HashSet;
/* loaded from: classes3.dex */
public class AdWebViewClient extends WebViewClient {
    private static final String TAG = "AdWebViewClient";
    private AdAssetsLoadedListener adAssetsLoadedListener;
    private WebViewBase adWebView;
    private boolean clickTracked;
    private int global_final_height;
    private int global_final_width;
    private boolean isEventRegistered;
    private String mPageUrl;
    private boolean pageFinished;
    boolean loadingFinished = true;
    boolean redirect = false;
    private long TIMEOUT = 20000;
    private HashSet<String> urls = new HashSet<>();
    private OXMEventsListener eventsManager = OXMManagersResolver.getInstance().getEventsManager();
    private OXMEventsHandler mCloseEventsListener = new OXMEventsHandler() { // from class: com.openx.view.AdWebViewClient.1
        @Override // com.openx.sdk.event.OXMEventsHandler
        public void onPerform(OXMEvent oXMEvent) {
            OXLog.debug(AdWebViewClient.TAG, "######## Closing");
            AdWebViewClient.this.adWebView.setIsClicked(false);
            AdWebViewClient.this.eventsManager.unregisterEventListener(OXMEvent.OXMEventType.CLOSE_ACTIVE_INTERNAL_WINDOW, AdWebViewClient.this.mCloseEventsListener);
            AdWebViewClient.this.isEventRegistered = false;
        }
    };

    /* loaded from: classes3.dex */
    public interface AdAssetsLoadedListener {
        void adAssetsLoaded();

        void adTimeOut(WebViewBase webViewBase);
    }

    public AdWebViewClient(AdAssetsLoadedListener adAssetsLoadedListener) {
        this.adAssetsLoadedListener = adAssetsLoadedListener;
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        OXLog.debug(TAG, "@@@@@@@@ Registering Closing Event Listener");
        if (!this.isEventRegistered) {
            this.eventsManager.registerEventListener(OXMEvent.OXMEventType.CLOSE_ACTIVE_INTERNAL_WINDOW, this.mCloseEventsListener);
            this.isEventRegistered = true;
        }
        this.mPageUrl = str;
        this.loadingFinished = false;
        this.adWebView = (WebViewBase) webView;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        OXLog.debug(TAG, "onPageFinished...");
        this.adWebView = (WebViewBase) webView;
        if (this.adWebView.getAd().getCreative() != null) {
            OXLog.debug(TAG, "AdwebviewClient : onPageFinished(): regular: width: " + this.adWebView.getAd().getCreative().getWidth() + " Height: " + this.adWebView.getAd().getCreative().getHeight());
            getFactor(this.adWebView.getAd().getCreative().getWidth(), this.adWebView.getAd().getCreative().getHeight());
        } else if (this.adWebView.getAd() instanceof ChainItem) {
            OXLog.debug(TAG, "AdwebviewClient : onPageFinished(): chain: width: " + ((ChainItem) this.adWebView.getAd()).width + " chain Height: " + ((ChainItem) this.adWebView.getAd()).height);
            getFactor(((ChainItem) this.adWebView.getAd()).width, ((ChainItem) this.adWebView.getAd()).height);
        }
        this.adWebView.loadUrl("javascript: var x; x = document.getElementsByTagName('img'); for(var i = 0; i< x.length; i++){ \tif(x[i].width > 1)\t{\t\t\tx[i].width = " + this.global_final_width + ";\t\t\tx[i].height = " + this.global_final_height + ";" + (Utils.atMostJB() ? " x[i].style.width = 'auto'; x[i].style.height = 'auto';" : "") + "\t\tbreak;\t}}");
        if (!this.redirect) {
            this.loadingFinished = true;
        }
        if (this.loadingFinished && !this.redirect) {
            this.pageFinished = true;
            OXLog.debug(TAG, "AD_ASSETS_LOADED! n 170 AdWebViewClient");
            this.adAssetsLoadedListener.adAssetsLoaded();
            webView.setBackgroundColor(0);
            return;
        }
        this.redirect = false;
    }

    private void getFactor(int i, int i2) {
        Display defaultDisplay = ((WindowManager) this.adWebView.getContext().getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        if (i > width || i2 > height) {
            double d = (width * 1.0d) / i;
            double d2 = (height * 1.0d) / i2;
            if (d2 <= d) {
                d = d2;
            }
            double densityScalingFactor = d / this.adWebView.densityScalingFactor();
            i = (int) (i * densityScalingFactor);
            i2 = (int) (densityScalingFactor * i2);
        }
        this.global_final_width = i;
        this.global_final_height = i2;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        if (!str.equals(this.mPageUrl)) {
            if (this.adWebView.isClicked() && !this.urls.contains(str) && webView.getHitTestResult() != null && (webView.getHitTestResult().getType() == 7 || webView.getHitTestResult().getType() == 8)) {
                OXLog.debug(TAG, "######### : " + webView.getHitTestResult().getType());
                webView.stopLoading();
                webView.loadUrl(str);
            }
            this.urls.add(str);
            super.onLoadResource(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        int indexOf;
        OXLog.debug(TAG, "######### : shouldOverrideUrlLoading :url: " + str);
        if (!this.adWebView.isClicked()) {
            webView.stopLoading();
            this.adWebView.loadUrl("javascript:window.HtmlViewer.showHTML('<html>'+document.getElementsByTagName('html')[0].innerHTML+'</html>');");
        } else {
            this.urls.clear();
            if (!this.loadingFinished) {
                this.redirect = true;
            }
            this.loadingFinished = false;
            Utils.log(this, String.format(Utils.getLogMessage("opening_url"), str));
            AdCreative creative = this.adWebView.getAd().getCreative();
            String clickURL = (creative == null || creative.getTracking() == null) ? null : creative.getTracking().getClickURL();
            OXLog.debug(TAG, "######### : shouldOverrideUrlLoading :clickURL: " + clickURL);
            if (!TextUtils.isEmpty(clickURL) && (indexOf = clickURL.indexOf("?")) != -1) {
                clickURL.substring(0, indexOf);
            }
            if (!str.equals(clickURL) && !TextUtils.isEmpty(clickURL) && !this.clickTracked) {
                Utils.log(this, "Tracking Click");
                this.clickTracked = true;
                ((AdBase) this.adWebView.getPreloadedListener()).getAdModel().trackAdModelEvents("click", clickURL);
            }
            if (this.adWebView.getMRAID() != null) {
                this.loadingFinished = true;
                this.pageFinished = false;
                this.redirect = false;
                this.urls.clear();
                if (this.adWebView.getAdEventsListener() != null) {
                    this.adWebView.getAdEventsListener().onAdClicked();
                }
                this.adWebView.getMRAID().open(str);
                this.clickTracked = false;
            }
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        return super.shouldOverrideKeyEvent(webView, keyEvent);
    }
}
