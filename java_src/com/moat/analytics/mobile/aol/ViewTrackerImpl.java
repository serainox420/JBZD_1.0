package com.moat.analytics.mobile.aol;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.monetization.internal.NativeAd;
import com.moat.analytics.mobile.aol.JavaScriptBridge;
import com.moat.analytics.mobile.aol.base.asserts.Asserts;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import com.moat.analytics.mobile.aol.base.functional.Optional;
import com.openx.view.mraid.JSInterface;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
class ViewTrackerImpl implements JavaScriptBridge.Responder, ViewTracker {
    private static final String ANDROID_SDK_VERSION = "av";
    private static final String APP_NAME = "lw";
    private static final String DENSITY_RATIO = "dr";
    private static final String IN_FOCUS = "inFocus";
    private static final String IS_NATIVE = "ma";
    private static final String NAMESPACE = "lu";
    private static final String REVISION = "ar";
    private static final String SCREEN_RECT = "screen";
    private static final String TAG = "MoatViewTracker";
    private static final String VERSION = "sv";
    private static final String VISIBLE_RECT = "visible";
    private static final String VISIBLE_RECT_ALT = "maybe";
    private static final String WEB_VIEW_RECT = "view";
    private final ActivityState activityState;
    private Optional<String> appName;
    private final JavaScriptBridge bridge;
    private boolean isNative;
    private final WebView moat;
    private final OnOffSwitch onOffSwitch;
    private View subject;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTrackerImpl(View view, WebView webView, boolean z, ActivityState activityState, OnOffSwitch onOffSwitch) {
        this(view, webView, z, new JavaScriptBridgeImpl(webView.getContext(), onOffSwitch), activityState, onOffSwitch);
    }

    ViewTrackerImpl(View view, WebView webView, boolean z, JavaScriptBridge javaScriptBridge, ActivityState activityState, OnOffSwitch onOffSwitch) {
        Asserts.checkNotNull(view);
        Asserts.checkNotNull(webView);
        Asserts.checkNotNull(activityState);
        Asserts.checkNotNull(javaScriptBridge);
        if (onOffSwitch.isDebugActive()) {
            Log.d(TAG, "In initialization method.");
        }
        this.activityState = activityState;
        this.subject = view;
        this.moat = webView;
        this.isNative = z;
        this.bridge = javaScriptBridge;
        this.onOffSwitch = onOffSwitch;
        this.appName = Optional.empty();
    }

    @Override // com.moat.analytics.mobile.aol.ViewTracker
    public boolean track() throws MoatException {
        if (this.onOffSwitch.isDebugActive()) {
            Log.d(TAG, "Attempting bridge installation.");
        }
        boolean installBridge = this.bridge.installBridge(this.moat, this);
        if (this.onOffSwitch.isDebugActive()) {
            Log.d(TAG, "Bridge " + (installBridge ? "" : "not ") + "installed.");
        }
        return installBridge;
    }

    @Override // com.moat.analytics.mobile.aol.ViewTracker
    public void stopTracking() {
        this.bridge.removeBridge();
    }

