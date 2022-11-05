package com.video.adsdk.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.internal.ServerProtocol;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.video.adsdk.interfaces.JavascriptBridge;
import com.video.adsdk.interfaces.JavascriptBridgeListener;
import com.video.adsdk.interfaces.VideoBridge;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ADJavascriptBridge extends WebViewClient implements JavascriptBridge {
    WebView m_view;
    List<JavascriptBridgeListener> m_listeners = new ArrayList();
    Boolean m_pageLoaded = false;
    boolean urlWasNotFound = false;
    private ValueCallback<String> m_jsExecutionCallback = new ValueCallback<String>() { // from class: com.video.adsdk.internal.ADJavascriptBridge.3
        @Override // android.webkit.ValueCallback
        public void onReceiveValue(String str) {
        }
    };
    JavascriptInterface m_interface = new JavascriptInterface();

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void addListener(JavascriptBridgeListener javascriptBridgeListener) {
        if (!this.m_listeners.contains(javascriptBridgeListener)) {
            this.m_listeners.add(javascriptBridgeListener);
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void removeListener(JavascriptBridgeListener javascriptBridgeListener) {
        if (this.m_listeners.contains(javascriptBridgeListener)) {
            this.m_listeners.remove(javascriptBridgeListener);
        }
    }

    /* loaded from: classes.dex */
    class JavascriptInterface {
        JavascriptInterface() {
        }

        @android.webkit.JavascriptInterface
        public synchronized void _nativePrefetchCall(String str, long j) {
            Log.i("js->native", "_nativePrefetchCall() url:" + str + ", timestamp:" + j);
            for (JavascriptBridgeListener javascriptBridgeListener : ADJavascriptBridge.this.m_listeners) {
                javascriptBridgeListener.onPrefetchURL(str, j);
            }
        }

        @android.webkit.JavascriptInterface
        public synchronized void _nativeCall(String str, String str2) {
            Log.i("js->native", "_nativeCall() action:" + str + ", params:" + str2);
            if (str.startsWith("playMovie")) {
                ADJavascriptBridge.this.webViewReady();
                for (JavascriptBridgeListener javascriptBridgeListener : ADJavascriptBridge.this.m_listeners) {
                    javascriptBridgeListener.onPlayMovie(str2);
                }
            } else if (str.startsWith(ServerProtocol.DIALOG_PARAM_DISPLAY)) {
                for (JavascriptBridgeListener javascriptBridgeListener2 : ADJavascriptBridge.this.m_listeners) {
                    javascriptBridgeListener2.onDisplay();
                }
            } else if (str.startsWith("finish")) {
                for (JavascriptBridgeListener javascriptBridgeListener3 : ADJavascriptBridge.this.m_listeners) {
                    javascriptBridgeListener3.onFinish(Integer.parseInt(str2));
                }
            } else if (str.startsWith("track")) {
                for (JavascriptBridgeListener javascriptBridgeListener4 : ADJavascriptBridge.this.m_listeners) {
                    javascriptBridgeListener4.onTrack(str2);
                }
            } else if (str.startsWith("showSkip")) {
                for (JavascriptBridgeListener javascriptBridgeListener5 : ADJavascriptBridge.this.m_listeners) {
                    javascriptBridgeListener5.onShowSkip();
                }
            }
        }

        @android.webkit.JavascriptInterface
        public void openURL(String str, boolean z) {
            Log.i("js->native", "openURL() url:" + str + ", inAppBrowser:" + z);
            for (JavascriptBridgeListener javascriptBridgeListener : ADJavascriptBridge.this.m_listeners) {
                javascriptBridgeListener.onOpenURLInBrowser(str, z);
            }
        }

        @android.webkit.JavascriptInterface
        public void _nativeLog(String str) {
            Log.i("js->native", "_nativeLog() params:" + str);
        }

        @android.webkit.JavascriptInterface
        public void showHTML(String str) {
            Log.i("js->native", "showHTML() html:" + str);
        }

        @android.webkit.JavascriptInterface
        public void jsError(String str, String str2) {
            Log.e("js->native", "jsError() message:" + str + ", failingUrl:" + str2);
            for (JavascriptBridgeListener javascriptBridgeListener : ADJavascriptBridge.this.m_listeners) {
                javascriptBridgeListener.onPageError(-8, str, str2);
            }
        }

        @android.webkit.JavascriptInterface
        public synchronized void _SetBackgroundColorOfNativePlayer(int i) {
            Log.i("js->native", "_SetBackgroundColorOfNativePlayer() color:" + i);
            for (JavascriptBridgeListener javascriptBridgeListener : ADJavascriptBridge.this.m_listeners) {
                javascriptBridgeListener.onSetBackgroundColor(i);
            }
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public WebView getWebView() {
        return this.m_view;
    }

    void executeJavascript(String str) {
        Log.i("native->js", str);
        if (Build.VERSION.SDK_INT >= 19) {
            executeThroughEvaluate(str);
        } else {
            executeThroughLoad(str);
        }
    }

    private void executeThroughLoad(String str) {
        final String str2 = "javascript:" + str;
        VideoAdSDKControllerUsingActivity.Instance.runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.ADJavascriptBridge.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ADJavascriptBridge.this.m_view.loadUrl(str2);
                } catch (Exception e) {
                    e.printStackTrace();
                    ADJavascriptBridge.this.m_view.post(new Runnable() { // from class: com.video.adsdk.internal.ADJavascriptBridge.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ADJavascriptBridge.this.m_view.loadUrl(str2);
                        }
                    });
                }
            }
        });
    }

    @TargetApi(19)
    private void executeThroughEvaluate(final String str) {
        VideoAdSDKControllerUsingActivity.Instance.runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.ADJavascriptBridge.2
            @Override // java.lang.Runnable
            public void run() {
                ADJavascriptBridge.this.m_view.evaluateJavascript(str, ADJavascriptBridge.this.m_jsExecutionCallback);
            }
        });
    }

    public ADJavascriptBridge(Context context) {
        this.m_view = Helper.createWebViewForJavascriptInteraction(context);
        this.m_view.addJavascriptInterface(this.m_interface, "HTMLOUT");
        this.m_view.setWebChromeClient(new WebChromeClient() { // from class: com.video.adsdk.internal.ADJavascriptBridge.4
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                for (JavascriptBridgeListener javascriptBridgeListener : ADJavascriptBridge.this.m_listeners) {
                    javascriptBridgeListener.onShowDialog(str2, jsResult);
                }
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                consoleMessage.lineNumber();
                if (!consoleMessage.messageLevel().equals(ConsoleMessage.MessageLevel.ERROR)) {
                    Log.d("js", consoleMessage.message());
                    return true;
                }
                Log.e("js ERROR", consoleMessage.message());
                return true;
            }
        });
        this.m_view.setWebViewClient(this);
        this.m_view.setDrawingCacheEnabled(false);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        webView.loadUrl(str);
        for (JavascriptBridgeListener javascriptBridgeListener : this.m_listeners) {
            javascriptBridgeListener.onPageStartingLoad(str);
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        if (i == -6 || i == -12 || i == -2 || i == -8) {
            this.urlWasNotFound = true;
        }
        for (JavascriptBridgeListener javascriptBridgeListener : this.m_listeners) {
            if (i == -8) {
                javascriptBridgeListener.onPageTimeOut(str, str2);
            } else {
                javascriptBridgeListener.onPageError(i, str, str2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (!this.urlWasNotFound && !str.equals("about:blank")) {
            String str2 = "";
            try {
                str2 = Helper.getJavascriptContentToInject(this.m_view.getContext());
            } catch (IOException e) {
                e.printStackTrace();
            }
            executeJavascript(str2);
            for (JavascriptBridgeListener javascriptBridgeListener : this.m_listeners) {
                javascriptBridgeListener.onPageLoaded(str);
            }
            this.m_pageLoaded = true;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        for (JavascriptBridgeListener javascriptBridgeListener : this.m_listeners) {
            javascriptBridgeListener.onPageStartingLoad(str);
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void loadUrl(final String str) {
        this.m_pageLoaded = false;
        this.urlWasNotFound = false;
        try {
            this.m_view.loadUrl(str);
        } catch (Exception e) {
            e.printStackTrace();
            this.m_view.post(new Runnable() { // from class: com.video.adsdk.internal.ADJavascriptBridge.5
                @Override // java.lang.Runnable
                public void run() {
                    ADJavascriptBridge.this.m_view.loadUrl(str);
                    for (JavascriptBridgeListener javascriptBridgeListener : ADJavascriptBridge.this.m_listeners) {
                        javascriptBridgeListener.onPageStartingLoad(str);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void webViewReady() {
        executeJavascript("if (typeof videoAdObj != 'undefined' && videoAdObj && videoAdObj.ready != 'undefined') videoAdObj.ready = true;");
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void setParam(String str, String str2) {
        executeJavascript("if (typeof videoAdObj != 'undefined' && videoAdObj) videoAdObj.setParam('" + str + "','" + str2 + "');");
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void movieDidFinish(long j) {
        executeJavascript("if (ads.callbacks.progress) ads.callbacks.progress('complete', " + j + ", null);");
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void movieClick() {
        executeJavascript("if (ads.callbacks.click) ads.callbacks.click();");
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void movieStateDidChange(VideoBridge.MovieState movieState, long j) {
        String str = null;
        switch (movieState) {
            case MOVIESTATE_PAUSED:
                str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE;
                break;
            case MOVIESTATE_PLAYING_SKIP:
                str = "playing";
                break;
            case MOVIESTATE_PLAYING_NO_SKIP:
                str = "playing";
                break;
            case MOVIESTATE_RESUMED:
                str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME;
                break;
            case MOVIESTATE_STARTED:
                str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_START;
                break;
            case MOVIESTATE_COMPLETED:
                str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE;
                break;
            case MOVIESTATE_STOPPED_BY_USER:
                str = "stop";
                break;
        }
        if (str != null) {
            executeJavascript("if (ads.callbacks.progress) ads.callbacks.progress('" + str + "', " + j + ", null);");
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void moviePulse(VideoBridge.MovieState movieState, long j) {
        movieStateDidChange(movieState, j);
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void prefetchingComplete() {
        executeJavascript("if (typeof videoAdObj != 'undefined' && videoAdObj) videoAdObj.trackPrefetch();");
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void finalReturn(int i) {
        executeJavascript("if (typeof videoAdObj != 'undefined' && videoAdObj) videoAdObj.finalReturn(" + i + ");");
        this.m_view.clearCache(true);
        this.m_view.clearHistory();
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void clearView() {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void troubleshoot(String str, int i) {
        executeJavascript("if (typeof videoAdObj != 'undefined' && videoAdObj) videoAdObj.videoTrigger(\"troubleshoot\",0," + str + "+\"\": \"+" + i + ");");
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridge
    public void cancel() {
        this.m_listeners.clear();
        loadUrl("");
    }
}
