package com.apprupt.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.apprupt.sdk.CvAppsList;
import com.apprupt.sdk.CvLauncher;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.URLRequest;
import com.apprupt.sdk.Vibrator;
import com.apprupt.sdk.adview.CloseButtonPosition;
import com.apprupt.sdk.adview.ExpandProperties;
import com.apprupt.sdk.adview.OrientationProperties;
import com.apprupt.sdk.adview.ResizeProperties;
import com.apprupt.sdk.mediation.InlineAdWrapper;
import com.apprupt.sdk.mediation.InterstitialAdWrapper;
import com.apprupt.sdk.mediation.Size;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.drive.DriveFile;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class MRAIDView extends WebView {

    /* renamed from: a  reason: collision with root package name */
    boolean f1918a;
    private final Logger.log b;
    private final Logger.log c;
    private final CvAdWrapper d;
    private final boolean e;
    private Size f;
    private final String g;
    private final String h;
    private MraidState i;
    private final boolean j;
    private Timer k;
    private boolean l;
    private final int[] m;
    private final int[] n;
    private final int[] o;
    private boolean p;
    private final int[] q;
    private boolean r;
    private boolean s;
    private final ResizeProperties t;
    private final ExpandProperties u;
    private final OrientationProperties v;
    private volatile boolean w;
    private volatile Vibrator.API x;
    private boolean y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MRAIDView(Context context, final CvAdWrapper cvAdWrapper, boolean z, final Runnable runnable) {
        super(new CvContext(context));
        this.b = Logger.a("MRAID");
        this.c = Logger.a("Lifecycle.MRAID");
        this.f = null;
        this.i = MraidState.LOADING;
        this.k = null;
        this.l = false;
        this.m = new int[]{0, 0};
        this.n = new int[]{-9999, -9999};
        this.o = new int[]{0, 0};
        this.p = false;
        this.q = new int[]{0, 0};
        this.r = false;
        this.s = false;
        this.t = new ResizeProperties();
        this.u = new ExpandProperties();
        this.v = new OrientationProperties();
        this.w = false;
        this.x = null;
        this.f1918a = false;
        this.y = false;
        this.b.a("Initializing mraid view...");
        this.d = cvAdWrapper;
        this.e = z;
        this.f = cvAdWrapper.n();
        this.o[0] = CvViewHelper.b(this.f.b);
        this.o[1] = CvViewHelper.b(this.f.c);
        this.g = "__mb_" + CvRandomString.a(10);
        this.h = z ? "interstitial" : "inline";
        CvViewHelper.b(context);
        this.m[0] = CvViewHelper.f1906a.x;
        this.m[1] = CvViewHelper.f1906a.y;
        setMinimumHeight(CvViewHelper.b(50.0f));
        setBackgroundColor(0);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setUserAgentString(CvAppInfo.a().o());
        if (Build.VERSION.SDK_INT >= 17) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            settings.setAllowUniversalAccessFromFileURLs(true);
        }
        if (Build.VERSION.SDK_INT > 10) {
            addJavascriptInterface(new JSInterface(), String.format("%s__bridge", this.g));
            this.j = false;
        } else {
            this.j = true;
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.apprupt.sdk.MRAIDView.1
            private boolean b = false;
            private boolean c = false;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                synchronized (this) {
                    if (!this.c) {
                        switch (actionMasked) {
                            case 0:
                                this.b = true;
                                break;
                            case 1:
                                if (this.b) {
                                    MRAIDView.this.l();
                                    this.c = true;
                                    break;
                                }
                                break;
                            case 2:
                            case 3:
                            case 4:
                            case 8:
                                this.b = false;
                                break;
                        }
                    }
                }
                return false;
            }
        });
        setWebViewClient(new WebViewClient() { // from class: com.apprupt.sdk.MRAIDView.2
            private boolean d = true;

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                MRAIDView.this.b.a("mraid view / page finished:", str);
                if (str.length() != 0 && !str.equals("about:blank") && str.startsWith("http")) {
                    CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MRAIDView.this.i == MraidState.LOADING) {
                                MRAIDView.this.k();
                                if (!MRAIDView.this.s) {
                                    runnable.run();
                                }
                                MRAIDView.this.a(MRAIDView.this.s ? MraidState.EXPANDED : MraidState.DEFAULT);
                                MRAIDView.this.a("ready", new Object[0]);
                            }
                        }
                    }, true);
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!MRAIDView.this.w) {
                    MRAIDView.this.b.a("mraid view / should load url:", str);
                    if (str.startsWith("mraid://")) {
                        Uri parse = Uri.parse(str);
                        String host = parse.getHost();
                        String queryParameter = parse.getQueryParameter(NativeProtocol.WEB_DIALOG_PARAMS);
                        String queryParameter2 = parse.getQueryParameter("asyncId");
                        MRAIDView.this.b.d("Request from legacy bridge: ", host, queryParameter);
                        MRAIDView mRAIDView = MRAIDView.this;
                        if (queryParameter2 == null || queryParameter2.length() <= 0) {
                            queryParameter2 = null;
                        }
                        mRAIDView.a(host, queryParameter, queryParameter2);
                    } else {
                        CvLauncher cvLauncher = new CvLauncher(((CvContext) MRAIDView.this.getContext()).getBaseContext());
                        if (cvLauncher.a(str, CvAdType.NORMAL)) {
                            MRAIDView.this.loadUrl(str);
                        }
                        if (cvLauncher.a() == 2) {
                            final CvLauncher.ResizeProperties b = cvLauncher.b();
                            CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.2.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    int i;
                                    int i2;
                                    int i3;
                                    int a2 = b.a();
                                    int b2 = b.b();
                                    int i4 = 1;
                                    if (a2 < 0) {
                                        i4 = 5;
                                        i = 300;
                                    } else {
                                        i = a2;
                                    }
                                    if (b2 < 0) {
                                        i3 = (MRAIDView.this.h.equals("inline") ? 8 : 16) | i4;
                                        i2 = 50;
                                    } else {
                                        int i5 = i4;
                                        i2 = b2;
                                        i3 = i5;
                                    }
                                    Size size = new Size(i3, i, i2);
                                    if (!MRAIDView.this.d()) {
                                        cvAdWrapper.b(size);
                                    }
                                    cvAdWrapper.a(size);
                                    String c = b.c();
                                    if (c != null && c.length() > 0) {
                                        MRAIDView.this.loadUrl(c);
                                    }
                                }
                            }, true);
                        }
                    }
                }
                return true;
            }
        });
        setWebChromeClient(new WebChromeClient() { // from class: com.apprupt.sdk.MRAIDView.3
            @Override // android.webkit.WebChromeClient
            public void onConsoleMessage(String str, int i, String str2) {
                Log.e("WEBVIEW", "MSG(D): " + str + " on line " + i + " in " + str2);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                Log.e("WEBVIEW", "MSG: " + consoleMessage.message() + " on line " + consoleMessage.lineNumber() + " in " + consoleMessage.sourceId());
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                callback.invoke(str, true, true);
            }

            @Override // android.webkit.WebChromeClient
            @TargetApi(21)
            public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                return CvBaseActivityImpl.a((CvContext) MRAIDView.this.getContext(), fileChooserParams.getAcceptTypes(), null, valueCallback);
            }
        });
        new Handler().post(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.4
            @Override // java.lang.Runnable
            public void run() {
                MRAIDView.this.loadDataWithBaseURL("http://cv.apprupt.com", MRAIDView.this.d.o(), "text/html", "UTF-8", null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidState a() {
        return this.i;
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = -1;
        if (this.h.equals("interstitial")) {
            ViewParent parent = getParent();
            if (parent != null) {
                ((View) parent).getWidth();
            }
            Size.Computed a2 = this.f.a(getContext(), View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2), false);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            layoutParams.width = this.f.a(32) ? -1 : a2.f1998a;
            layoutParams.height = a2.b;
            setLayoutParams(layoutParams);
            if (!this.f.a(32)) {
                i3 = a2.f1998a;
            }
            setMeasuredDimension(i3, a2.b);
        }
        super.onMeasure(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.5
            @Override // java.lang.Runnable
            public void run() {
                MRAIDView.this.setWebChromeClient(new WebChromeClient());
                MRAIDView.this.setWebViewClient(new WebViewClient());
                MRAIDView.this.loadData("<html><body style=\"background-color:transparent\"></body></html>", "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING);
                MRAIDView.this.w = true;
            }
        });
    }

    private synchronized Vibrator.API h() {
        if (this.x == null) {
            this.x = Vibrator.a(getContext());
        }
        return this.x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return d() || this.i == MraidState.RESIZED;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.6
            @Override // java.lang.Runnable
            public void run() {
                MRAIDView.this.l = true;
                if (MRAIDView.this.k != null) {
                    MRAIDView.this.k.cancel();
                    MRAIDView.this.k.purge();
                }
                MRAIDView.this.k = new Timer();
                MRAIDView.this.k.scheduleAtFixedRate(new TimerTask() { // from class: com.apprupt.sdk.MRAIDView.6.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        MRAIDView.this.i();
                    }
                }, 0L, 300L);
                MRAIDView.this.invalidate();
                CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.6.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            MRAIDView.this.invalidate();
                        } catch (Exception e) {
                        }
                    }
                });
            }
        }, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.7
            @Override // java.lang.Runnable
            public void run() {
                MRAIDView.this.l = false;
                MRAIDView.this.k.cancel();
                MRAIDView.this.k.purge();
                MRAIDView.this.k = null;
                MRAIDView.this.i();
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (!this.l || !isShown()) {
            z = false;
            z2 = false;
        } else {
            int i = this.n[0];
            int i2 = this.n[1];
            int width = getWidth();
            int height = getHeight();
            getLocationOnScreen(this.n);
            CvViewHelper.b(getContext());
            if (CvViewHelper.f1906a.x == this.m[0] && CvViewHelper.f1906a.y == this.m[1]) {
                z = false;
            } else {
                this.m[0] = CvViewHelper.f1906a.x;
                this.m[1] = CvViewHelper.f1906a.y;
                z = true;
            }
            z2 = Rect.intersects(new Rect(0, 0, this.m[0], this.m[1]), new Rect(this.n[0], this.n[1], width, height));
            if (width == this.o[0] && height == this.o[1]) {
                z3 = false;
            } else {
                this.o[0] = width;
                this.o[1] = height;
                z3 = true;
            }
            z4 = (i == this.n[0] && i2 == this.n[1]) ? z3 : true;
        }
        if (z) {
            h("screenSize");
        }
        if (this.r != z2) {
            this.r = z2;
            k();
            h("viewable");
            if (this.r) {
                CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.8
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            MRAIDView.this.invalidate();
                        } catch (Exception e) {
                        }
                    }
                });
            }
        }
        if (z4) {
            h("currentPosition");
        }
    }

    private String j() {
        if (this.j) {
            this.b.d("FIX SCRIPT", String.format("(function () {\n    var name   = '%s__bridge',\n        properties = %s,\n        supports = %s,\n        bridge;\n    this[name] = {\n        request : function (name, params, id) {\n            if (name == 'getProperty') {\n                var propname = JSON.parse(params).name;\n                return JSON.stringify({value: (properties[propname] === void(0) ? '' : properties[propname])});\n            } else if (name == 'supports') {\n                return !!supports[JSON.parse(params).feature];\n            } else {\n                (function () {\n                    var frame = document.createElement('iframe');\n                    frame.style.position = 'absolue';\n                    frame.style.top = '-10000px';\n                    frame.style.left = '-10000px';\n                    frame.src = 'mraid://' + name + '?params=' + encodeURIComponent(params) + '&asyncId=' + (id ? id : '');\n                    document.body.appendChild(frame);\n                    setTimeout(function () {\n                        frame.parentNode.removeChild(frame);\n                    }, 100);\n                }());\n            }\n        },\n        update : function (msg) {\n            properties[msg.name] = msg.value;\n        }\n    };\n}).call(window);", this.g, q().toString(), r().toString()));
            return String.format("(function () {\n    var name   = '%s__bridge',\n        properties = %s,\n        supports = %s,\n        bridge;\n    this[name] = {\n        request : function (name, params, id) {\n            if (name == 'getProperty') {\n                var propname = JSON.parse(params).name;\n                return JSON.stringify({value: (properties[propname] === void(0) ? '' : properties[propname])});\n            } else if (name == 'supports') {\n                return !!supports[JSON.parse(params).feature];\n            } else {\n                (function () {\n                    var frame = document.createElement('iframe');\n                    frame.style.position = 'absolue';\n                    frame.style.top = '-10000px';\n                    frame.style.left = '-10000px';\n                    frame.src = 'mraid://' + name + '?params=' + encodeURIComponent(params) + '&asyncId=' + (id ? id : '');\n                    document.body.appendChild(frame);\n                    setTimeout(function () {\n                        frame.parentNode.removeChild(frame);\n                    }, 100);\n                }());\n            }\n        },\n        update : function (msg) {\n            properties[msg.name] = msg.value;\n        }\n    };\n}).call(window);", this.g, q().toString(), r().toString());
        }
        return "";
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        String format;
        String str6 = "<script type=\"text/javascript\">\n(function () {\n    \n    if (!Function.prototype.bind) {\n        Function.prototype.bind = function (oThis) {\n            if (typeof this !== \"function\") {\n                // closest thing possible to the ECMAScript 5\n                // internal IsCallable function\n                throw new TypeError(\"Function.prototype.bind - what is trying to be bound is not callable\");\n            }\n            var aArgs = Array.prototype.slice.call(arguments, 1), \n                fToBind = this, \n                fNOP = function () {},\n                fBound = function () {\n                    return fToBind.apply(this instanceof fNOP && oThis ? this : oThis, aArgs.concat(Array.prototype.slice.call(arguments)));\n                };\n            fNOP.prototype = this.prototype;\n            fBound.prototype = new fNOP();\n            return fBound;\n        };\n    }\n    \n    // stop scrolling\n    document.addEventListener('touchmove', function (e) {\n        e.preventDefault();\n        e.returnValue = false;\n        return false;\n    }, false);\n    \n}).call(window);\n" + j() + "\n" + String.format("var mraid = (function () {\n    \n    var MRAID20 = function () { this.init(); },\n        prefix = '%s',\n        bridge = this[prefix + '__bridge'],\n        listeners = {},\n        callbacks = (function () {\n            var counter = 0,\n                cb = {};\n            return {\n                register : function (func) {\n                    if (typeof(func) != 'function') {\n                        return '';\n                    }\n                    var id = 'cb' + (++counter);\n                    cb[id] = func;\n                    return id;\n                },\n                clear : function (id) {\n                    try {\n                        if (id in cb) {\n                            delete cb[id];\n                        }\n                    } catch (e) {\n                        // pass\n                    }\n                },\n                run : function (id, params) {\n                    try {\n                        if (id in cb) {\n                            cb[id].apply(null, params || []);\n                        }\n                    } catch (e) {\n                        console.error(e);\n                    }\n                    clear(id);\n                }\n            };\n        }()),\n        mraid, publicIface;\n\n    \n\n    console.info(\"prefix: \" + prefix);\n\n    MRAID20.prototype = {\n        \n        init : function () {\n            this.listeners = listeners;\n        },\n        \n        fireEvent : function (event, params) {\n            if (this.listeners[event] && this.listeners[event].length) {\n                this.listeners[event].forEach(function (listener) {\n                    try {\n                        listener.apply(null, params || []);\n                    } catch (e) {\n                        console.error('Error while running ' + event + ' listener', e);\n                    }\n                });\n            }\n        },\n        \n        sendRequest : function (name, params, func) {\n            if (!params) {\n                params = '';\n            } else {\n                try {\n                    params = JSON.stringify(params);\n                } catch (e) {\n                    this.fireEvent('error', ['Error sending params', name]);\n                    return;\n                }\n            }\n            var r = bridge.request(name, params, callbacks.register(func));\n            if (typeof(r) === 'string' && r) {\n                try {\n                    r = JSON.parse(r);\n                    return r.value;\n                } catch (e) {\n                    r = null;\n                }\n            }\n            return r;\n        },\n        \n        getProperty : function (name) {\n            return this.sendRequest('getProperty', {'name' : name});\n        },\n        \n        handleMessage : function (name, message) {\n            if (name == 'event') {\n                this.fireEvent(message.name, message.params);\n                if (message.name == 'viewableChange') {\n                    this.fireEvent('pauseResumeChange', [!this.isViewable()]);\n                    this.fireEvent((this.isViewable() ? 'resume' : 'pause'), []);\n                }\n            } else if (name == 'async') {\n                callbacks.run(message.id, message.params);\n            }\n        },\n        \n        \n        // public interface\n\n        addEventListener : function (event, listener) {\n            if (!listeners[event]) {\n                listeners[event] = [];\n            }\n            listeners[event].push(listener);\n        },\n\n        removeEventListener : function (event, listener) {\n            if (listeners[event]) {\n                var index = 0;\n                while (index < listeners[event].length) {\n                    if (listeners[event][index] === listener) {\n                        listeners[event].splice(index, 1);\n                    } else {\n                        ++index;\n                    }\n                }\n            }\n        },\n\n        createCalendarEvent : function (event) {\n            // not supported as of lack of system default calendar app\n            // this.fireEvent('error', ['Creating calendar event is not supported', 'createCalendarEvent']);\n            this.sendRequest('createCalendarEvent', {'event' : event});\n        },\n\n        close : function () {\n            this.sendRequest('close');\n        },\n\n        veCompleted : function () {\n            this.sendRequest('veCompleted');\n        },\n\n        kill : function () {\n            this.sendRequest('kill');\n        },\n\n        expand : function (url) {\n            this.sendRequest('expand', {url: url});\n        },\n\n        getCurrentPosition : function () {\n            return this.getProperty('currentPosition');\n        },\n\n        getDefaultPosition : function () {\n            return this.getProperty('defaultPosition');\n        },\n\n        getExpandProperties : function () {\n            return this.getProperty('expandProperties');\n        },\n        \n        getOrientationProperties : function () {\n            return this.getProperty('orientationProperties');\n        },\n\n        getMaxSize : function () {\n            return this.getProperty('screenSize');\n        },\n\n        getPlacementType : function () {\n            return this.getProperty('placementType');\n        },\n\n        getResizeProperties : function () {\n            return this.getProperty('resizeProperties');\n        },\n\n        getScreenSize  : function () {\n            return this.getProperty('screenSize');\n        },\n\n        getState : function () {\n            return this.getProperty('state');\n        },\n\n        getVersion : function () {\n            return this.getProperty('version');\n        },\n\n        isViewable : function () {\n            return this.getProperty('viewable');\n        },\n        \n        isPaused : function () {\n            return !this.isViewable();\n        },\n        \n        getViewable : function () {\n            return this.getProperty('viewable');\n        },\n\n        open : function (url) {\n            this.sendRequest('open', {'url' : url});\n        },\n\n        playVideo : function (url) {\n            //this.sendRequest('playVideo', {'url' : url});\n            this.sendRequest('open', {'url' : url});\n        },\n\n        resize : function () {\n            this.sendRequest('resize');\n        },\n\n        setExpandProperties : function (properties) {\n            this.sendRequest('setExpandProperties', {'properties' : properties});\n        },\n\n        setResizeProperties : function (properties) {\n            this.sendRequest('setResizeProperties', {'properties' : properties});\n        },\n        \n        setOrientationProperties : function (properties) {\n            this.sendRequest('setOrientationProperties', {'properties' : properties});\n        },\n\n        storePicture : function (url) {\n            this.sendRequest('storePicture', {'url' : url});\n        },\n\n        supports : function (feature) {\n            return this.sendRequest('supports', {\"feature\": feature});\n        },\n\n        useCustomClose : function (shouldUseCustomClose) {\n            this.sendRequest('useCustomClose', {'value': shouldUseCustomClose});\n        },\n        \n        appIsInstalled : function (bundle, scheme, callback) {\n            this.sendRequest('appIsInstalled', {'bundle': bundle}, callback);\n        },\n        \n        appIsRunning : function (bundle, scheme, callback) {\n            this.sendRequest('appIsRunning', {'bundle': bundle}, callback);\n        },\n        \n        appInfo : function (bundle, scheme, callback) {\n            this.sendRequest('appInfo', {'bundle': bundle}, callback);\n        },\n\n        connectionInfo : function (callback) {\n            this.sendRequest(\"connectionInfo\", null, callback);\n        },\n\n        setBackground : function (background) {\n            this.sendRequest(\"setBackground\", {\"background\": background});\n        },\n\n        vibrate : function (lenght) {\n            this.sendRequest(\"vibrate\", {\"length\": lenght});\n        }\n\n    };\n    \n    \n    \n    mraid = new MRAID20();\n    this[prefix + '__receiver'] = mraid.handleMessage.bind(mraid);\n    publicIface = {};\n    (function () {\n        var key;\n        for (key in mraid) {\n            switch (key) {\n                case 'getProperty'   :\n                case 'sendMessage'   :\n                case 'listeners'     : \n                case 'fireEvent'     :\n                case 'handleMessage' :\n                    break;\n                default :\n                    publicIface[key] = mraid[key].bind(mraid);\n                    break;\n            }\n        }\n    }());\n    \n    return publicIface;\n}).call(window);", this.g) + "\n</script>";
        String lowerCase = str2.toLowerCase();
        int indexOf = lowerCase.indexOf("<html");
        if (indexOf >= 0) {
            String[] strArr = {"<script", "<head>"};
            int length = strArr.length;
            boolean z = true;
            int i = indexOf;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                String str7 = strArr[i2];
                i = lowerCase.indexOf(str7);
                if (i < 0) {
                    i2++;
                    z = false;
                } else if (!z) {
                    i += str7.length();
                }
            }
            format = i >= 0 ? str2.substring(0, i) + str6 + str2.substring(i) : str6 + str2;
        } else {
            format = String.format("<!DOCTYPE html>\n<html>\n<head>\n<title>CvAd</title>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n<meta name=\"viewport\" content=\"initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\" />\n<style type=\"text/css\">\n* {-webkit-tap-highlight-color: rgba(0,0,0,0.0); }\nhtml,body {padding:0;margin:0;width:100%%;height:100%%;-webkit-text-size-adjust:100%%;overflow:hidden;}\n</style>\n%s\n</head>\n<body id=\"[containerId]\">\n%s\n</body>\n</html>", str6, str2);
        }
        format.replaceAll("\\[containerId\\]", CvRandomString.a()).replaceAll("\\[cvId\\]", CvRandomString.a());
        this.i = MraidState.LOADING;
        super.loadDataWithBaseURL(str, format, str3, str4, str5);
    }

    @Override // android.webkit.WebView
    public void loadUrl(final String str) {
        if (!this.w) {
            if (str.startsWith("http")) {
                URLRequest.c(str).a(new URLRequest.Listener() { // from class: com.apprupt.sdk.MRAIDView.9
                    @Override // com.apprupt.sdk.URLRequest.Listener
                    public void a(final URLRequest.URLResponse uRLResponse) {
                        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.9.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (uRLResponse.d) {
                                    MRAIDView.this.n();
                                } else {
                                    MRAIDView.this.loadDataWithBaseURL(str, uRLResponse.c, "text/html", "UTF-8", null);
                                }
                            }
                        }, true);
                    }
                }).b();
            } else {
                super.loadUrl(str);
            }
        }
    }

    boolean d() {
        return this.s || this.i.equals(MraidState.EXPANDED) || this.h.equals("interstitial");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MraidState mraidState) {
        if (this.i != mraidState) {
            this.i = mraidState;
            h("state");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (!this.p && this.r) {
            this.q[0] = this.n[0];
            this.q[1] = this.n[1];
            h("defaultPosition");
        }
    }

    private void a(String str) {
        b(str, CvAppInfo.a().b().e());
    }

    private void a(String str, final String str2) {
        if (str != null && str2 != null) {
            CvAppInfo.a().f1732a.a(str, new CvAppsList.SingleListener() { // from class: com.apprupt.sdk.MRAIDView.10
                @Override // com.apprupt.sdk.CvAppsList.SingleListener
                public void a(CvAppsList.State state) {
                    Boolean valueOf;
                    boolean z = true;
                    MRAIDView mRAIDView = MRAIDView.this;
                    String str3 = str2;
                    Object[] objArr = new Object[1];
                    if (state == CvAppsList.State.UNKNOWN) {
                        valueOf = null;
                    } else {
                        if (state != CvAppsList.State.YES) {
                            z = false;
                        }
                        valueOf = Boolean.valueOf(z);
                    }
                    objArr[0] = valueOf;
                    mRAIDView.b(str3, objArr);
                }
            });
        } else {
            this.b.d("Invalid bundle (" + str + ") or async id (" + str2 + ")");
        }
    }

    private void b(String str, final String str2) {
        if (str != null && str2 != null) {
            CvAppInfo.a().f1732a.b(str, new CvAppsList.SingleListener() { // from class: com.apprupt.sdk.MRAIDView.11
                @Override // com.apprupt.sdk.CvAppsList.SingleListener
                public void a(CvAppsList.State state) {
                    Boolean valueOf;
                    boolean z = true;
                    MRAIDView mRAIDView = MRAIDView.this;
                    String str3 = str2;
                    Object[] objArr = new Object[1];
                    if (state == CvAppsList.State.UNKNOWN) {
                        valueOf = null;
                    } else {
                        if (state != CvAppsList.State.YES) {
                            z = false;
                        }
                        valueOf = Boolean.valueOf(z);
                    }
                    objArr[0] = valueOf;
                    mRAIDView.b(str3, objArr);
                }
            });
        } else {
            this.b.d("Invalid bundle (" + str + ") or async id (" + str2 + ")");
        }
    }

    private void c(String str, final String str2) {
        if (str != null && str2 != null) {
            CvAppInfo.a().f1732a.a(str, new CvAppsList.AppInfoListener() { // from class: com.apprupt.sdk.MRAIDView.12
                @Override // com.apprupt.sdk.CvAppsList.AppInfoListener
                public void a(JSONObject jSONObject) {
                    MRAIDView.this.b(str2, jSONObject);
                }
            });
        } else {
            this.b.d("Invalid bundle (" + str + ") or async id (" + str2 + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.13
            @Override // java.lang.Runnable
            public void run() {
                if (!MRAIDView.this.y) {
                    MRAIDView.this.y = true;
                    if (MRAIDView.this.h.equals("inline")) {
                        ((CvInlineAdWrapper) MRAIDView.this.d).d().c();
                    } else {
                        ((CvInterstitialAdWrapper) MRAIDView.this.d).a().c();
                    }
                }
            }
        });
    }

    private void b(final String str) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.14
            @Override // java.lang.Runnable
            public void run() {
                if (!MRAIDView.this.w && MRAIDView.this.h.equals("inline") && !MRAIDView.this.s && MRAIDView.this.i != MraidState.EXPANDED) {
                    ((CvInlineAdWrapper) MRAIDView.this.d).r();
                    if (str == null || str.length() <= 0 || (!str.startsWith("http://") && !str.startsWith("https://"))) {
                        MRAIDView.this.a(MraidState.EXPANDED);
                        return;
                    }
                    MRAIDView.this.s = true;
                    MRAIDView.this.loadUrl(str);
                }
            }
        }, true);
    }

    private void m() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.15
            @Override // java.lang.Runnable
            public void run() {
                int i;
                int i2;
                int i3;
                int i4;
                if (!MRAIDView.this.w && MRAIDView.this.i != MraidState.EXPANDED && !MRAIDView.this.h.equals("interstitial")) {
                    CloseButtonPosition f = MRAIDView.this.t.f();
                    int d = MRAIDView.this.t.d();
                    int e = MRAIDView.this.t.e();
                    if (d >= 0) {
                        i = d;
                        i2 = 1;
                    } else {
                        i = 300;
                        i2 = 5;
                    }
                    if (e < 0) {
                        i3 = i2 | 8;
                        i4 = 50;
                    } else {
                        i3 = i2;
                        i4 = e;
                    }
                    ((CvInlineAdWrapper) MRAIDView.this.d).a(new Size(i3, i, i4));
                    ((CvInlineAdWrapper) MRAIDView.this.d).a(f, new Runnable() { // from class: com.apprupt.sdk.MRAIDView.15.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MRAIDView.this.n();
                        }
                    });
                    CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.15.2
                        @Override // java.lang.Runnable
                        public void run() {
                            MRAIDView.this.a(MraidState.RESIZED);
                        }
                    });
                }
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.16
            @Override // java.lang.Runnable
            public void run() {
                if (!MRAIDView.this.w) {
                    if (MRAIDView.this.i == MraidState.RESIZED) {
                        ((CvInlineAdWrapper) MRAIDView.this.d).a(MRAIDView.this.d.n());
                        ((CvInlineAdWrapper) MRAIDView.this.d).q();
                        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.16.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MRAIDView.this.a(MraidState.DEFAULT);
                            }
                        });
                    } else if (MRAIDView.this.i == MraidState.EXPANDED) {
                        ((CvInlineAdWrapper) MRAIDView.this.d).c(MRAIDView.this.d.n());
                        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.16.2
                            @Override // java.lang.Runnable
                            public void run() {
                                MRAIDView.this.a(MraidState.DEFAULT);
                            }
                        });
                    } else if (MRAIDView.this.h.equals("interstitial")) {
                        InterstitialAdWrapper.Listener a2 = ((InterstitialAdWrapper) MRAIDView.this.d).a();
                        if (a2 != null) {
                            a2.a();
                        }
                        MRAIDView.this.b();
                    } else if (MRAIDView.this.h.equals("inline")) {
                        InlineAdWrapper.Listener d = ((InlineAdWrapper) MRAIDView.this.d).d();
                        if (d != null) {
                            d.a();
                        }
                        MRAIDView.this.b();
                    }
                }
            }
        }, true);
    }

    private void o() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.17
            @Override // java.lang.Runnable
            public void run() {
                if (MRAIDView.this.h.equals("interstitial")) {
                    ((CvInterstitialAdWrapper) MRAIDView.this.d).c();
                }
            }
        }, true);
    }

    private void p() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.18
            @Override // java.lang.Runnable
            public void run() {
                if (!MRAIDView.this.w) {
                    if (MRAIDView.this.h.equals("interstitial")) {
                        InterstitialAdWrapper.Listener a2 = ((InterstitialAdWrapper) MRAIDView.this.d).a();
                        if (a2 != null) {
                            a2.b();
                        }
                    } else if (MRAIDView.this.h.equals("inline")) {
                        if (MRAIDView.this.i == MraidState.EXPANDED) {
                            MRAIDView.this.n();
                            return;
                        }
                        InlineAdWrapper.Listener d = ((InlineAdWrapper) MRAIDView.this.d).d();
                        if (d != null) {
                            d.b();
                        }
                    }
                }
            }
        }, true);
    }

    private void c(final String str) {
        if (str != null && str.length() > 0) {
            CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.19
                @Override // java.lang.Runnable
                public void run() {
                    Context baseContext = ((CvContext) MRAIDView.this.getContext()).getBaseContext();
                    if (new CvLauncher(baseContext).a(str, CvAdType.NORMAL)) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        if (Build.VERSION.SDK_INT < 21) {
                            intent.addFlags(524288);
                        }
                        intent.setData(Uri.parse(str));
                        baseContext.startActivity(intent);
                    }
                }
            }, true);
        }
    }

    private void a(final boolean z) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.20
            @Override // java.lang.Runnable
            public void run() {
                if (!MRAIDView.this.w) {
                    boolean a2 = MRAIDView.this.u.a();
                    MRAIDView.this.u.a(z);
                    boolean a3 = MRAIDView.this.u.a();
                    if (a2 != a3) {
                        if (MRAIDView.this.i == MraidState.EXPANDED || "interstitial".equals(MRAIDView.this.h)) {
                            MRAIDView.this.d.a(a3);
                        }
                    }
                }
            }
        });
    }

    private boolean d(String str) {
        if (Consts.FeatureInlineVideo.equals(str)) {
            return CvViewHelper.a(this);
        }
        if ("sms".equals(str)) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("sms:+4940123123123"));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            return getContext().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
        } else if (!"tel".equals(str)) {
            return "appsInfo".equals(str) || "connectionInfo".equals(str) || "background".equals(str) || "pauseResume".equals(str);
        } else {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("tel:+4940123123123"));
            intent2.addFlags(DriveFile.MODE_READ_ONLY);
            return getContext().getPackageManager().queryIntentActivities(intent2, 65536).size() > 0;
        }
    }

    private void e(final String str) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.21
            @Override // java.lang.Runnable
            public void run() {
                MRAIDView.this.b.d("BACKGROUND", str);
                if (!MRAIDView.this.w && str != null) {
                    try {
                        int a2 = CvViewHelper.a(str);
                        MRAIDView.this.b.d("BACKGROUND i", Integer.valueOf(a2));
                        ExpandProperties expandProperties = MRAIDView.this.u;
                        synchronized (expandProperties) {
                            expandProperties.a(a2);
                        }
                        MRAIDView.this.d.a(a2);
                    } catch (IllegalArgumentException e) {
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Runnable e() {
        return new Runnable() { // from class: com.apprupt.sdk.MRAIDView.22
            @Override // java.lang.Runnable
            public void run() {
                MRAIDView.this.n();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExpandProperties f() {
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OrientationProperties g() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2, String str3) {
        this.b.d("jsRequest", str);
        SimpleJSON simpleJSON = new SimpleJSON();
        try {
            simpleJSON.a("value", JSONObject.NULL);
            SimpleJSON simpleJSON2 = new SimpleJSON(str2);
            this.b.d("MRAID", str, simpleJSON2);
            if (str.equals("getProperty") && simpleJSON2.f("name")) {
                Object f = f(simpleJSON2.a("name"));
                if (f != null) {
                    simpleJSON.a("value", f);
                }
            } else if (str.equals("expand")) {
                b(simpleJSON2.a("url", (String) null));
            } else if (str.equals("resize")) {
                m();
            } else if (str.equals("close")) {
                n();
            } else if (str.equals("kill")) {
                this.b.d("KILL!!!");
                p();
            } else if (str.equals("open")) {
                c(simpleJSON2.a("url"));
            } else if (str.equals("storePicture")) {
                d("Cannot store picture", "storePicture");
            } else if (str.equals("supports")) {
                simpleJSON.a("value", Boolean.valueOf(d(simpleJSON2.a("feature"))));
            } else if (str.equals("setOrientationProperties")) {
                this.v.a(simpleJSON2.e("properties"));
                h("orientationProperties");
            } else if (str.equals("setExpandProperties")) {
                this.u.a(simpleJSON2.e("properties"));
                h("expandProperties");
            } else if (str.equals("setResizeProperties")) {
                this.t.a(simpleJSON2.e("properties"));
                h("resizeProperties");
            } else if (str.equals("useCustomClose")) {
                a(simpleJSON2.d("value"));
                h("expandProperties");
            } else if (str.equals("appIsInstalled")) {
                a(simpleJSON2.a("bundle", (String) null), str3);
            } else if (str.equals("appIsRunning")) {
                b(simpleJSON2.a("bundle", (String) null), str3);
            } else if (str.equals("appInfo")) {
                c(simpleJSON2.a("bundle", (String) null), str3);
            } else if (str.equals("connectionInfo")) {
                a(str3);
            } else if (str.equals("setBackground")) {
                e(simpleJSON2.a("background", (String) null));
            } else if (str.equals("vibrate")) {
                a(simpleJSON2.b("length", 0));
            } else if (str.equals("veCompleted")) {
                o();
            } else {
                d("Unknown request " + str, str);
            }
        } catch (Exception e) {
            this.b.d("Error jsRequest", e.getClass().getName(), e.getMessage());
        }
        this.b.d("jsRequest result", simpleJSON.toString());
        return simpleJSON.toString();
    }

    private void a(long j) {
        Vibrator.API h = h();
        if (j > 0) {
            h.a(j);
        } else {
            h.a();
        }
    }

    private Object f(String str) {
        this.b.d("getProperty", str);
        if (str.equals("state")) {
            return this.i.toString();
        }
        if (str.equals("version")) {
            return "2.0";
        }
        if (str.equals("expandProperties")) {
            return this.u.c();
        }
        if (str.equals("resizeProperties")) {
            return this.t.c();
        }
        if (str.equals("orientationProperties")) {
            return this.v.a();
        }
        if (str.equals("viewable")) {
            return Boolean.valueOf(this.r);
        }
        if (str.equals(AdPlacementMetadata.METADATA_KEY_PLACEMENT_TYPE)) {
            return this.h;
        }
        if (str.equals("currentPosition") || str.equals("defaultPosition")) {
            int[] iArr = {-1, -1};
            if (str.equals("defaultPosition")) {
                iArr = this.q;
            } else if (getVisibility() == 0) {
                getLocationOnScreen(iArr);
            }
            int[] iArr2 = {0, 0};
            if (str.equals("defaultPosition")) {
                iArr2[0] = this.d.n().b;
                iArr2[1] = this.d.n().c;
            } else {
                iArr2[0] = (int) CvViewHelper.a(getWidth());
                iArr2[1] = (int) CvViewHelper.a(getHeight());
            }
            SimpleJSON simpleJSON = new SimpleJSON();
            simpleJSON.a(com.openx.view.mraid.JSInterface.JSON_X, (Object) Integer.valueOf((int) CvViewHelper.a(iArr[0])));
            simpleJSON.a(com.openx.view.mraid.JSInterface.JSON_Y, (Object) Integer.valueOf((int) CvViewHelper.a(iArr[1])));
            simpleJSON.a("width", (Object) Integer.valueOf(iArr2[0]));
            simpleJSON.a("height", (Object) Integer.valueOf(iArr2[1]));
            return simpleJSON.f1969a;
        } else if (str.equals("screenSize") || str.equals("maxSize")) {
            Point point = CvViewHelper.b;
            SimpleJSON simpleJSON2 = new SimpleJSON();
            simpleJSON2.a("width", (Object) Integer.valueOf(point.x));
            simpleJSON2.a("height", (Object) Integer.valueOf(point.y));
            return simpleJSON2.f1969a;
        } else {
            d("Unknown property: " + str, "getProperty");
            return null;
        }
    }

    private SimpleJSON q() {
        String[] strArr;
        SimpleJSON simpleJSON = new SimpleJSON();
        for (String str : new String[]{"state", "version", "expandProperties", "resizeProperties", "orientationProperties", "viewable", AdPlacementMetadata.METADATA_KEY_PLACEMENT_TYPE, "currentPosition", "defaultPosition", "screenSize"}) {
            simpleJSON.a(str, f(str));
        }
        return simpleJSON;
    }

    private SimpleJSON r() {
        String[] strArr;
        SimpleJSON simpleJSON = new SimpleJSON();
        for (String str : new String[]{Consts.FeatureInlineVideo, "sms", "tel", "appsInfo", "connectionInfo", "background", "pauseResume"}) {
            simpleJSON.a(str, Boolean.valueOf(d(str)));
        }
        return simpleJSON;
    }

    private void g(final String str) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.MRAIDView.23
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 19) {
                    MRAIDView.this.evaluateJavascript(str, null);
                } else {
                    MRAIDView.this.loadUrl("javascript:" + str);
                }
            }
        }, true);
    }

    private void h(String str) {
        if (this.j) {
            SimpleJSON simpleJSON = new SimpleJSON();
            simpleJSON.a("name", (Object) str);
            simpleJSON.a("value", f(str));
            g(String.format("%s__bridge.update(%s)", this.g, simpleJSON.toString()));
        }
        if ("viewable".equals(str) || "state".equals(str)) {
            SimpleJSON simpleJSON2 = new SimpleJSON();
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(f(str));
            simpleJSON2.a(NativeProtocol.WEB_DIALOG_PARAMS, jSONArray);
            simpleJSON2.a("name", (Object) String.format("%sChange", str));
            a("event", simpleJSON2.f1969a);
        } else if ("currentPosition".equals(str)) {
            SimpleJSON simpleJSON3 = new SimpleJSON();
            JSONArray jSONArray2 = new JSONArray();
            SimpleJSON simpleJSON4 = new SimpleJSON((JSONObject) f(str));
            jSONArray2.put(simpleJSON4.c("width"));
            jSONArray2.put(simpleJSON4.c("height"));
            simpleJSON3.a(NativeProtocol.WEB_DIALOG_PARAMS, jSONArray2);
            simpleJSON3.a("name", (Object) "sizeChange");
            this.c.b("Fire sizeChange event");
            a("event", simpleJSON3.f1969a);
        }
    }

    private void a(String str, JSONObject jSONObject) {
        Object[] objArr = new Object[3];
        objArr[0] = this.g;
        objArr[1] = str;
        objArr[2] = jSONObject == null ? "null" : jSONObject.toString();
        g(String.format("%s__receiver(\"%s\", %s)", objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, Object... objArr) {
        try {
            JSONArray jSONArray = new JSONArray();
            for (Object obj : objArr) {
                if (obj == null) {
                    jSONArray.put(JSONObject.NULL);
                } else {
                    jSONArray.put(obj);
                }
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", str);
            jSONObject.put(NativeProtocol.WEB_DIALOG_PARAMS, jSONArray);
            a("event", jSONObject);
        } catch (Exception e) {
            this.b.c(e, "Error building event");
        }
    }

    private void d(String str, String str2) {
        a("error", str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, Object... objArr) {
        try {
            JSONArray jSONArray = new JSONArray();
            for (Object obj : objArr) {
                if (obj == null) {
                    jSONArray.put(JSONObject.NULL);
                } else {
                    jSONArray.put(obj);
                }
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", str);
            jSONObject.put(NativeProtocol.WEB_DIALOG_PARAMS, jSONArray);
            a("async", jSONObject);
        } catch (Exception e) {
            this.b.c(e, "Error building async response");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum MraidState {
        LOADING,
        DEFAULT,
        RESIZED,
        EXPANDED,
        HIDDEN;

        @Override // java.lang.Enum
        public String toString() {
            switch (this) {
                case LOADING:
                    return "loading";
                case DEFAULT:
                    return "default";
                case RESIZED:
                    return "resized";
                case EXPANDED:
                    return "expanded";
                case HIDDEN:
                    return "hidden";
                default:
                    return "unknown";
            }
        }
    }

    /* loaded from: classes.dex */
    class JSInterface {
        JSInterface() {
        }

        @JavascriptInterface
        public String request(String str, String str2, String str3) {
            MRAIDView mRAIDView = MRAIDView.this;
            if (str3 == null || str3.length() <= 0) {
                str3 = null;
            }
            return mRAIDView.a(str, str2, str3);
        }
    }
}
