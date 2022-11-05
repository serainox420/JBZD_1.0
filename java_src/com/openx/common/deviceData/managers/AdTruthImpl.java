package com.openx.common.deviceData.managers;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.AudienceNetworkActivity;
import com.openx.common.deviceData.listeners.AdTruthListener;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.sdk.OXMBaseManager;
import com.openx.core.sdk.OXMManagersResolver;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes3.dex */
public class AdTruthImpl extends OXMBaseManager implements AdTruthListener {
    private String mDomain;
    private JSBridge mJSBridge;
    private WebView mWebView;
    private static String HTML_TEMPLATE = "<html><head><script type='text/javascript' src='%s'></script></head><body></body></html>";
    private static String AD_TRUTH_JS_URL = "/w/1.0/tpat";

    @Override // com.openx.common.deviceData.listeners.AdTruthListener
    public void setDomain(String str) {
        this.mDomain = str;
    }

    @Override // com.openx.common.deviceData.listeners.AdTruthListener
    public String readAdTruth() {
        OXMPreference loadAdTruthValue = OXMManagersResolver.getInstance().getPreferencesManager().loadAdTruthValue();
        if (TextUtils.isEmpty(loadAdTruthValue.getValue()) || loadAdTruthValue.isExpired()) {
            updateAdTruth();
        }
        return loadAdTruthValue.getValue();
    }

    @Override // com.openx.common.deviceData.listeners.AdTruthListener
    public void updateAdTruth() {
        if (!Utils.avoidJSC_MOB273()) {
            FileOutputStream fileOutputStream = null;
            String format = String.format(HTML_TEMPLATE, this.mDomain + AD_TRUTH_JS_URL);
            try {
                try {
                    if (getContext().getFileStreamPath("adtruth.html").exists()) {
                        getContext().deleteFile("adtruth.html");
                    }
                    fileOutputStream = getContext().openFileOutput("adtruth.html", 0);
                    fileOutputStream.write(format.getBytes(AudienceNetworkActivity.WEBVIEW_ENCODING));
                } finally {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e) {
                        Utils.log(this, e.getMessage());
                    }
                }
            } catch (Exception e2) {
                Utils.log(this, e2.getMessage());
                try {
                    fileOutputStream.close();
                } catch (IOException e3) {
                    Utils.log(this, e3.getMessage());
                }
            }
            String path = getContext().getFileStreamPath("adtruth.html").getPath();
            getWebView().clearView();
            getWebView().loadUrl("file://" + path);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebView getWebView() {
        return this.mWebView;
    }

    @Override // com.openx.core.sdk.OXMBaseManager, com.openx.core.sdk.OXMManager
    public void init(Context context) {
        super.init(context);
        if (super.isInit()) {
            this.mWebView = new WebView(context);
            this.mJSBridge = new JSBridge();
            this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.openx.common.deviceData.managers.AdTruthImpl.1
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    if (AdTruthImpl.this.getWebView() != null) {
                        AdTruthImpl.this.getWebView().loadUrl("javascript: OX.tp_adtruth.getData(function() { jsBridge.handleResponse(JSON.stringify(OX.tp_adtruth.data)); });");
                    }
                }
            });
            WebSettings settings = this.mWebView.getSettings();
            settings.setCacheMode(-1);
            settings.setJavaScriptEnabled(true);
            this.mWebView.addJavascriptInterface(this.mJSBridge, "jsBridge");
        }
    }

    /* loaded from: classes.dex */
    class JSBridge {
        JSBridge() {
        }

        @JavascriptInterface
        public void handleResponse(String str) {
            OXMManagersResolver.getInstance().getPreferencesManager().saveAdTruthValue(str, false);
        }
    }
}