    private static String toJson(Map<String, String> map, boolean z) {
        StringBuilder sb = new StringBuilder("{");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (sb.length() > 1) {
                sb.append(',');
            }
            sb.append('\"').append(key).append('\"').append(':');
            if (!z) {
                sb.append(value);
            } else {
                sb.append('\"').append(value).append('\"');
            }
        }
        sb.append("}");
        return "" + ((Object) sb);
    }

    private static String toXYWHJson(Rect rect) {
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right - rect.left;
        return ((Object) new StringBuilder("{").append('\"').append(JSInterface.JSON_X).append('\"').append(":").append(i).append(',').append('\"').append(JSInterface.JSON_Y).append('\"').append(":").append(i2).append(',').append('\"').append("w").append('\"').append(":").append(i3).append(',').append('\"').append("h").append('\"').append(":").append(rect.bottom - rect.top).append('}')) + "";
    }

    @Override // com.moat.analytics.mobile.aol.JavaScriptBridge.Responder
    public String getVisibilityInfo() throws MoatException {
        int i = 0;
        HashMap hashMap = new HashMap();
        try {
            Rect screenRect = getScreenRect();
            Rect visibleRect = getVisibleRect(screenRect);
            Rect adViewRect = getAdViewRect();
            putJsonRect(hashMap, SCREEN_RECT, screenRect);
            putJsonRect(hashMap, VISIBLE_RECT, visibleRect);
            putJsonRect(hashMap, VISIBLE_RECT_ALT, visibleRect);
            putJsonRect(hashMap, "view", adViewRect);
            if (isFocused()) {
                i = 1;
            }
            hashMap.put(IN_FOCUS, i + "");
            hashMap.put(DENSITY_RATIO, "" + getDisplayMetrics().density);
            return toJson(hashMap, false);
        } catch (Exception e) {
            return "{}";
        }
    }

    private String getAppName() {
        String str;
        Exception e;
        if (this.appName.isPresent()) {
            return this.appName.get();
        }
        try {
            Context context = this.moat.getContext();
            str = context.getPackageManager().getApplicationLabel(context.getApplicationContext().getApplicationInfo()).toString();
        } catch (Exception e2) {
            str = "_unknown_";
            e = e2;
        }
        try {
            this.appName = Optional.of(str);
            return str;
        } catch (Exception e3) {
            e = e3;
            Exceptions.handleException(e);
            return str;
        }
    }

    public Map<String, String> getMetadata() {
        HashMap hashMap = new HashMap();
        String appName = getAppName();
        String num = Integer.toString(Build.VERSION.SDK_INT);
        String str = this.isNative ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO;
        hashMap.put("versionHash", BuildConfig.REVISION);
        hashMap.put("appName", appName);
        hashMap.put(NativeAd.KEY_NAMESPACE, BuildConfig.NAMESPACE);
        hashMap.put("version", BuildConfig.JMMAK_VERSION);
        hashMap.put("deviceOS", num);
        hashMap.put("isNative", str);
        return hashMap;
    }

    @Override // com.moat.analytics.mobile.aol.JavaScriptBridge.Responder
    public String getJSEnvString() {
        try {
            return toJson(getMetadata(), true);
        } catch (Exception e) {
            return "{}";
        }
    }

    private boolean isFocused() {
        return this.subject.isShown() && !this.activityState.isOutOfFocus();
    }

    private void putJsonRect(Map<String, String> map, String str, Rect rect) {
        map.put(str, toXYWHJson(toWebViewRect(rect)));
    }

    @Override // com.moat.analytics.mobile.aol.ViewTracker
    public Rect getAdViewRect() throws MoatException {
        int[] iArr = {Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.subject.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, this.subject.getWidth() + i, this.subject.getHeight() + i2);
    }

    @Override // com.moat.analytics.mobile.aol.ViewTracker
    public void changeTargetView(View view) {
        if (this.onOffSwitch.isDebugActive()) {
            Log.d(TAG, "changing view to " + (view != null ? view.getClass().getSimpleName() + "@" + view.hashCode() : "null"));
        }
        this.subject = view;
    }

    private Rect getScreenRect() {
        DisplayMetrics displayMetrics = getDisplayMetrics();
        return new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    private Rect toWebViewRect(Rect rect) {
        float f = getDisplayMetrics().density;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            return new Rect(Math.round(rect.left / f), Math.round(rect.top / f), Math.round(rect.right / f), Math.round(rect.bottom / f));
        }
        return rect;
    }

    private DisplayMetrics getDisplayMetrics() {
        return this.subject.getContext().getResources().getDisplayMetrics();
    }

    private Rect getVisibleRect(Rect rect) {
        Rect minMinMinMin = minMinMinMin();
        if (!this.subject.getGlobalVisibleRect(minMinMinMin)) {
            minMinMinMin = minMinMinMin();
        }
        minMinMinMin.left = Math.min(Math.max(0, minMinMinMin.left), rect.right);
        minMinMinMin.right = Math.min(Math.max(0, minMinMinMin.right), rect.right);
        minMinMinMin.top = Math.min(Math.max(0, minMinMinMin.top), rect.bottom);
        minMinMinMin.bottom = Math.min(Math.max(0, minMinMinMin.bottom), rect.bottom);
        return minMinMinMin;
    }

    private Rect minMinMinMin() {
        return new Rect(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    }
}
