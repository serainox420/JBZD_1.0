package com.millennialmedia.internal;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.share.internal.ShareConstants;
import com.inmobi.monetization.internal.Constants;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.CalendarUtils;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.JSONUtils;
import com.millennialmedia.internal.utils.MediaUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.InlineWebVideoView;
import com.millennialmedia.internal.video.VASTVideoView;
import com.openx.view.mraid.JSInterface;
import com.pubmatic.sdk.banner.mraid.Consts;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class JSBridge {

    /* renamed from: a  reason: collision with root package name */
    static final List<String> f4057a;
    static final boolean b;
    private static final String o = JSBridge.class.getSimpleName();
    private static final Pattern p = Pattern.compile("</head>", 2);
    private static final Pattern q = Pattern.compile("<body[^>]*>", 2);
    private static final Pattern r = Pattern.compile("<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\'])mraid\\.js\\1[^>]*>\\s*</script>", 2);
    final boolean d;
    private volatile JSONArray s;
    private volatile WeakReference<MMWebView> t;
    private volatile JSBridgeListener u;
    private volatile long x;
    private volatile Rect v = new Rect();
    private volatile AtomicBoolean w = new AtomicBoolean(false);
    private volatile boolean y = false;
    List<String> c = new ArrayList();
    String e = "loading";
    boolean f = false;
    boolean g = true;
    boolean h = false;
    boolean i = false;
    boolean j = false;
    boolean k = false;
    boolean l = false;
    int m = EnvironmentUtils.getCurrentConfigOrientation();
    int n = -1;

    /* loaded from: classes3.dex */
    public interface JSBridgeListener {
        void close();

        boolean expand(SizableStateManager.ExpandParams expandParams);

        void onAdLeftApplication();

        void onInjectedScriptsLoaded();

        void onJSBridgeReady();

        boolean resize(SizableStateManager.ResizeParams resizeParams);

        void setOrientation(int i);

        void showCloseIndicator(boolean z);
    }

    static {
        b = Build.VERSION.SDK_INT < 19;
        f4057a = new ArrayList();
        if (b) {
            f4057a.add("actionsQueue.js");
        }
        f4057a.add("mm.js");
        f4057a.add("mraid.js");
    }

    static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sms", EnvironmentUtils.isSmsSupported());
            jSONObject.put("tel", EnvironmentUtils.isTelSupported());
            jSONObject.put(Consts.FeatureCalendar, EnvironmentUtils.isCalendarSupported());
            jSONObject.put("storePicture", EnvironmentUtils.isExternalStorageSupported());
            jSONObject.put(Consts.FeatureInlineVideo, true);
        } catch (JSONException e) {
            MMLog.e(o, "Error creating supports dictionary", e);
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSBridge(MMWebView mMWebView, boolean z, JSBridgeListener jSBridgeListener) {
        this.t = new WeakReference<>(mMWebView);
        this.u = jSBridgeListener;
        this.d = z;
        if (mMWebView != null) {
            mMWebView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.millennialmedia.internal.JSBridge.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    int currentConfigOrientation;
                    if ((view instanceof MMWebView) && JSBridge.this.m != (currentConfigOrientation = EnvironmentUtils.getCurrentConfigOrientation())) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(JSBridge.o, "Detected change in orientation to " + EnvironmentUtils.getCurrentConfigOrientationString());
                        }
                        JSBridge.this.m = currentConfigOrientation;
                        JSBridge.this.d((MMWebView) view);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str) {
        String str2;
        MMWebView mMWebView = this.t.get();
        if (!this.i) {
            if (mMWebView != null) {
                mMWebView.addJavascriptInterface(new JSBridgeCommon(), "MmInjectedFunctions");
                mMWebView.addJavascriptInterface(new JSBridgeMRAID(), "MmInjectedFunctionsMraid");
                mMWebView.addJavascriptInterface(new JSBridgeInlineVideo(), "MmInjectedFunctionsInlineVideo");
                mMWebView.addJavascriptInterface(new JSBridgeMMJS(), "MmInjectedFunctionsMmjs");
                mMWebView.addJavascriptInterface(new JSBridgeVastVideo(), "MmInjectedFunctionsVast");
                mMWebView.b();
            }
            this.i = true;
        }
        this.c = new ArrayList(f4057a);
        if (mMWebView != null) {
            this.c.addAll(mMWebView.getExtraScriptsToInject());
        }
        String a2 = a(this.c);
        Matcher matcher = r.matcher(str);
        if (matcher.find(0)) {
            str2 = matcher.replaceAll(a2);
            matcher.usePattern(q);
            if (!matcher.find(0)) {
                str2 = "<style>body {margin:0;padding:0;}</style>" + str2;
            }
        } else {
            matcher.usePattern(p);
            if (matcher.find(0)) {
                str2 = matcher.replaceFirst(a2 + matcher.group());
            } else {
                matcher.usePattern(q);
                if (matcher.find(0)) {
                    str2 = matcher.replaceFirst(matcher.group() + a2);
                } else {
                    str2 = "<style>body {margin:0;padding:0;}</style>" + a2 + str;
                }
            }
        }
        this.h = false;
        return str2;
    }

    static String a(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            sb.append("<script src=\"mmadsdk/");
            sb.append(str);
            sb.append("\"></script>");
        }
        return sb.toString();
    }

    public void invokeCallback(String str, Object... objArr) {
        if (str == null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(o, "No callbackId provided");
                return;
            }
            return;
        }
        if (objArr == null) {
            objArr = new Object[1];
        }
        Object[] objArr2 = new Object[objArr.length + 1];
        objArr2[0] = str;
        for (int i = 0; i < objArr.length; i++) {
            objArr2[i + 1] = objArr[i];
        }
        a("MmJsBridge.callbackManager.callCallback", objArr2);
    }

    public void setLogLevel(int i) {
        String str = "DEBUG";
        if (i >= 6) {
            str = "ERROR";
        } else if (i >= 4) {
            str = "INFO";
        }
        a("MmJsBridge.logging.setLogLevel", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    public void a(String str, Object... objArr) {
        JSONArray jSONArray = new JSONArray((Collection) Arrays.asList(objArr));
        try {
            if (!d()) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(o, "jsBridge scripts are not loaded: " + str + "(" + jSONArray.join(",") + ")");
                }
            } else if (b) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("functionName", str);
                jSONObject.put("args", jSONArray);
                synchronized (this) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(o, "Queuing js: " + str + " args: " + jSONArray.toString());
                    }
                    if (this.s == null) {
                        this.s = new JSONArray();
                    }
                    this.s.put(jSONObject);
                }
            } else {
                final String str2 = str + "(" + jSONArray.join(",") + ")";
                ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                        if (mMWebView != null) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(JSBridge.o, "Calling js: " + str2);
                            }
                            mMWebView.evaluateJavascript(str2, null);
                        }
                    }
                });
            }
        } catch (JSONException e) {
            MMLog.e(o, "Unable to execute javascript function", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class JSBridgeCommon {
        JSBridgeCommon() {
        }

        @JavascriptInterface
        public Boolean useActionsQueue() {
            return Boolean.valueOf(JSBridge.b);
        }

        @JavascriptInterface
        public String getActionsQueue() {
            String str = null;
            synchronized (JSBridge.this) {
                if (JSBridge.this.s != null) {
                    str = JSBridge.this.s.toString();
                    JSBridge.this.s = null;
                }
            }
            return str;
        }

        @JavascriptInterface
        public void fileLoaded(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "fileLoaded: " + str);
            }
            JSBridge.this.c.remove(new JSONObject(str).getString("filename"));
            if (JSBridge.this.c.size() == 0) {
                if (JSBridge.this.u != null) {
                    JSBridge.this.u.onInjectedScriptsLoaded();
                }
                JSBridge.this.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class JSBridgeMRAID {
        JSBridgeMRAID() {
        }

        @JavascriptInterface
        public void open(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MRAID: open(" + str + ")");
            }
            if (!JSBridge.this.y) {
                JSBridge.this.a("Ad has not been clicked", "open");
                return;
            }
            String string = new JSONObject(str).getString("url");
            if (Utils.startActivityFromUrl(string)) {
                JSBridge.this.u.onAdLeftApplication();
            } else {
                JSBridge.this.a("Unable to open url <" + string + ">", "open");
            }
        }

        @JavascriptInterface
        public void close(String str) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MRAID: close(" + str + ")");
            }
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.1
                @Override // java.lang.Runnable
                public void run() {
                    JSBridge.this.u.close();
                }
            });
        }

        @JavascriptInterface
        public void expand(String str) throws JSONException {
            boolean z = true;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MRAID: expand(" + str + ")");
            }
            if (!JSBridge.this.y) {
                JSBridge.this.a("Ad has not been clicked", "expand");
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (JSBridge.this.d) {
                JSBridge.this.a("Cannot expand interstitial", "expand");
                return;
            }
            DisplayMetrics displayMetrics = EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics();
            final SizableStateManager.ExpandParams expandParams = new SizableStateManager.ExpandParams();
            if (jSONObject.has("width")) {
                expandParams.width = Math.min((int) TypedValue.applyDimension(1, jSONObject.getInt("width"), displayMetrics), EnvironmentUtils.getDisplayWidth());
            } else {
                expandParams.width = -1;
            }
            if (jSONObject.has("height")) {
                expandParams.height = Math.min((int) TypedValue.applyDimension(1, jSONObject.getInt("height"), displayMetrics), EnvironmentUtils.getDisplayHeight());
            } else {
                expandParams.height = -1;
            }
            if (jSONObject.optBoolean("useCustomClose", JSBridge.this.l)) {
                z = false;
            }
            expandParams.showCloseIndicator = z;
            expandParams.orientation = JSBridge.this.n;
            expandParams.url = jSONObject.optString("url", null);
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!TextUtils.equals(JSBridge.this.e, "expanded") && !TextUtils.equals(JSBridge.this.e, "hidden") && !TextUtils.equals(JSBridge.this.e, "loading")) {
                        if (!JSBridge.this.u.expand(expandParams)) {
                            JSBridge.this.a("Unable to expand", "expand");
                            return;
                        }
                        return;
                    }
                    JSBridge.this.a("Cannot expand in current state<" + JSBridge.this.e + ">", "expand");
                }
            });
        }

        @JavascriptInterface
        public void resize(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MRAID: resize(" + str + ")");
            }
            if (!JSBridge.this.y) {
                JSBridge.this.a("Ad has not been clicked", "resize");
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (JSBridge.this.d) {
                JSBridge.this.a("Cannot resize interstitial", "resize");
                return;
            }
            DisplayMetrics displayMetrics = EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics();
            final SizableStateManager.ResizeParams resizeParams = new SizableStateManager.ResizeParams();
            resizeParams.c = (int) TypedValue.applyDimension(1, jSONObject.getInt("width"), displayMetrics);
            resizeParams.d = (int) TypedValue.applyDimension(1, jSONObject.getInt("height"), displayMetrics);
            resizeParams.f4113a = (int) TypedValue.applyDimension(1, jSONObject.optInt(Consts.ResizePropertiesOffsetX, 0), displayMetrics);
            resizeParams.b = (int) TypedValue.applyDimension(1, jSONObject.optInt(Consts.ResizePropertiesOffsetY, 0), displayMetrics);
            resizeParams.e = jSONObject.optString(Consts.ResizePropertiesCustomClosePosition, Consts.ResizePropertiesCCPositionTopRight);
            resizeParams.f = jSONObject.optBoolean(Consts.ResizePropertiesAllowOffscreen, true);
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.3
                @Override // java.lang.Runnable
                public void run() {
                    if (!TextUtils.equals(JSBridge.this.e, "expanded") && !TextUtils.equals(JSBridge.this.e, "hidden") && !TextUtils.equals(JSBridge.this.e, "loading")) {
                        if (!JSBridge.this.u.resize(resizeParams)) {
                            JSBridge.this.a("Unable to resize", "resize");
                            return;
                        }
                        return;
                    }
                    JSBridge.this.a("Cannot resize in current state<" + JSBridge.this.e + ">", "resize");
                }
            });
        }

        @JavascriptInterface
        public void useCustomClose(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MRAID: useCustomClose(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            JSBridge.this.l = jSONObject.optBoolean("useCustomClose", JSBridge.this.l);
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.4
                @Override // java.lang.Runnable
                public void run() {
                    JSBridge.this.u.showCloseIndicator(!JSBridge.this.l);
                }
            });
        }

        @JavascriptInterface
        public void setOrientationProperties(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MRAID: setOrientationProperties(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            boolean optBoolean = jSONObject.optBoolean(Consts.OrientationPpropertiesAllowOrientationChange, true);
            String optString = jSONObject.optString(Consts.OrientationPpropertiesForceOrientation, "none");
            if ("none".equals(optString)) {
                if (optBoolean) {
                    JSBridge.this.n = -1;
                } else if (EnvironmentUtils.getCurrentConfigOrientation() == 2) {
                    JSBridge.this.n = 6;
                } else {
                    JSBridge.this.n = 7;
                }
            } else if ("portrait".equals(optString)) {
                JSBridge.this.n = 7;
            } else if ("landscape".equals(optString)) {
                JSBridge.this.n = 6;
            } else {
                JSBridge.this.a("Invalid orientation specified <" + optString + ">", "setOrientationProperties");
                return;
            }
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.5
                @Override // java.lang.Runnable
                public void run() {
                    if (JSBridge.this.d || JSBridge.this.e.equals("expanded")) {
                        JSBridge.this.u.setOrientation(JSBridge.this.n);
                    }
                }
            });
        }

        @JavascriptInterface
        public void storePicture(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MRAID: storePicture(" + str + ")");
            }
            if (!JSBridge.this.y) {
                JSBridge.this.a("Ad has not been clicked", "storePicture");
            } else if (!EnvironmentUtils.isExternalStorageSupported()) {
                JSBridge.this.a("Not supported", "storePicture");
            } else {
                String optString = new JSONObject(str).optString("url", null);
                if (!TextUtils.isEmpty(optString)) {
                    final MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                    if (mMWebView == null) {
                        JSBridge.this.a("Webview is no longer valid", "storePicture");
                        return;
                    } else {
                        MediaUtils.savePicture(mMWebView.getContext(), optString, null, new MediaUtils.SavePictureListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.6
                            @Override // com.millennialmedia.internal.utils.MediaUtils.SavePictureListener
                            public void onPictureSaved(File file) {
                                Utils.showToast(mMWebView.getContext(), file.getName() + " stored in gallery");
                            }

                            @Override // com.millennialmedia.internal.utils.MediaUtils.SavePictureListener
                            public void onError(String str2) {
                                JSBridge.this.a(str2, "storePicture");
                            }
                        });
                        return;
                    }
                }
                JSBridge.this.a("No path specified for picture", "storePicture");
            }
        }

        @JavascriptInterface
        public void createCalendarEvent(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MRAID: createCalendarEvent(" + str + ")");
            }
            if (!JSBridge.this.y) {
                JSBridge.this.a("Ad has not been clicked", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
            } else if (!EnvironmentUtils.isCalendarSupported()) {
                JSBridge.this.a("Not supported", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
            } else {
                JSONObject jSONObject = new JSONObject(str).getJSONObject("parameters");
                if (jSONObject != null) {
                    MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                    if (mMWebView == null) {
                        JSBridge.this.a("Webview is no longer valid", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
                        return;
                    } else {
                        CalendarUtils.addEvent(mMWebView.getContext(), jSONObject, new CalendarUtils.CalendarListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.7
                            @Override // com.millennialmedia.internal.utils.CalendarUtils.CalendarListener
                            public void onUIDisplayed() {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(JSBridge.o, "Calendar activity started");
                                }
                            }

                            @Override // com.millennialmedia.internal.utils.CalendarUtils.CalendarListener
                            public void onError(String str2) {
                                JSBridge.this.a(str2, JSInterface.ACTION_CREATE_CALENDAR_EVENT);
                            }
                        });
                        return;
                    }
                }
                JSBridge.this.a("No parameters provided", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
            }
        }

        @JavascriptInterface
        public void playVideo(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MRAID: playVideo(" + str + ")");
            }
            if (!JSBridge.this.y) {
                JSBridge.this.a("Ad has not been clicked", JSInterface.ACTION_PLAY_VIDEO);
                return;
            }
            String optString = new JSONObject(str).optString("url", null);
            if (!TextUtils.isEmpty(optString)) {
                MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                if (mMWebView == null) {
                    JSBridge.this.a("Webview is no longer valid", JSInterface.ACTION_PLAY_VIDEO);
                    return;
                } else {
                    MediaUtils.startVideoPlayer(mMWebView.getContext(), optString, new MediaUtils.PlayVideoListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMRAID.8
                        @Override // com.millennialmedia.internal.utils.MediaUtils.PlayVideoListener
                        public void onVideoStarted(Uri uri) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(JSBridge.o, "Video activity started for <" + uri.toString() + ">");
                            }
                        }

                        @Override // com.millennialmedia.internal.utils.MediaUtils.PlayVideoListener
                        public void onError(String str2) {
                            JSBridge.this.a(str2, JSInterface.ACTION_PLAY_VIDEO);
                        }
                    });
                    return;
                }
            }
            JSBridge.this.a("No path specified for video", JSInterface.ACTION_PLAY_VIDEO);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class JSBridgeMMJS {
        JSBridgeMMJS() {
        }

        @JavascriptInterface
        public void addCalendarEvent(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: addCalendarEvent(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString("callbackId", null);
            if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("options");
            if (optJSONObject == null) {
                MMLog.e(JSBridge.o, "No options provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView == null) {
                MMLog.e(JSBridge.o, "Webview is no longer valid");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            CalendarUtils.addEvent(mMWebView.getContext(), optJSONObject, new CalendarUtils.CalendarListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.1
                @Override // com.millennialmedia.internal.utils.CalendarUtils.CalendarListener
                public void onUIDisplayed() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(JSBridge.o, "Calendar activity started");
                    }
                    JSBridge.this.u.onAdLeftApplication();
                    JSBridge.this.invokeCallback(optString, true);
                }

                @Override // com.millennialmedia.internal.utils.CalendarUtils.CalendarListener
                public void onError(String str2) {
                    MMLog.e(JSBridge.o, str2);
                    JSBridge.this.invokeCallback(optString, false);
                }
            });
        }

        @JavascriptInterface
        public void openInBrowser(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: openInBrowser(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("callbackId", null);
            if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            boolean startActivityFromUrl = Utils.startActivityFromUrl(jSONObject.optString("url", null));
            if (startActivityFromUrl) {
                JSBridge.this.u.onAdLeftApplication();
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(startActivityFromUrl));
        }

        @JavascriptInterface
        public void isSourceTypeAvailable(String str) throws JSONException {
            boolean z;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: isSourceTypeAvailable(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("callbackId", null);
            String optString2 = jSONObject.optString("sourceType", null);
            if (optString2 == null) {
                MMLog.e(JSBridge.o, "sourceType was not provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            if ("Photo Library".equals(optString2)) {
                z = MediaUtils.isPictureChooserAvailable();
            } else {
                EnvironmentUtils.AvailableCameras availableCameras = EnvironmentUtils.getAvailableCameras();
                if ("Camera".equals(optString2)) {
                    z = availableCameras.frontCamera || availableCameras.backCamera;
                } else if ("Rear Camera".equals(optString2)) {
                    z = availableCameras.backCamera;
                } else {
                    z = "Front Camera".equals(optString2) ? availableCameras.frontCamera : false;
                }
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(z));
        }

        @JavascriptInterface
        public void getAvailableSourceTypes(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: getAvailableSourceTypes(" + str + ")");
            }
            String optString = new JSONObject(str).optString("callbackId", null);
            JSONArray jSONArray = new JSONArray();
            EnvironmentUtils.AvailableCameras availableCameras = EnvironmentUtils.getAvailableCameras();
            if (availableCameras.backCamera) {
                jSONArray.put("Rear Camera");
            }
            if (availableCameras.frontCamera) {
                jSONArray.put("Front Camera");
            }
            if (availableCameras.frontCamera || availableCameras.backCamera) {
                jSONArray.put("Camera");
            }
            if (MediaUtils.isPictureChooserAvailable()) {
                jSONArray.put("Photo Library");
            }
            JSBridge.this.invokeCallback(optString, jSONArray);
        }

        @JavascriptInterface
        public void getPictureFromPhotoLibrary(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: getPictureFromPhotoLibrary(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString("callbackId", null);
            if (!EnvironmentUtils.isExternalStorageReadable()) {
                MMLog.e(JSBridge.o, "Cannot read external storage");
                JSBridge.this.invokeCallback(optString, null);
            } else if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, null);
            } else {
                JSONObject optJSONObject = jSONObject.optJSONObject("size");
                if (optJSONObject == null) {
                    MMLog.e(JSBridge.o, "No size parameters provided");
                    JSBridge.this.invokeCallback(optString, null);
                    return;
                }
                DisplayMetrics displayMetrics = EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics();
                final int applyDimension = (int) TypedValue.applyDimension(1, optJSONObject.optInt("maxWidth", 0), displayMetrics);
                final int applyDimension2 = (int) TypedValue.applyDimension(1, optJSONObject.optInt("maxHeight", 0), displayMetrics);
                final boolean optBoolean = optJSONObject.optBoolean("maintainAspectRatio", true);
                if (applyDimension <= 0 || applyDimension2 <= 0) {
                    MMLog.e(JSBridge.o, "maxWidth and maxHeight must be > 0");
                    JSBridge.this.invokeCallback(optString, null);
                    return;
                }
                final MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                if (mMWebView == null) {
                    MMLog.e(JSBridge.o, "Webview is no longer valid");
                    JSBridge.this.invokeCallback(optString, null);
                    return;
                }
                MediaUtils.getPhotoFromGallery(mMWebView.getContext(), new MediaUtils.PhotoListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.2
                    @Override // com.millennialmedia.internal.utils.MediaUtils.PhotoListener
                    public void onPhoto(Uri uri) {
                        String str2;
                        String mimeTypeFromUri = MediaUtils.getMimeTypeFromUri(mMWebView.getContext(), uri);
                        Bitmap scaledBitmapFromUri = MediaUtils.getScaledBitmapFromUri(mMWebView.getContext(), uri, applyDimension, applyDimension2, optBoolean, true);
                        if (scaledBitmapFromUri == null) {
                            str2 = null;
                        } else {
                            str2 = MediaUtils.base64EncodeBitmap(scaledBitmapFromUri, mimeTypeFromUri);
                            scaledBitmapFromUri.recycle();
                        }
                        JSBridge.this.invokeCallback(optString, str2);
                    }

                    @Override // com.millennialmedia.internal.utils.MediaUtils.PhotoListener
                    public void onError(String str2) {
                        MMLog.e(JSBridge.o, str2);
                        JSBridge.this.invokeCallback(optString, null);
                    }
                });
            }
        }

        @JavascriptInterface
        public void openCamera(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: openCamera(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString("callbackId", null);
            if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, null);
                return;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("size");
            if (optJSONObject == null) {
                MMLog.e(JSBridge.o, "No size parameters provided");
                JSBridge.this.invokeCallback(optString, null);
                return;
            }
            DisplayMetrics displayMetrics = EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics();
            final int applyDimension = (int) TypedValue.applyDimension(1, optJSONObject.optInt("maxWidth", 0), displayMetrics);
            final int applyDimension2 = (int) TypedValue.applyDimension(1, optJSONObject.optInt("maxHeight", 0), displayMetrics);
            final boolean optBoolean = optJSONObject.optBoolean("maintainAspectRatio", true);
            if (applyDimension <= 0 || applyDimension2 <= 0) {
                MMLog.e(JSBridge.o, "maxWidth and maxHeight must be > 0");
                JSBridge.this.invokeCallback(optString, null);
                return;
            }
            final MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView == null) {
                MMLog.e(JSBridge.o, "Webview is no longer valid");
                JSBridge.this.invokeCallback(optString, null);
                return;
            }
            MediaUtils.getPhotoFromCamera(mMWebView.getContext(), new MediaUtils.PhotoListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.3
                @Override // com.millennialmedia.internal.utils.MediaUtils.PhotoListener
                public void onPhoto(Uri uri) {
                    String str2;
                    String mimeTypeFromUri = MediaUtils.getMimeTypeFromUri(mMWebView.getContext(), uri);
                    Bitmap scaledBitmapFromUri = MediaUtils.getScaledBitmapFromUri(mMWebView.getContext(), uri, applyDimension, applyDimension2, optBoolean, true);
                    if (scaledBitmapFromUri == null) {
                        str2 = null;
                    } else {
                        str2 = MediaUtils.base64EncodeBitmap(scaledBitmapFromUri, mimeTypeFromUri);
                        scaledBitmapFromUri.recycle();
                    }
                    JSBridge.this.invokeCallback(optString, str2);
                }

                @Override // com.millennialmedia.internal.utils.MediaUtils.PhotoListener
                public void onError(String str2) {
                    MMLog.e(JSBridge.o, str2);
                    JSBridge.this.invokeCallback(optString, null);
                }
            });
        }

        @JavascriptInterface
        public void savePictureToPhotoLibrary(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: savePictureToPhotoLibrary(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString("callbackId", null);
            if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            String optString2 = jSONObject.optString("name", null);
            final String optString3 = jSONObject.optString("description", null);
            String optString4 = jSONObject.optString("url", null);
            if (TextUtils.isEmpty(optString4)) {
                MMLog.e(JSBridge.o, "No path specified for photo");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            final MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView == null) {
                MMLog.e(JSBridge.o, "Webview is no longer valid");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            MediaUtils.savePicture(mMWebView.getContext(), optString4, optString2, new MediaUtils.SavePictureListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.4
                @Override // com.millennialmedia.internal.utils.MediaUtils.SavePictureListener
                public void onPictureSaved(File file) {
                    if (optString3 != null) {
                        MediaUtils.setFileDescription(file, optString3);
                    }
                    Utils.showToast(mMWebView.getContext(), file.getName() + " stored in gallery");
                    JSBridge.this.invokeCallback(optString, true);
                }

                @Override // com.millennialmedia.internal.utils.MediaUtils.SavePictureListener
                public void onError(String str2) {
                    MMLog.e(JSBridge.o, str2);
                    JSBridge.this.invokeCallback(optString, false);
                }
            });
        }

        @JavascriptInterface
        public void call(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: call(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("callbackId", null);
            if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            String optString2 = jSONObject.optString("number", null);
            if (optString2 == null) {
                MMLog.e(JSBridge.o, "No number provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            boolean startActivity = Utils.startActivity(EnvironmentUtils.getApplicationContext(), new Intent("android.intent.action.VIEW", Uri.parse("tel:" + optString2)));
            if (startActivity) {
                JSBridge.this.u.onAdLeftApplication();
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(startActivity));
        }

        @JavascriptInterface
        public void sms(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: sms(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("callbackId", null);
            if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("recipients");
            if (optJSONArray == null || optJSONArray.length() == 0) {
                MMLog.e(JSBridge.o, "No recipients provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            String optString2 = jSONObject.optString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, null);
            if (optString2 == null) {
                MMLog.e(JSBridge.o, "No message provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("sms:" + TextUtils.join(",", JSONUtils.convertToStringArray(optJSONArray))));
            intent.putExtra("sms_body", optString2);
            boolean startActivity = Utils.startActivity(EnvironmentUtils.getApplicationContext(), intent);
            if (startActivity) {
                JSBridge.this.u.onAdLeftApplication();
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(startActivity));
        }

        @JavascriptInterface
        public void email(String str) throws JSONException {
            JSONArray jSONArray;
            JSONArray jSONArray2;
            JSONArray jSONArray3;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: email(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("callbackId", null);
            if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("recipients");
            if (optJSONObject != null) {
                jSONArray3 = optJSONObject.optJSONArray("to");
                jSONArray2 = optJSONObject.optJSONArray("cc");
                jSONArray = optJSONObject.optJSONArray("bcc");
            } else {
                jSONArray = null;
                jSONArray2 = null;
                jSONArray3 = null;
            }
            String optString2 = jSONObject.optString("subject", null);
            if (optString2 == null) {
                MMLog.e(JSBridge.o, "No subject provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            String optString3 = jSONObject.optString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, null);
            if (optString3 == null) {
                MMLog.e(JSBridge.o, "No message provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType(jSONObject.optString("type", "text/plain"));
            if (jSONArray3 != null) {
                intent.putExtra("android.intent.extra.EMAIL", JSONUtils.convertToStringArray(jSONArray3));
            }
            if (jSONArray2 != null) {
                intent.putExtra("android.intent.extra.CC", JSONUtils.convertToStringArray(jSONArray2));
            }
            if (jSONArray != null) {
                intent.putExtra("android.intent.extra.BCC", JSONUtils.convertToStringArray(jSONArray));
            }
            intent.putExtra("android.intent.extra.SUBJECT", optString2);
            intent.putExtra("android.intent.extra.TEXT", optString3);
            boolean startActivity = Utils.startActivity(EnvironmentUtils.getApplicationContext(), intent);
            if (startActivity) {
                JSBridge.this.u.onAdLeftApplication();
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(startActivity));
        }

        @JavascriptInterface
        public void vibrate(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: vibrate(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString("onStartCallbackId", null);
            final String optString2 = jSONObject.optString("onFinishCallbackId", null);
            JSONArray optJSONArray = jSONObject.optJSONArray("pattern");
            if (optJSONArray == null) {
                MMLog.e(JSBridge.o, "No pattern provided");
                JSBridge.this.invokeCallback(optString2, false);
                return;
            }
            long[] jArr = new long[optJSONArray.length() + 1];
            jArr[0] = 0;
            for (int i = 0; i < optJSONArray.length(); i++) {
                jArr[i + 1] = optJSONArray.getLong(i);
            }
            Utils.vibrate(jArr, -1, new Utils.VibrateListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.5
                @Override // com.millennialmedia.internal.utils.Utils.VibrateListener
                public void onStarted() {
                    JSBridge.this.invokeCallback(optString, new Object[0]);
                }

                @Override // com.millennialmedia.internal.utils.Utils.VibrateListener
                public void onFinished() {
                    JSBridge.this.invokeCallback(optString2, true);
                }

                @Override // com.millennialmedia.internal.utils.Utils.VibrateListener
                public void onError() {
                    JSBridge.this.invokeCallback(optString2, false);
                }
            });
        }

        @JavascriptInterface
        public void isSchemeAvailable(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: isSchemeAvailable(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("callbackId", null);
            String optString2 = jSONObject.optString("name", null);
            if (optString2 == null) {
                MMLog.e(JSBridge.o, "name was not provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(Utils.isSchemeAvailable(optString2)));
        }

        @JavascriptInterface
        public void isPackageAvailable(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: isPackageAvailable(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("callbackId", null);
            String optString2 = jSONObject.optString("name", null);
            if (optString2 == null) {
                MMLog.e(JSBridge.o, "name was not provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            JSBridge.this.invokeCallback(optString, Boolean.valueOf(Utils.isPackageAvailable(optString2)));
        }

        @JavascriptInterface
        public void openMap(String str) throws JSONException {
            String format;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: openMap(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("callbackId", null);
            if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            if (jSONObject.has("address")) {
                try {
                    format = "geo:0,0?q=" + URLEncoder.encode(jSONObject.optString("address"), AudienceNetworkActivity.WEBVIEW_ENCODING);
                } catch (UnsupportedEncodingException e) {
                    JSBridge.this.invokeCallback(optString, false, "Unable to encode address");
                    return;
                }
            } else if (jSONObject.has("longitude") && jSONObject.has("latitude")) {
                Double valueOf = Double.valueOf(jSONObject.optDouble("latitude"));
                Double valueOf2 = Double.valueOf(jSONObject.optDouble("longitude"));
                format = String.format("geo:%f,%f?q=%f,%f", valueOf, valueOf2, valueOf, valueOf2);
            } else {
                JSBridge.this.invokeCallback(optString, false, "address or latitude and longitude must be specified");
                return;
            }
            if (Utils.startActivityFromUrl(format)) {
                JSBridge.this.u.onAdLeftApplication();
                JSBridge.this.invokeCallback(optString, true);
                return;
            }
            JSBridge.this.invokeCallback(optString, false, "Unable to open map");
        }

        @JavascriptInterface
        public void location(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: location(" + str + ")");
            }
            String optString = new JSONObject(str).optString("callbackId", null);
            Location location = EnvironmentUtils.getLocation();
            if (location == null) {
                JSBridge.this.invokeCallback(optString, null);
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("latitude", location.getLatitude());
            jSONObject.put("longitude", location.getLongitude());
            jSONObject.put("altitude", location.getAltitude());
            jSONObject.put("accuracy", location.getAccuracy());
            jSONObject.put("altitudeAccuracy", 0.0d);
            jSONObject.put("heading", location.getBearing());
            jSONObject.put("speed", location.getSpeed());
            JSBridge.this.invokeCallback(optString, jSONObject);
        }

        @JavascriptInterface
        public void openAppStore(String str) throws JSONException {
            String str2;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: openAppStore(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("callbackId", null);
            if (!JSBridge.this.y) {
                MMLog.e(JSBridge.o, "Ad has not been clicked");
                JSBridge.this.invokeCallback(optString, false, "Ad has not been clicked");
                return;
            }
            String optString2 = jSONObject.optString("appId", null);
            if (optString2 == null) {
                JSBridge.this.invokeCallback(optString, false, "appId was not provided");
                return;
            }
            if (Build.MANUFACTURER.equals("Amazon")) {
                str2 = "amzn://apps/android?p=" + optString2;
            } else {
                str2 = "market://details?id=" + optString2;
            }
            if (Utils.startActivityFromUrl(str2)) {
                JSBridge.this.u.onAdLeftApplication();
                JSBridge.this.invokeCallback(optString, true);
                return;
            }
            JSBridge.this.invokeCallback(optString, false, "Unable to open app store");
        }

        @JavascriptInterface
        public void httpGet(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "MMJS: httpGet(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString("callbackId", null);
            final String optString2 = jSONObject.optString("url", null);
            if (TextUtils.isEmpty(optString2)) {
                MMLog.e(JSBridge.o, "url was not provided");
                JSBridge.this.invokeCallback(optString, false);
                return;
            }
            final int optInt = jSONObject.optInt("timeout", Constants.HTTP_TIMEOUT);
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeMMJS.6
                @Override // java.lang.Runnable
                public void run() {
                    HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(optString2, optInt);
                    if (contentFromGetRequest.code == 200) {
                        JSBridge.this.invokeCallback(optString, contentFromGetRequest.content);
                    } else {
                        JSBridge.this.invokeCallback(optString, false, "http request failed with response code: " + contentFromGetRequest.code);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class JSBridgeInlineVideo {
        private Map<Object, InlineWebVideoView> b = new HashMap();

        public JSBridgeInlineVideo() {
        }

        @JavascriptInterface
        public void insert(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: insert(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String string = jSONObject.getString("url");
            final int i = jSONObject.getInt("width");
            final int i2 = jSONObject.getInt("height");
            final int i3 = jSONObject.getInt(JSInterface.JSON_X);
            final int i4 = jSONObject.getInt(JSInterface.JSON_Y);
            final boolean optBoolean = jSONObject.optBoolean("autoPlay", false);
            final boolean optBoolean2 = jSONObject.optBoolean("showMediaControls", false);
            final boolean optBoolean3 = jSONObject.optBoolean("showExpandControls", false);
            final String optString = jSONObject.optString("placeholder", null);
            final boolean optBoolean4 = jSONObject.optBoolean("muted", false);
            final int optInt = jSONObject.optInt("timeUpdateInterval", -1);
            final String optString2 = jSONObject.optString("callbackId");
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.1
                @Override // java.lang.Runnable
                public void run() {
                    final MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                    if (mMWebView != null) {
                        InlineWebVideoView inlineWebVideoView = new InlineWebVideoView(mMWebView.getContext(), optBoolean, optBoolean4, optBoolean2, optBoolean3, optInt, optString2, new InlineWebVideoView.InlineWebVideoViewListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.1.1
                            @Override // com.millennialmedia.internal.video.InlineWebVideoView.InlineWebVideoViewListener
                            public void onClicked() {
                                mMWebView.onNotifyClicked();
                            }
                        });
                        JSBridgeInlineVideo.this.b.put(inlineWebVideoView.getTag(), inlineWebVideoView);
                        DisplayMetrics displayMetrics = mMWebView.getContext().getResources().getDisplayMetrics();
                        inlineWebVideoView.setAnchorView(mMWebView, JSBridgeInlineVideo.this.a(displayMetrics, i3), JSBridgeInlineVideo.this.a(displayMetrics, i4), JSBridgeInlineVideo.this.a(displayMetrics, i), JSBridgeInlineVideo.this.a(displayMetrics, i2), new InlineWebVideoView.InlineWebVideoViewAttachListener() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.1.2
                            @Override // com.millennialmedia.internal.video.InlineWebVideoView.InlineWebVideoViewAttachListener
                            public void attachSucceeded(InlineWebVideoView inlineWebVideoView2) {
                                JSBridgeInlineVideo.this.b.remove(inlineWebVideoView2.getTag());
                            }

                            @Override // com.millennialmedia.internal.video.InlineWebVideoView.InlineWebVideoViewAttachListener
                            public void attachFailed(InlineWebVideoView inlineWebVideoView2) {
                                JSBridgeInlineVideo.this.b.remove(inlineWebVideoView2.getTag());
                            }
                        });
                        if (optString != null) {
                            inlineWebVideoView.setPlaceholder(Uri.parse(optString));
                        }
                        inlineWebVideoView.setVideoURI(Uri.parse(string));
                    }
                }
            });
        }

        @JavascriptInterface
        public void play(String str) throws JSONException {
            InlineWebVideoView inlineWebVideoView;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: play(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView != null && (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(new JSONObject(str).getString("videoId"))) != null) {
                inlineWebVideoView.start();
            }
        }

        @JavascriptInterface
        public void stop(String str) throws JSONException {
            InlineWebVideoView inlineWebVideoView;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: stop(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView != null && (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(new JSONObject(str).getString("videoId"))) != null) {
                inlineWebVideoView.stop();
            }
        }

        @JavascriptInterface
        public void pause(String str) throws JSONException {
            InlineWebVideoView inlineWebVideoView;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: pause(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView != null && (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(new JSONObject(str).getString("videoId"))) != null) {
                inlineWebVideoView.pause();
            }
        }

        @JavascriptInterface
        public void seek(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: seek(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView != null) {
                JSONObject jSONObject = new JSONObject(str);
                InlineWebVideoView inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(jSONObject.getString("videoId"));
                if (inlineWebVideoView != null) {
                    inlineWebVideoView.seekTo(jSONObject.getInt("time"));
                }
            }
        }

        @JavascriptInterface
        public void setMuted(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: setMuted(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView != null) {
                JSONObject jSONObject = new JSONObject(str);
                InlineWebVideoView inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(jSONObject.getString("videoId"));
                if (inlineWebVideoView != null) {
                    boolean z = jSONObject.getBoolean(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE);
                    jSONObject.optBoolean("force", false);
                    if (z) {
                        inlineWebVideoView.mute();
                    } else {
                        inlineWebVideoView.unmute();
                    }
                }
            }
        }

        @JavascriptInterface
        public void updateVideoURL(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: updateVideoURL(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String string = jSONObject.getString("videoId");
            final String string2 = jSONObject.getString("url");
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.2
                @Override // java.lang.Runnable
                public void run() {
                    InlineWebVideoView inlineWebVideoView;
                    MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                    if (mMWebView != null && (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(string)) != null) {
                        inlineWebVideoView.setVideoURI(Uri.parse(string2));
                    }
                }
            });
        }

        @JavascriptInterface
        public void reposition(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: reposition(" + str + ")");
            }
            JSONObject jSONObject = new JSONObject(str);
            final String string = jSONObject.getString("videoId");
            final int i = jSONObject.getInt("width");
            final int i2 = jSONObject.getInt("height");
            final int i3 = jSONObject.getInt(JSInterface.JSON_X);
            final int i4 = jSONObject.getInt(JSInterface.JSON_Y);
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.3
                @Override // java.lang.Runnable
                public void run() {
                    MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                    if (mMWebView != null) {
                        DisplayMetrics displayMetrics = mMWebView.getContext().getResources().getDisplayMetrics();
                        InlineWebVideoView inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(string);
                        if (inlineWebVideoView != null) {
                            inlineWebVideoView.reposition(JSBridgeInlineVideo.this.a(displayMetrics, i3), JSBridgeInlineVideo.this.a(displayMetrics, i4), JSBridgeInlineVideo.this.a(displayMetrics, i), JSBridgeInlineVideo.this.a(displayMetrics, i2));
                        }
                    }
                }
            });
        }

        @JavascriptInterface
        public void remove(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: remove(" + str + ")");
            }
            final String string = new JSONObject(str).getString("videoId");
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.4
                @Override // java.lang.Runnable
                public void run() {
                    InlineWebVideoView inlineWebVideoView;
                    MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                    if (mMWebView != null && (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(string)) != null) {
                        inlineWebVideoView.remove();
                    }
                }
            });
        }

        @JavascriptInterface
        public void expandToFullScreen(String str) throws JSONException {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: expandToFullScreen(" + str + ")");
            }
            final String string = new JSONObject(str).getString("videoId");
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.JSBridgeInlineVideo.5
                @Override // java.lang.Runnable
                public void run() {
                    InlineWebVideoView inlineWebVideoView;
                    MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
                    if (mMWebView != null && (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(string)) != null) {
                        inlineWebVideoView.expandToFullScreen();
                    }
                }
            });
        }

        @JavascriptInterface
        public void triggerTimeUpdate(String str) throws JSONException {
            InlineWebVideoView inlineWebVideoView;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(JSBridge.o, "InlineVideo: triggerTimeUpdate(" + str + ")");
            }
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView != null && (inlineWebVideoView = (InlineWebVideoView) mMWebView.findViewWithTag(new JSONObject(str).getString("videoId"))) != null) {
                inlineWebVideoView.triggerTimeUpdate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a(DisplayMetrics displayMetrics, float f) {
            return (int) TypedValue.applyDimension(1, f, displayMetrics);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class JSBridgeVastVideo {
        JSBridgeVastVideo() {
        }

        @JavascriptInterface
        public void play(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (!(mMWebView instanceof VASTVideoView.VASTVideoWebView)) {
                MMLog.e(JSBridge.o, "Play cannot be called on a WebView that is not part of a VAST Video creative.");
            } else {
                ((VASTVideoView.VASTVideoWebView) mMWebView).play();
            }
        }

        @JavascriptInterface
        public void pause(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (!(mMWebView instanceof VASTVideoView.VASTVideoWebView)) {
                MMLog.e(JSBridge.o, "Pause cannot be called on a WebView that is not part of a VAST Video creative.");
            } else {
                ((VASTVideoView.VASTVideoWebView) mMWebView).pause();
            }
        }

        @JavascriptInterface
        public void close(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (!(mMWebView instanceof VASTVideoView.VASTVideoWebView)) {
                MMLog.e(JSBridge.o, "Close cannot be called on a WebView that is not part of a VAST Video creative.");
            } else {
                ((VASTVideoView.VASTVideoWebView) mMWebView).close();
            }
        }

        @JavascriptInterface
        public void skip(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (mMWebView instanceof VASTVideoView.VASTVideoWebView) {
                ((VASTVideoView.VASTVideoWebView) mMWebView).skip();
            }
        }

        @JavascriptInterface
        public void restart(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (!(mMWebView instanceof VASTVideoView.VASTVideoWebView)) {
                MMLog.e(JSBridge.o, "Restart cannot be called on a WebView that is not part of a VAST Video creative.");
            } else {
                ((VASTVideoView.VASTVideoWebView) mMWebView).restart();
            }
        }

        @JavascriptInterface
        public void seek(String str) throws JSONException {
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (!(mMWebView instanceof VASTVideoView.VASTVideoWebView)) {
                MMLog.e(JSBridge.o, "Seek cannot be called on a WebView that is not part of a VAST Video creative.");
                return;
            }
            ((VASTVideoView.VASTVideoWebView) mMWebView).seek(new JSONObject(str).getInt("seekTime"));
        }

        @JavascriptInterface
        public void triggerTimeUpdate(String str) {
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (!(mMWebView instanceof VASTVideoView.VASTVideoWebView)) {
                MMLog.e(JSBridge.o, "TriggerTimeUpdate can't be called on a WebView that is not part of a VAST Video creative.");
            } else {
                ((VASTVideoView.VASTVideoWebView) mMWebView).triggerTimeUpdate();
            }
        }

        @JavascriptInterface
        public void setTimeInterval(String str) throws JSONException {
            MMWebView mMWebView = (MMWebView) JSBridge.this.t.get();
            if (!(mMWebView instanceof VASTVideoView.VASTVideoWebView)) {
                MMLog.e(JSBridge.o, "SetTimeInterval can't be called on a WebView that is not part of a VAST Video creative.");
                return;
            }
            ((VASTVideoView.VASTVideoWebView) mMWebView).setTimeInterval(new JSONObject(str).optInt("timeInterval", -1));
        }
    }

    public void enableApiCalls() {
        this.y = true;
    }

    public void setTwoPartExpand() {
        this.f = true;
    }

    public void setStateResized() {
        b("resized");
    }

    public void setStateUnresized() {
        b("default");
    }

    public void setStateExpanded() {
        if (this.d) {
            b("default");
        } else {
            b("expanded");
        }
    }

    public void setStateCollapsed() {
        if (this.d) {
            b("hidden");
        } else {
            b("default");
        }
    }

    public void setStateResizing() {
        this.g = true;
    }

    void b(String str) {
        if (this.h) {
            this.g = false;
            if (!TextUtils.equals(str, this.e) || TextUtils.equals(str, "resized")) {
                this.e = str;
                MMWebView mMWebView = this.t.get();
                if (mMWebView != null) {
                    a("MmJsBridge.mraid.setState", str, a(mMWebView));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        if (z != this.j) {
            this.j = z;
            if (this.h) {
                a("MmJsBridge.mraid.setViewable", Boolean.valueOf(z));
            } else {
                b();
            }
        }
    }

    JSONObject a(MMWebView mMWebView) {
        ViewUtils.getViewDimensionsRelativeToContent(mMWebView, this.v);
        if (this.v == null) {
            return null;
        }
        ViewUtils.convertPixelsToDips(this.v);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(JSInterface.JSON_X, this.v.left);
            jSONObject.put(JSInterface.JSON_Y, this.v.top);
            jSONObject.put("width", this.v.width());
            jSONObject.put("height", this.v.height());
            return jSONObject;
        } catch (JSONException e) {
            MMLog.e(o, "Error creating json object");
            return jSONObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(MMWebView mMWebView) {
        this.x = System.currentTimeMillis() + 450;
        if (this.w.compareAndSet(false, true)) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.JSBridge.3
                @Override // java.lang.Runnable
                public void run() {
                    long j = 0;
                    while (true) {
                        try {
                            Thread.sleep(100L);
                            MMWebView mMWebView2 = (MMWebView) JSBridge.this.t.get();
                            if (mMWebView2 == null) {
                                break;
                            }
                            if (JSBridge.this.x > j) {
                                j = JSBridge.this.x;
                                JSBridge.this.c(mMWebView2);
                            }
                            long j2 = j;
                            if (System.currentTimeMillis() >= JSBridge.this.x) {
                                break;
                            }
                            j = j2;
                        } catch (InterruptedException e) {
                        }
                    }
                    JSBridge.this.w.set(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(MMWebView mMWebView) {
        JSONObject a2 = a(mMWebView);
        if (a2 != null) {
            if (this.h) {
                if (!this.g) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("currentPosition", a2);
                        a("MmJsBridge.mraid.setPositions", jSONObject);
                        return;
                    } catch (JSONException e) {
                        MMLog.e(o, "Error creating json object in setCurrentPosition");
                        return;
                    }
                }
                return;
            }
            int optInt = a2.optInt("width", 0);
            int optInt2 = a2.optInt("height", 0);
            if (optInt > 0 && optInt2 > 0) {
                this.k = true;
                b();
            }
        }
    }

    void a(String str, String str2) {
        MMLog.e(o, "MRAID error - action: " + str2 + " message: " + str);
        a("MmJsBridge.mraid.throwMraidError", str, str2);
    }

    void d(MMWebView mMWebView) {
        if (this.h) {
            float displayDensity = EnvironmentUtils.getDisplayDensity();
            int displayWidth = (int) (EnvironmentUtils.getDisplayWidth() / displayDensity);
            int displayHeight = (int) (EnvironmentUtils.getDisplayHeight() / displayDensity);
            Rect contentDimensions = ViewUtils.getContentDimensions(mMWebView, null);
            try {
                JSONObject a2 = a(mMWebView);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("width", displayWidth);
                jSONObject.put("height", displayHeight);
                JSONObject jSONObject2 = new JSONObject();
                if (contentDimensions != null) {
                    ViewUtils.convertPixelsToDips(contentDimensions);
                    jSONObject2.put("width", contentDimensions.width());
                    jSONObject2.put("height", contentDimensions.height());
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("currentPosition", a2);
                jSONObject3.put("screenSize", jSONObject);
                jSONObject3.put("maxSize", jSONObject2);
                a("MmJsBridge.mraid.setPositions", jSONObject3);
            } catch (JSONException e) {
                MMLog.e(o, "Error creating json object in setCurrentPosition");
            }
        }
    }

    void b() {
        MMWebView mMWebView;
        if (!this.h && this.k && this.j && d() && (mMWebView = this.t.get()) != null) {
            this.h = true;
            Object[] objArr = new Object[1];
            objArr[0] = this.d ? "interstitial" : "inline";
            a("MmJsBridge.mraid.setPlacementType", objArr);
            a("MmJsBridge.mraid.setSupports", a());
            d(mMWebView);
            a("MmJsBridge.mraid.setViewable", Boolean.valueOf(this.j));
            b(this.f ? "expanded" : "default");
            if (this.u != null) {
                this.u.onJSBridgeReady();
            }
        }
    }

    public boolean isReady() {
        return this.h;
    }

    private boolean d() {
        return this.i && this.c.size() == 0;
    }

    public boolean areApiCallsEnabled() {
        return this.y;
    }
}
