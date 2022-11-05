package com.moat.analytics.mobile.aol;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.AudienceNetworkActivity;
import com.moat.analytics.mobile.aol.OnOffTrackerProxy;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import com.moat.analytics.mobile.aol.base.functional.Optional;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes3.dex */
class NativeDisplayTrackerImpl implements NativeDisplayTracker {
    private static final String MOAT_IN_APP_NATIVE_AD_HEADLESS_WEB_VIEW_CONTAINER = "mianahwvc";
    private static final String TAG = "MoatNativeDispTracker";
    private boolean didShutdown;
    private WebView moat;
    private final OnOffSwitch onOffSwitch;
    private final String partnerCode;
    private ViewTracker viewTracker;

    private static String nativeTrackingHtml(int i, int i2, String str, String str2) {
        return "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n    <meta charset=\"UTF-8\">\n    <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n<div id=\"mianahwvc\" style=\"width:" + i + "px;height:" + i2 + "px;\">\n    <script src=\"https://z.moatads.com/" + str + "/moatad.js#" + str2 + "\" type=\"text/javascript\"></script>\n</div>\n</body>\n</html>";
    }

    public NativeDisplayTrackerImpl(View view, String str, ActivityState activityState, OnOffSwitch onOffSwitch) {
        if (onOffSwitch.isDebugActive()) {
            Log.d(TAG, "Initializing.");
        }
        this.partnerCode = str;
        this.moat = new WebView(view.getContext());
        WebSettings settings = this.moat.getSettings();
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
        this.onOffSwitch = onOffSwitch;
        this.viewTracker = new ViewTrackerImpl(view, this.moat, true, activityState, onOffSwitch);
        this.didShutdown = false;
    }

    @Override // com.moat.analytics.mobile.aol.NativeDisplayTracker
    public boolean track(Map<String, String> map) {
        boolean z = false;
        if (map != null) {
            try {
            } catch (Exception e) {
                Exceptions.handleException(e);
            }
            if (!map.isEmpty()) {
                z = this.viewTracker.track();
                if (z) {
                    Rect adViewRect = this.viewTracker.getAdViewRect();
                    int width = adViewRect.width();
                    int height = adViewRect.height();
                    String adIdParams = toAdIdParams(map);
                    logMessage("Parsed ad ids = " + adIdParams);
                    this.moat.loadData(nativeTrackingHtml(width, height, this.partnerCode, adIdParams), "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING);
                }
                logMessage("Attempt to start tracking ad was " + (z ? "" : "un") + "successful.");
                return z;
            }
        }
        logMessage("adIdMap is null or empty. Shutting down.");
        shutDown();
        return z;
    }

    private static String toAdIdParams(Map<String, String> map) throws MoatException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i = 0; i < 8; i++) {
            String str = "moatClientLevel" + i;
            if (map.containsKey(str)) {
                linkedHashMap.put(str, map.get(str));
            }
        }
        for (int i2 = 0; i2 < 8; i2++) {
            String str2 = "moatClientSlicer" + i2;
            if (map.containsKey(str2)) {
                linkedHashMap.put(str2, map.get(str2));
            }
        }
        for (String str3 : map.keySet()) {
            if (!linkedHashMap.containsKey(str3)) {
                linkedHashMap.put(str3, map.get(str3));
            }
        }
        StringBuilder sb = new StringBuilder();
        for (String str4 : linkedHashMap.keySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(str4).append('=').append((String) linkedHashMap.get(str4));
        }
        return "" + ((Object) sb);
    }

    @Override // com.moat.analytics.mobile.aol.NativeDisplayTracker
    public void stopTracking() {
        logMessage("Called stopTracking.");
        shutDown();
    }

    private void shutDown() {
        if (!this.didShutdown) {
            logMessage("Shutting down.");
            this.viewTracker.stopTracking();
            this.moat.loadUrl("about:blank");
            this.moat.destroy();
            this.moat = null;
            this.viewTracker = null;
            this.didShutdown = true;
        }
    }

    private void logMessage(String str) {
        if (this.onOffSwitch.isDebugActive()) {
            Log.d(TAG, String.format("id = %s, message = %s", Integer.valueOf(hashCode()), str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class Postponer implements OnOffTrackerProxy.Postponer<NativeDisplayTracker> {
        private static final Optional<Method> stopTracking;
        private static final Optional<Method> track;

        static {
            Optional<Method> optional;
            NoSuchMethodException e;
            Optional<Method> empty = Optional.empty();
            Optional<Method> empty2 = Optional.empty();
            try {
                Method method = NativeDisplayTracker.class.getMethod("track", Map.class);
                Method method2 = NativeDisplayTracker.class.getMethod("stopTracking", new Class[0]);
                optional = Optional.of(method);
                try {
                    empty2 = Optional.of(method2);
                } catch (NoSuchMethodException e2) {
                    e = e2;
                    Exceptions.handleException(e);
                    track = optional;
                    stopTracking = empty2;
                }
            } catch (NoSuchMethodException e3) {
                optional = empty;
                e = e3;
            }
            track = optional;
            stopTracking = empty2;
        }

        @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Postponer
        public boolean isQueueable(Method method) {
            Optional of = Optional.of(method);
            return track.equals(of) || stopTracking.equals(of);
        }

        @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Postponer
        public Class<NativeDisplayTracker> getMethodsOwner() {
            return NativeDisplayTracker.class;
        }
    }
}
