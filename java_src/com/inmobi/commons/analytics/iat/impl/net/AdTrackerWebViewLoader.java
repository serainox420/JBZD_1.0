package com.inmobi.commons.analytics.iat.impl.net;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.AudienceNetworkActivity;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;
@SuppressLint({"SetJavaScriptEnabled"})
/* loaded from: classes2.dex */
public class AdTrackerWebViewLoader {

    /* renamed from: a  reason: collision with root package name */
    private WebView f3755a;
    private Goal b;
    private String c;
    private long d = 0;
    private long e = 0;

    public AdTrackerWebViewLoader() {
        AdTrackerNetworkInterface.getUIHandler().post(new Runnable() { // from class: com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.1
            @Override // java.lang.Runnable
            public void run() {
                AdTrackerWebViewLoader.this.f3755a = new WebView(InternalSDKUtil.getContext());
                AdTrackerWebViewLoader.this.f3755a.setWebViewClient(new AdTrackerWebViewClient());
                AdTrackerWebViewLoader.this.f3755a.getSettings().setJavaScriptEnabled(true);
                AdTrackerWebViewLoader.this.f3755a.getSettings().setCacheMode(2);
                AdTrackerWebViewLoader.this.f3755a.addJavascriptInterface(new JSInterface(), AdTrackerConstants.IATNAMESPACE);
            }
        });
    }

    public boolean loadWebview(String str, Goal goal) {
        this.b = goal;
        this.c = str;
        AdTrackerNetworkInterface.getUIHandler().post(new Runnable() { // from class: com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.2
            @Override // java.lang.Runnable
            public void run() {
                AdTrackerWebViewLoader.this.d = System.currentTimeMillis();
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Load Webview: " + AdTrackerNetworkInterface.b());
                AdTrackerWebViewLoader.this.f3755a.loadUrl(AdTrackerNetworkInterface.b());
            }
        });
        return true;
    }

    public void deinit(int i) {
        AdTrackerNetworkInterface.getUIHandler().postDelayed(new Runnable() { // from class: com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.3
            @Override // java.lang.Runnable
            public void run() {
                if (AdTrackerWebViewLoader.this.f3755a != null) {
                    AdTrackerWebViewLoader.this.f3755a.stopLoading();
                    AdTrackerWebViewLoader.this.f3755a.destroy();
                }
            }
        }, i);
    }

    /* loaded from: classes2.dex */
    protected final class AdTrackerWebViewClient extends WebViewClient {
        protected AdTrackerWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Handler c = AdTrackerNetworkInterface.c();
            if (c.hasMessages(9)) {
                c.removeMessages(9);
                AdTrackerWebViewLoader.this.e = System.currentTimeMillis() - AdTrackerWebViewLoader.this.d;
                if (str.contains("iat")) {
                    a a2 = AdTrackerWebViewLoader.this.a(str.substring(7));
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.ERRORCODE, Integer.toString(a2.f3760a));
                    Message obtain = Message.obtain();
                    obtain.what = 10;
                    obtain.arg2 = a2.f3760a;
                    obtain.obj = AdTrackerWebViewLoader.this.b;
                    Bundle bundle = new Bundle();
                    bundle.putString("appId", AdTrackerWebViewLoader.this.c);
                    obtain.setData(bundle);
                    if (5000 == a2.f3760a) {
                        int b = AdTrackerWebViewLoader.this.b(a2.b);
                        if (6000 == b) {
                            obtain.what = 8;
                            obtain.arg2 = (int) AdTrackerWebViewLoader.this.e;
                        } else {
                            obtain.arg2 = b;
                        }
                    }
                    c.sendMessage(obtain);
                }
            }
            webView.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            Handler c = AdTrackerNetworkInterface.c();
            if (c != null && c.hasMessages(9)) {
                c.removeMessages(9);
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview Received Error");
                Message obtain = Message.obtain();
                obtain.what = 10;
                obtain.arg2 = i;
                obtain.obj = AdTrackerWebViewLoader.this.b;
                c.sendMessage(obtain);
            }
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(8)
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            Handler c = AdTrackerNetworkInterface.c();
            if (c.hasMessages(9)) {
                c.removeMessages(9);
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview Received SSL Error");
                Message obtain = Message.obtain();
                obtain.what = 10;
                obtain.arg2 = sslError.getPrimaryError();
                obtain.obj = AdTrackerWebViewLoader.this.b;
                c.sendMessage(obtain);
            }
        }
    }

    /* loaded from: classes.dex */
    protected static class JSInterface {
        protected JSInterface() {
        }

        @JavascriptInterface
        public String getParams() {
            String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER);
            String webViewRequestParam = AdTrackerRequestResponseBuilder.getWebViewRequestParam();
            if (preferences != null) {
                webViewRequestParam = webViewRequestParam + "&referrer=" + preferences;
            }
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Request param for webview" + webViewRequestParam);
            return webViewRequestParam;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a a(String str) {
        String str2 = null;
        a aVar = new a();
        try {
            int i = 0;
            for (String str3 : str.split("&")) {
                String[] split = str3.split("=");
                for (int i2 = 0; i2 < split.length; i2++) {
                    if (AdTrackerConstants.ERROR.equals(split[i2])) {
                        i = Integer.parseInt(split[i2 + 1]);
                    } else if ("res".equals(split[i2])) {
                        str2 = split[i2 + 1];
                    }
                }
            }
            aVar.f3760a = i;
            aVar.b = str2;
            if (5003 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview Timeout " + str2);
            } else if (5001 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Invalid params passed " + str2);
            } else if (5002 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "XMLHTTP request not supported " + str2);
            } else if (5005 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Invalid JSON Response " + str2);
            } else if (5004 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview Server Error " + str2);
            } else if (5000 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview response " + URLDecoder.decode(str2, AudienceNetworkActivity.WEBVIEW_ENCODING));
            }
            return aVar;
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Check content Exception", e);
            return aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(String str) {
        int i;
        JSONException e;
        UnsupportedEncodingException e2;
        try {
            JSONObject jSONObject = new JSONObject(URLDecoder.decode(str, AudienceNetworkActivity.WEBVIEW_ENCODING));
            JSONObject jSONObject2 = jSONObject.getJSONObject(AdTrackerConstants.VALIDIDS);
            String string = jSONObject.getString(AdTrackerConstants.ERRORMSG);
            int i2 = jSONObject.getInt(AdTrackerConstants.TIMETOLIVE);
            i = jSONObject.getInt(AdTrackerConstants.ERRORCODE);
            try {
                if (i != 6000) {
                    Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to upload goal in webview" + string);
                } else {
                    String jSONObject3 = jSONObject2.toString();
                    if (i == 6001) {
                        jSONObject3 = null;
                    }
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS, jSONObject3);
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.TIMETOLIVE, Integer.toString(i2));
                }
            } catch (UnsupportedEncodingException e3) {
                e2 = e3;
                e2.printStackTrace();
                return i;
            } catch (JSONException e4) {
                e = e4;
                e.printStackTrace();
                return i;
            }
        } catch (UnsupportedEncodingException e5) {
            i = 6000;
            e2 = e5;
        } catch (JSONException e6) {
            i = 6000;
            e = e6;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f3760a = 0;
        private String b = null;
    }
}
