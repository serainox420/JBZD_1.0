package com.moat.analytics.mobile.aol;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class MoatWebView {
    private static final int MAX_ITERATIONS = 200;
    private static final int MAX_JS_URL_LENGTH = 2000;
    private static final String MMAK_CONTAINER = "mianahwvc";
    private static final String TAG = "MoatWebView";
    private static final String WV_HTML = "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + '_moatElToTrack'] = document.getElementById('%s');var moatapi = {'dropTime':%d,'adData': {'ids': ids, 'duration': duration, 'url': 'n/a'},'dispatchEvent': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},'dispatchMany': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {'value': moatapi});var s = document.createElement('script');s.src = 'https://z.moatads.com/' + pcode + '/moatvideo.js?' + apiname + '#' + apiname;document.body.appendChild(s);})('%s', '%s', %s, %s);</script></body></html>";
    protected final ActivityState activityState;
    private WeakReference<Context> context;
    private boolean didShutdown;
    protected final OnOffSwitch onOffSwitch;
    private final String partnerCode;
    private WeakReference<View> targetView;
    protected ViewTracker viewTracker;
    private WebView webView;
    private final String trackerName = String.format("_moatTracker%d", Integer.valueOf((int) (Math.random() * 1.0E8d)));
    private final LinkedList<String> dispatchQueue = new LinkedList<>();
    private boolean webViewReady = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MoatWebView(String str, OnOffSwitch onOffSwitch, ActivityState activityState) {
        this.partnerCode = str;
        this.onOffSwitch = onOffSwitch;
        this.activityState = activityState;
        this.context = new WeakReference<>(activityState.getActivity());
    }

    public void startTracking(View view, Map<String, String> map, Integer num, Integer num2, Integer num3) throws MoatException {
        this.targetView = new WeakReference<>(view);
        this.webView = new WebView(this.context.get());
        WebSettings settings = this.webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccess(false);
        settings.setDatabaseEnabled(false);
        settings.setDomStorageEnabled(false);
        settings.setGeolocationEnabled(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setSaveFormData(false);
        if (Build.VERSION.SDK_INT >= 16) {
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(1);
        }
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.moat.analytics.mobile.aol.MoatWebView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (!MoatWebView.this.webViewReady) {
                    try {
                        MoatWebView.this.webViewReady = true;
                        MoatWebView.this.viewTracker = new ViewTrackerImpl((View) MoatWebView.this.targetView.get(), MoatWebView.this.webView, true, MoatWebView.this.activityState, MoatWebView.this.onOffSwitch);
                        MoatWebView.this.viewTracker.track();
                        MoatWebView.this.flushDispatchQueue();
                    } catch (Exception e) {
                        Exceptions.handleException(e);
                    }
                }
            }
        });
        this.webView.loadData(String.format(WV_HTML, MMAK_CONTAINER, num, num2, MMAK_CONTAINER, Long.valueOf(System.currentTimeMillis()), this.trackerName, this.partnerCode, new JSONObject(map).toString(), num3), "text/html", null);
    }

    public void changeTargetView(View view) {
        this.targetView = new WeakReference<>(view);
        if (this.viewTracker != null) {
            this.viewTracker.changeTargetView(view);
        }
    }

    public void dispatchJSCall(JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        if (this.webViewReady && this.webView != null) {
            this.webView.loadUrl(String.format("javascript:%s.dispatchEvent(%s);", this.trackerName, jSONObject2));
        } else {
            this.dispatchQueue.add(jSONObject2);
        }
    }

    void flushDispatchQueue() throws MoatException {
        if (this.dispatchQueue.size() >= 200) {
            LinkedList linkedList = new LinkedList();
            for (int i = 0; i < 10; i++) {
                linkedList.addFirst(this.dispatchQueue.removeFirst());
            }
            int min = Math.min(Math.min(this.dispatchQueue.size() / 200, 10) + 200, this.dispatchQueue.size());
            for (int i2 = 0; i2 < min; i2++) {
                this.dispatchQueue.removeFirst();
            }
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                this.dispatchQueue.addFirst((String) it.next());
            }
        }
        int i3 = 0;
        while (!this.dispatchQueue.isEmpty() && i3 < 200) {
            i3++;
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            while (true) {
                if (!this.dispatchQueue.isEmpty() && i3 < 200) {
                    int i4 = i3 + 1;
                    String first = this.dispatchQueue.getFirst();
                    if (sb.length() + first.length() > 2000) {
                        i3 = i4;
                        break;
                    }
                    this.dispatchQueue.removeFirst();
                    if (z) {
                        z = false;
                    } else {
                        sb.append(",");
                    }
                    sb.append(first);
                    i3 = i4;
                }
            }
            setWebViewUrl(String.format("javascript:%s.dispatchMany([%s])", this.trackerName, sb.toString()));
        }
        this.dispatchQueue.clear();
    }

    void setWebViewUrl(String str) {
        this.webView.loadUrl(str);
    }

    public void destroy() {
        if (!this.didShutdown) {
            if (this.viewTracker != null) {
                this.viewTracker.stopTracking();
                this.viewTracker = null;
            }
            if (this.webView != null) {
                this.webView.loadUrl("about:blank");
                this.webView.destroy();
                this.webView = null;
            }
            this.didShutdown = true;
        }
    }

    protected void logMessage(String str) {
        if (this.onOffSwitch.isDebugActive()) {
            Log.d(TAG, str);
        }
    }
}
