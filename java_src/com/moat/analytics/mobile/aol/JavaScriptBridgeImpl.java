package com.moat.analytics.mobile.aol;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.moat.analytics.mobile.aol.JavaScriptBridge;
import com.moat.analytics.mobile.aol.OnOffSwitch;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class JavaScriptBridgeImpl implements JavaScriptBridge {
    public static final int MAX_CHECKS = 50;
    public static final int MAX_METADATA_LOOP_TIME = 10;
    public static final int METADATA_LOOP_TIME = 50;
    public static final String TAG = "MoatJavaScriptBridge";
    private final OnOffSwitch onOffSwitch;
    private JavaScriptBridge.Responder responder;
    private ScheduledFuture<?> sendInfoToJS;
    private ScheduledFuture<?> sendMetadataToJS;
    private WebView webView;
    private int countNoAdReturned = 0;
    private boolean hadURL = false;
    private boolean startedMetadataLoop = false;
    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    static /* synthetic */ int access$208(JavaScriptBridgeImpl javaScriptBridgeImpl) {
        int i = javaScriptBridgeImpl.countNoAdReturned;
        javaScriptBridgeImpl.countNoAdReturned = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JavaScriptBridgeImpl(Context context, OnOffSwitch onOffSwitch) {
        this.onOffSwitch = onOffSwitch;
    }

    @Override // com.moat.analytics.mobile.aol.JavaScriptBridge
    public boolean installBridge(WebView webView, JavaScriptBridge.Responder responder) throws MoatException {
        boolean isDebugActive = this.onOffSwitch.isDebugActive();
        if (!webView.getSettings().getJavaScriptEnabled()) {
            if (isDebugActive) {
                Log.e(TAG, "JavaScript is not enabled in the given WebView. Can't track.");
            }
            return false;
        }
        this.webView = webView;
        this.responder = responder;
        startMetadataReportLoop();
        startViewUpdateLoop();
        this.scheduler.schedule(new Runnable() { // from class: com.moat.analytics.mobile.aol.JavaScriptBridgeImpl.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JavaScriptBridgeImpl.this.stopMetadataReportLoop();
                } catch (Exception e) {
                    Exceptions.handleException(e);
                }
            }
        }, 10L, TimeUnit.SECONDS);
        return true;
    }

    @Override // com.moat.analytics.mobile.aol.JavaScriptBridge
    public void removeBridge() {
        if (this.onOffSwitch.getStatus() != OnOffSwitch.OnOrOff.OFF) {
            stopMetadataReportLoop();
            stopViewUpdateLoop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void markMoatActive() {
        try {
            if (this.onOffSwitch.getStatus() != OnOffSwitch.OnOrOff.OFF) {
                if (this.onOffSwitch.isDebugActive() && !this.startedMetadataLoop) {
                    Log.d(TAG, "Ready for communication (setting environment variables).");
                    this.startedMetadataLoop = true;
                }
                this.webView.loadUrl(String.format("javascript:(function(b,f){function g(){function b(a,e){for(k in a)if(a.hasOwnProperty(k)){var c=a[k].fn;if('function'===typeof c)try{e?c(e):c()}catch(d){}}}function d(a,b,c){'function'===typeof a&&(c[b]={ts:+new Date,fn:a})}bjmk={};uqaj={};yhgt={};ryup=dptk=!1;this.a=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash};this.bpsy=function(a){dptk||ryup||d(a,+new Date,bjmk)};this.qmrv=function(a){ryup||d(a,+new Date,uqaj)};this.lgpr=function(a,b){d(a,b,yhgt)};this.xrnk=function(a){yhgt.hasOwnProperty(a)&&delete yhgt[a]};this.vgft=function(){return dptk};this.lkpu=function(){return ryup};this.mqjh=function(){dptk||ryup||(dptk=!0,b(bjmk))};this.egpw=function(){ryup||(ryup=!0,b(uqaj))};this.sglu=function(a){b(yhgt,a);return 0<Object.keys(yhgt).length}}'undefined'===typeof b.MoatMAK&&(b.MoatMAK=new g,b.MoatMAK.a(f),b.__zMoatInit__=!0)})(window,%s);", this.responder.getJSEnvString()));
            }
        } catch (Exception e) {
            if (this.onOffSwitch.isDebugActive()) {
                Log.e(TAG, "Failed to initialize communication (did not set environment variables).", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(19)
    public void sendInfoToMoatJS() throws MoatException {
        try {
            if (this.onOffSwitch.getStatus() != OnOffSwitch.OnOrOff.OFF) {
                if (this.webView == null || (this.hadURL && this.webView.getUrl() == null)) {
                    if (this.onOffSwitch.isDebugActive()) {
                        Log.d(TAG, "WebView became null" + (this.webView == null ? "" : "based on null url") + ", stopping tracking loop");
                    }
                    stopViewUpdateLoop();
                    return;
                }
                if (this.webView.getUrl() != null) {
                    this.hadURL = true;
                }
                String format = String.format("MoatMAK.sglu(%s)", this.responder.getVisibilityInfo());
                if (Build.VERSION.SDK_INT >= 19) {
                    this.webView.evaluateJavascript(format, new ValueCallback<String>() { // from class: com.moat.analytics.mobile.aol.JavaScriptBridgeImpl.2
                        @Override // android.webkit.ValueCallback
                        public void onReceiveValue(String str) {
                            if (str == null || str.equalsIgnoreCase("null") || str.equalsIgnoreCase(Consts.False)) {
                                if (JavaScriptBridgeImpl.this.onOffSwitch.isDebugActive()) {
                                    Log.d(JavaScriptBridgeImpl.TAG, "Received value is:" + (str == null ? "null" : "(String)" + str));
                                }
                                if (JavaScriptBridgeImpl.this.countNoAdReturned == -1 || JavaScriptBridgeImpl.this.countNoAdReturned == 50) {
                                    JavaScriptBridgeImpl.this.stopViewUpdateLoop();
                                }
                                JavaScriptBridgeImpl.access$208(JavaScriptBridgeImpl.this);
                            } else if (str.equalsIgnoreCase("true")) {
                                JavaScriptBridgeImpl.this.countNoAdReturned = -1;
                                JavaScriptBridgeImpl.this.stopMetadataReportLoop();
                            } else if (JavaScriptBridgeImpl.this.onOffSwitch.isDebugActive()) {
                                Log.d(JavaScriptBridgeImpl.TAG, "Received unusual value from Javascript:" + str);
                            }
                        }
                    });
                } else {
                    this.webView.loadUrl("javascript:" + format);
                }
            }
        } catch (Exception e) {
            Exceptions.handleException(e);
            stopMetadataReportLoop();
            stopViewUpdateLoop();
        }
    }

    private void startMetadataReportLoop() {
        if (this.onOffSwitch.isDebugActive()) {
            Log.d(TAG, "Starting metadata reporting loop");
        }
        this.sendMetadataToJS = this.scheduler.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.aol.JavaScriptBridgeImpl.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.moat.analytics.mobile.aol.JavaScriptBridgeImpl.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                JavaScriptBridgeImpl.this.markMoatActive();
                            } catch (Exception e) {
                                Exceptions.handleException(e);
                            }
                        }
                    });
                } catch (Exception e) {
                    Exceptions.handleException(e);
                }
            }
        }, 0L, 50L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopMetadataReportLoop() {
        if (this.sendMetadataToJS != null) {
            if (!this.sendMetadataToJS.isCancelled() && this.onOffSwitch.isDebugActive()) {
                Log.d(TAG, "Stopping metadata reporting loop");
            }
            this.sendMetadataToJS.cancel(true);
        }
    }

    private void startViewUpdateLoop() {
        if (this.onOffSwitch.isDebugActive()) {
            Log.d(TAG, "Starting view update loop");
        }
        this.sendInfoToJS = this.scheduler.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.aol.JavaScriptBridgeImpl.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.moat.analytics.mobile.aol.JavaScriptBridgeImpl.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                JavaScriptBridgeImpl.this.sendInfoToMoatJS();
                            } catch (Exception e) {
                                Exceptions.handleException(e);
                            }
                        }
                    });
                } catch (Exception e) {
                    Exceptions.handleException(e);
                }
            }
        }, 0L, this.onOffSwitch.getVWIntervalMillis(), TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopViewUpdateLoop() {
        if (this.sendInfoToJS != null) {
            if (this.sendInfoToJS.isCancelled() && this.onOffSwitch.isDebugActive()) {
                Log.d(TAG, "Stopping view update loop");
            }
            this.sendInfoToJS.cancel(true);
        }
    }
}
