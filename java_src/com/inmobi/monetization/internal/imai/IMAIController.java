package com.inmobi.monetization.internal.imai;

import android.os.Build;
import android.webkit.JavascriptInterface;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.internal.ApiStatCollector;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.re.container.IMWebView;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class IMAIController {
    public static final String IMAI_BRIDGE = "imaiController";

    /* renamed from: a  reason: collision with root package name */
    private transient WeakReference<IMWebView> f3889a;
    private InterstitialAdStateListener b;

    /* loaded from: classes2.dex */
    public interface InterstitialAdStateListener {
        void onAdFailed();

        void onAdReady();
    }

    public IMAIController(IMWebView iMWebView) {
        IMAICore.initialize();
        this.f3889a = new WeakReference<>(iMWebView);
    }

    @JavascriptInterface
    public String getPlatformVersion() {
        Log.debug(Constants.LOG_TAG, "get platform version");
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    @JavascriptInterface
    public String getSdkVersion() {
        Log.debug(Constants.LOG_TAG, "get sdk version");
        return InMobi.getVersion();
    }

    @JavascriptInterface
    public void log(String str) {
        Log.debug(Constants.LOG_TAG, str);
    }

    @JavascriptInterface
    public void openEmbedded(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(1001), null));
        try {
            Log.debug(Constants.LOG_TAG, "IMAI open Embedded");
            if (!IMAICore.validateURL(str)) {
                IMAICore.fireErrorEvent(this.f3889a, "Null url passed", "openEmbedded", str);
            } else if (str.startsWith("http") || str.startsWith("https")) {
                IMAICore.launchEmbeddedBrowser(this.f3889a, str);
                IMAICore.fireOpenEmbeddedSuccessful(this.f3889a, str);
            } else {
                openExternal(str);
            }
        } catch (Exception e) {
            IMAICore.fireErrorEvent(this.f3889a, e.getMessage(), "openEmbedded", str);
            Log.internal(Constants.LOG_TAG, "IMAI openEmbedded failed", e);
        }
    }

    @JavascriptInterface
    public void openExternal(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(1002), null));
        try {
            Log.debug(Constants.LOG_TAG, "IMAI open external");
            if (!IMAICore.validateURL(str)) {
                IMAICore.fireErrorEvent(this.f3889a, "Null url passed", "openExternal", str);
            } else {
                IMAICore.launchExternalApp(str);
                IMAICore.fireOpenExternalSuccessful(this.f3889a, str);
            }
        } catch (Exception e) {
            IMAICore.fireErrorEvent(this.f3889a, e.getMessage(), "openExternal", str);
            Log.internal(Constants.LOG_TAG, "IMAI openExternal failed", e);
        }
    }

    @JavascriptInterface
    public void ping(String str, boolean z) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(1003), null));
        try {
            Log.debug(Constants.LOG_TAG, "IMAI ping");
            if (!IMAICore.validateURL(str)) {
                IMAICore.fireErrorEvent(this.f3889a, "Null url passed", "ping", str);
            } else if (str.contains("http") || str.contains("https")) {
                IMAICore.ping(this.f3889a, str, z);
            } else {
                IMAICore.fireErrorEvent(this.f3889a, "Invalid url passed", "ping", str);
            }
        } catch (Exception e) {
            IMAICore.fireErrorEvent(this.f3889a, e.getMessage(), "ping", str);
            Log.internal(Constants.LOG_TAG, "IMAI ping failed", e);
        }
    }

    @JavascriptInterface
    public void pingInWebView(String str, boolean z) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(1004), null));
        try {
            Log.debug(Constants.LOG_TAG, "IMAI ping in webview");
            if (!IMAICore.validateURL(str)) {
                IMAICore.fireErrorEvent(this.f3889a, "Null url passed", "pingInWebView", str);
            } else if (str.contains("http") || str.contains("https")) {
                IMAICore.pingInWebview(this.f3889a, str, z);
            } else {
                IMAICore.fireErrorEvent(this.f3889a, "Invalid url passed", "pingInWebView", str);
            }
        } catch (Exception e) {
            IMAICore.fireErrorEvent(this.f3889a, e.getMessage(), "pingInWebView", str);
            Log.internal(Constants.LOG_TAG, "IMAI pingInWebView failed", e);
        }
    }

    @JavascriptInterface
    public void fireAdReady() {
        if (this.b != null) {
            this.b.onAdReady();
        }
    }

    @JavascriptInterface
    public void fireAdFailed() {
        if (this.b != null) {
            this.b.onAdFailed();
        }
    }

    public void setInterstitialAdStateListener(InterstitialAdStateListener interstitialAdStateListener) {
        this.b = interstitialAdStateListener;
    }
}
