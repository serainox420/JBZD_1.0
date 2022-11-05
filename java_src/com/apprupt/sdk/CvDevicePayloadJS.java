package com.apprupt.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.apprupt.sdk.Logger;
import com.facebook.ads.AudienceNetworkActivity;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
@SuppressLint({"SetJavaScriptEnabled"})
/* loaded from: classes.dex */
class CvDevicePayloadJS {

    /* renamed from: a  reason: collision with root package name */
    private Listener f1800a;
    private WebView b;
    private boolean c = false;
    private final Logger.log d = Logger.a("DEVICE_PAYLOAD");

    /* loaded from: classes.dex */
    interface Listener {
        void a(String str);
    }

    /* loaded from: classes.dex */
    class ChromeClient extends WebChromeClient {
        ChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("PJS MSG [");
                sb.append(consoleMessage.messageLevel().toString());
                sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                sb.append(consoleMessage.sourceId());
                sb.append(":");
                sb.append(consoleMessage.lineNumber());
                sb.append("]: ");
                sb.append(consoleMessage.message());
                if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.DEBUG) {
                    CvDevicePayloadJS.this.d.a(sb.toString());
                } else if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.LOG || consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.TIP) {
                    CvDevicePayloadJS.this.d.b(sb.toString());
                } else if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.ERROR) {
                    CvDevicePayloadJS.this.d.d(sb.toString());
                    CvDevicePayloadJS.this.onPayload("");
                } else {
                    CvDevicePayloadJS.this.d.d(sb.toString());
                }
            } catch (Exception e) {
                CvDevicePayloadJS.this.d.c(e, "Cannot handle console message");
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvDevicePayloadJS(Context context, String str, Listener listener) {
        this.f1800a = listener;
        try {
            this.b = new WebView(context);
            this.b.setWebViewClient(new WebViewClient() { // from class: com.apprupt.sdk.CvDevicePayloadJS.1
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str2) {
                    CvDevicePayloadJS.this.d.d("PAGE LOADED");
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    CvDevicePayloadJS.this.d.d("PJS ERR: " + ((Object) webResourceError.getDescription()) + " (" + webResourceError.getErrorCode() + "; " + webResourceRequest.getUrl().toString() + ")");
                    CvDevicePayloadJS.this.onPayload("");
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i, String str2, String str3) {
                    CvDevicePayloadJS.this.d.d("PJS ERR: " + str2 + " (" + i + "; " + str3 + ")");
                    CvDevicePayloadJS.this.onPayload("");
                }
            });
            this.b.setWebChromeClient(new ChromeClient());
            this.b.getSettings().setJavaScriptEnabled(true);
            this.b.addJavascriptInterface(this, "jsb");
            this.b.loadDataWithBaseURL("http://cv.apprupt.com", String.format("<!DOCTYPE html>\n<html>\n <head>\n  <meta charset=\"utf-8\" />\n  <title>pg</title>\n  <script type=\"text/javascript\">\n//<![CDATA[\n%s\n(function () {\n    var loader = function () {\n        var getPayload = function () {\n            try { \n                if (cv && cv.payload) { \n                    return cv.payload(); \n                } else { \n                    return ''; \n                } \n            } catch (e) { \n                return ''; \n            }\n        };\n        window.removeEventListener('load',loader,false);\n        jsb.loaded();\n        jsb.onPayload(getPayload());\n    };\n    window.addEventListener('load',loader,false);\n}());\n//]]>\n  </script>\n </head>\n <body>\n dummy body\n </body>\n</html>", str), "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
        } catch (Exception e) {
            this.d.c(e, "Error creating webview");
            onPayload("");
        }
    }

    @JavascriptInterface
    public void loaded() {
        this.d.a("SCRIPT LOADED");
    }

    @JavascriptInterface
    public void onPayload(String str) {
        final String str2;
        synchronized (this) {
            if (this.c) {
                this.d.c("Second payload received");
                return;
            }
            this.c = true;
            try {
                this.d.d("GOT PAYLOAD FROM JS");
                if (str != null && str.length() > 0) {
                    str2 = CvCrypto.a(str.getBytes());
                    this.d.a("Got device payload");
                } else {
                    str2 = "";
                    this.d.d("Device payload empty");
                }
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apprupt.sdk.CvDevicePayloadJS.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Listener listener = CvDevicePayloadJS.this.f1800a;
                            if (listener != null) {
                                listener.a(str2);
                            }
                        } catch (Exception e) {
                            CvDevicePayloadJS.this.d.c(e, "Error calling payload listener");
                        } finally {
                            CvDevicePayloadJS.this.f1800a = null;
                        }
                    }
                });
            } catch (Exception e) {
                this.d.c(e, "Error trying to prepare payload listener callback");
            } finally {
                this.b = null;
            }
        }
    }
}
