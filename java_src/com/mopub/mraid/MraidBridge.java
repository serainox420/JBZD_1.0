package com.mopub.mraid;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.drive.DriveFile;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.ViewGestureDetector;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.mobileads.resource.MraidJavascript;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.mopub.network.Networking;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class MraidBridge {

    /* renamed from: a  reason: collision with root package name */
    private final AdReport f4540a;
    private final String b;
    private final PlacementType c;
    private final MraidNativeCommandHandler d;
    private MraidBridgeListener e;
    private MraidWebView f;
    private boolean g;
    private boolean h;
    private final WebViewClient i;

    /* loaded from: classes3.dex */
    public interface MraidBridgeListener {
        void onClose();

        boolean onConsoleMessage(ConsoleMessage consoleMessage);

        void onExpand(URI uri, boolean z) throws a;

        boolean onJsAlert(String str, JsResult jsResult);

        void onOpen(URI uri);

        void onPageFailedToLoad();

        void onPageLoaded();

        void onPlayVideo(URI uri);

        void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws a;

        void onSetOrientationProperties(boolean z, b bVar) throws a;

        void onUseCustomClose(boolean z);

        void onVisibilityChanged(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidBridge(AdReport adReport, PlacementType placementType) {
        this(adReport, placementType, new MraidNativeCommandHandler());
    }

    @VisibleForTesting
    MraidBridge(AdReport adReport, PlacementType placementType, MraidNativeCommandHandler mraidNativeCommandHandler) {
        this.b = MraidJavascript.JAVASCRIPT_SOURCE.replaceAll("(?m)^\\s+", "").replaceAll("(?m)^//.*(?=\\n)", "");
        this.i = new WebViewClient() { // from class: com.mopub.mraid.MraidBridge.5
            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                MoPubLog.d("Error: " + str);
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                return MraidBridge.this.b(str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                MraidBridge.this.f();
            }
        };
        this.f4540a = adReport;
        this.c = placementType;
        this.d = mraidNativeCommandHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MraidBridgeListener mraidBridgeListener) {
        this.e = mraidBridgeListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MraidWebView mraidWebView) {
        this.f = mraidWebView;
        this.f.getSettings().setJavaScriptEnabled(true);
        if (Build.VERSION.SDK_INT >= 17 && this.c == PlacementType.INTERSTITIAL) {
            mraidWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.f.loadUrl("javascript:" + this.b);
        this.f.setScrollContainer(false);
        this.f.setVerticalScrollBarEnabled(false);
        this.f.setHorizontalScrollBarEnabled(false);
        this.f.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.f.setWebViewClient(this.i);
        this.f.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.mraid.MraidBridge.1
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                return MraidBridge.this.e != null ? MraidBridge.this.e.onJsAlert(str2, jsResult) : super.onJsAlert(webView, str, str2, jsResult);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return MraidBridge.this.e != null ? MraidBridge.this.e.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
            }
        });
        final ViewGestureDetector viewGestureDetector = new ViewGestureDetector(this.f.getContext(), this.f, this.f4540a);
        viewGestureDetector.setUserClickListener(new ViewGestureDetector.UserClickListener() { // from class: com.mopub.mraid.MraidBridge.2
            @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
            public void onUserClick() {
                MraidBridge.this.g = true;
            }

            @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
            public void onResetUserClick() {
                MraidBridge.this.g = false;
            }

            @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
            public boolean wasClicked() {
                return MraidBridge.this.g;
            }
        });
        this.f.setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mraid.MraidBridge.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                viewGestureDetector.sendTouchEvent(motionEvent);
                switch (motionEvent.getAction()) {
                    case 0:
                    case 1:
                        if (!view.hasFocus()) {
                            view.requestFocus();
                            return false;
                        }
                        return false;
                    default:
                        return false;
                }
            }
        });
        this.f.setVisibilityChangedListener(new MraidWebView.OnVisibilityChangedListener() { // from class: com.mopub.mraid.MraidBridge.4
            @Override // com.mopub.mraid.MraidBridge.MraidWebView.OnVisibilityChangedListener
            public void onVisibilityChanged(boolean z) {
                if (MraidBridge.this.e != null) {
                    MraidBridge.this.e.onVisibilityChanged(z);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f = null;
    }

    public void setContentHtml(String str) {
        if (this.f == null) {
            MoPubLog.d("MRAID bridge called setContentHtml before WebView was attached");
            return;
        }
        this.h = false;
        this.f.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", "UTF-8", null);
    }

    public void setContentUrl(String str) {
        if (this.f == null) {
            MoPubLog.d("MRAID bridge called setContentHtml while WebView was not attached");
            return;
        }
        this.h = false;
        this.f.loadUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        if (this.f == null) {
            MoPubLog.d("Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + str);
            return;
        }
        MoPubLog.v("Injecting Javascript into MRAID WebView:\n\t" + str);
        this.f.loadUrl("javascript:" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MraidJavascriptCommand mraidJavascriptCommand, String str) {
        a("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(mraidJavascriptCommand.a()) + ", " + JSONObject.quote(str) + ")");
    }

    private void a(MraidJavascriptCommand mraidJavascriptCommand) {
        a("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(mraidJavascriptCommand.a()) + ")");
    }

    /* loaded from: classes3.dex */
    public static class MraidWebView extends BaseWebView {
        private OnVisibilityChangedListener b;
        private boolean c;

        /* loaded from: classes3.dex */
        public interface OnVisibilityChangedListener {
            void onVisibilityChanged(boolean z);
        }

        public MraidWebView(Context context) {
            super(context);
            this.c = getVisibility() == 0;
        }

        void setVisibilityChangedListener(OnVisibilityChangedListener onVisibilityChangedListener) {
            this.b = onVisibilityChangedListener;
        }

        @Override // android.webkit.WebView, android.view.View
        protected void onVisibilityChanged(View view, int i) {
            super.onVisibilityChanged(view, i);
            boolean z = i == 0;
            if (z != this.c) {
                this.c = z;
                if (this.b != null) {
                    this.b.onVisibilityChanged(this.c);
                }
            }
        }

        public boolean isVisible() {
            return this.c;
        }
    }

    @VisibleForTesting
    boolean b(String str) {
        boolean z = false;
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if ("mopub".equals(scheme)) {
                if ("failLoad".equals(host) && this.c == PlacementType.INLINE && this.e != null) {
                    this.e.onPageFailedToLoad();
                }
                return true;
            } else if ("mraid".equals(scheme)) {
                HashMap hashMap = new HashMap();
                for (NameValuePair nameValuePair : URLEncodedUtils.parse(uri, "UTF-8")) {
                    hashMap.put(nameValuePair.getName(), nameValuePair.getValue());
                }
                MraidJavascriptCommand a2 = MraidJavascriptCommand.a(host);
                try {
                    a(a2, hashMap);
                } catch (a e) {
                    a(a2, e.getMessage());
                }
                a(a2);
                return true;
            } else if (!this.g) {
                return false;
            } else {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                try {
                    if (this.f == null) {
                        MoPubLog.d("WebView was detached. Unable to load a URL");
                        z = true;
                    } else {
                        this.f.getContext().startActivity(intent);
                        z = true;
                    }
                    return z;
                } catch (ActivityNotFoundException e2) {
                    MoPubLog.d("No activity found to handle this URL " + str);
                    return z;
                }
            }
        } catch (URISyntaxException e3) {
            MoPubLog.w("Invalid MRAID URL: " + str);
            a(MraidJavascriptCommand.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @VisibleForTesting
    public void f() {
        if (!this.h) {
            this.h = true;
            if (this.e != null) {
                this.e.onPageLoaded();
            }
        }
    }

    @VisibleForTesting
    void a(final MraidJavascriptCommand mraidJavascriptCommand, Map<String, String> map) throws a {
        if (mraidJavascriptCommand.a(this.c) && !this.g) {
            throw new a("Cannot execute this command unless the user clicks");
        }
        if (this.e == null) {
            throw new a("Invalid state to execute this command");
        }
        if (this.f == null) {
            throw new a("The current WebView is being destroyed");
        }
        switch (mraidJavascriptCommand) {
            case CLOSE:
                this.e.onClose();
                return;
            case RESIZE:
                this.e.onResize(a(c(map.get("width")), 0, 100000), a(c(map.get("height")), 0, 100000), a(c(map.get(Consts.ResizePropertiesOffsetX)), -100000, 100000), a(c(map.get(Consts.ResizePropertiesOffsetY)), -100000, 100000), a(map.get(Consts.ResizePropertiesCustomClosePosition), CloseableLayout.ClosePosition.TOP_RIGHT), a(map.get(Consts.ResizePropertiesAllowOffscreen), true));
                return;
            case EXPAND:
                this.e.onExpand(a(map.get("url"), (URI) null), a(map.get("shouldUseCustomClose"), false));
                return;
            case USE_CUSTOM_CLOSE:
                this.e.onUseCustomClose(a(map.get("shouldUseCustomClose"), false));
                return;
            case OPEN:
                this.e.onOpen(f(map.get("url")));
                return;
            case SET_ORIENTATION_PROPERTIES:
                this.e.onSetOrientationProperties(e(map.get(Consts.OrientationPpropertiesAllowOrientationChange)), d(map.get(Consts.OrientationPpropertiesForceOrientation)));
                return;
            case PLAY_VIDEO:
                this.e.onPlayVideo(f(map.get(ShareConstants.MEDIA_URI)));
                return;
            case STORE_PICTURE:
                this.d.a(this.f.getContext(), f(map.get(ShareConstants.MEDIA_URI)).toString(), new MraidNativeCommandHandler.c() { // from class: com.mopub.mraid.MraidBridge.6
                    @Override // com.mopub.mraid.MraidNativeCommandHandler.c
                    public void onFailure(a aVar) {
                        MraidBridge.this.a(mraidJavascriptCommand, aVar.getMessage());
                    }
                });
                return;
            case CREATE_CALENDAR_EVENT:
                this.d.a(this.f.getContext(), map);
                return;
            case UNSPECIFIED:
                throw new a("Unspecified MRAID Javascript command");
            default:
                return;
        }
    }

    private CloseableLayout.ClosePosition a(String str, CloseableLayout.ClosePosition closePosition) throws a {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals(Consts.ResizePropertiesCCPositionTopLeft)) {
                return CloseableLayout.ClosePosition.TOP_LEFT;
            }
            if (str.equals(Consts.ResizePropertiesCCPositionTopRight)) {
                return CloseableLayout.ClosePosition.TOP_RIGHT;
            }
            if (str.equals("center")) {
                return CloseableLayout.ClosePosition.CENTER;
            }
            if (str.equals(Consts.ResizePropertiesCCPositionBottomLeft)) {
                return CloseableLayout.ClosePosition.BOTTOM_LEFT;
            }
            if (str.equals(Consts.ResizePropertiesCCPositionBottomRight)) {
                return CloseableLayout.ClosePosition.BOTTOM_RIGHT;
            }
            if (str.equals(Consts.ResizePropertiesCCPositionTopCenter)) {
                return CloseableLayout.ClosePosition.TOP_CENTER;
            }
            if (str.equals(Consts.ResizePropertiesCCPositionBottomCenter)) {
                return CloseableLayout.ClosePosition.BOTTOM_CENTER;
            }
            throw new a("Invalid close position: " + str);
        }
        return closePosition;
    }

    private int c(String str) throws a {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException e) {
            throw new a("Invalid numeric parameter: " + str);
        }
    }

    private b d(String str) throws a {
        if ("portrait".equals(str)) {
            return b.PORTRAIT;
        }
        if ("landscape".equals(str)) {
            return b.LANDSCAPE;
        }
        if ("none".equals(str)) {
            return b.NONE;
        }
        throw new a("Invalid orientation: " + str);
    }

    private int a(int i, int i2, int i3) throws a {
        if (i < i2 || i > i3) {
            throw new a("Integer parameter out of range: " + i);
        }
        return i;
    }

    private boolean a(String str, boolean z) throws a {
        return str == null ? z : e(str);
    }

    private boolean e(String str) throws a {
        if ("true".equals(str)) {
            return true;
        }
        if (Consts.False.equals(str)) {
            return false;
        }
        throw new a("Invalid boolean parameter: " + str);
    }

    private URI a(String str, URI uri) throws a {
        return str == null ? uri : f(str);
    }

    private URI f(String str) throws a {
        if (str == null) {
            throw new a("Parameter cannot be null");
        }
        try {
            return new URI(str);
        } catch (URISyntaxException e) {
            throw new a("Invalid URL parameter: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        a("mraidbridge.setIsViewable(" + z + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PlacementType placementType) {
        a("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.a()) + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ViewState viewState) {
        a("mraidbridge.setState(" + JSONObject.quote(viewState.toJavascriptString()) + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        a("mraidbridge.setSupports(" + z + "," + z2 + "," + z3 + "," + z4 + "," + z5 + ")");
    }

    private String a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    private String b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    public void notifyScreenMetrics(c cVar) {
        a("mraidbridge.setScreenSize(" + b(cVar.a()) + ");mraidbridge.setMaxSize(" + b(cVar.c()) + ");mraidbridge.setCurrentPosition(" + a(cVar.e()) + ");mraidbridge.setDefaultPosition(" + a(cVar.g()) + ")");
        a("mraidbridge.notifySizeChangeEvent(" + b(cVar.d()) + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a("mraidbridge.notifyReadyEvent();");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f != null && this.f.isVisible();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.f != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.h;
    }
}
