package com.inmobi.re.container;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import com.amazon.device.ads.AdProperties;
import com.facebook.GraphResponse;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.vision.barcode.Barcode;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.monetization.internal.imai.IMAIController;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController;
import com.inmobi.re.container.mraidimpl.MRAIDBasic;
import com.inmobi.re.container.mraidimpl.MRAIDExpandController;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.inmobi.re.container.mraidimpl.MRAIDResizeController;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import com.inmobi.re.controller.JSController;
import com.inmobi.re.controller.JSUtilityController;
import com.inmobi.re.controller.util.AVPlayer;
import com.inmobi.re.controller.util.Constants;
import com.mopub.mobileads.resource.DrawableConstants;
import com.openx.view.mraid.JSInterface;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class IMWebView extends WebView implements Serializable {
    public static final String DIMENSIONS = "expand_dimensions";
    public static final String EXPAND_URL = "expand_url";
    protected static final int IMWEBVIEW_INTERSTITIAL_ID = 117;
    public static final String PLAYER_PROPERTIES = "player_properties";
    private static final long serialVersionUID = 7098506283154473782L;
    private c A;
    private ArrayList<String> B;
    private AtomicBoolean C;
    private ViewParent D;
    private int E;
    private boolean F;
    private WebViewClient H;
    private WebChromeClient I;
    private MediaPlayer.OnCompletionListener J;
    private boolean K;

    /* renamed from: a  reason: collision with root package name */
    double f3912a;
    public AtomicBoolean acqMutexcPos;
    public AtomicBoolean acqMutexdPos;
    AtomicBoolean b;
    InstantVideoCallbackCallback c;
    public JSONObject curPosition;
    public JSONObject defPosition;
    public AtomicBoolean doNotFireVisibilityChanged;
    private boolean e;
    private boolean f;
    private JSUtilityController g;
    private float h;
    private int i;
    public AtomicBoolean isMutexAquired;
    public boolean isTablet;
    private int j;
    private ViewState k;
    private IMWebViewPlayableListener l;
    private VideoView m;
    public MRAIDAudioVideoController mAudioVideoController;
    public MRAIDExpandController mExpandController;
    public MRAIDInterstitialController mInterstitialController;
    public boolean mIsInterstitialAd;
    public boolean mIsViewable;
    public IMWebViewListener mListener;
    public MRAIDBasic mMraidBasic;
    public IMWebView mOriginalWebviewForExpandUrl;
    public MRAIDResizeController mResizeController;
    public boolean mWebViewIsBrowserActivity;
    protected boolean mraidLoaded;
    public Object mutex;
    public Object mutexcPos;
    public Object mutexdPos;
    private View n;
    private WebChromeClient.CustomViewCallback o;
    private ViewGroup p;
    public int publisherOrientation;
    private FrameLayout q;
    private ArrayList<a> r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private Message w;
    public String webviewUserAgent;
    private Message x;
    private Activity y;
    private WebViewClient z;
    private static int[] d = {16843039, 16843040};
    public static boolean userInitiatedClose = false;
    private static Class<?> G = null;

    /* loaded from: classes2.dex */
    public interface IMWebViewListener {
        void onDismissAdScreen();

        void onDisplayFailed();

        void onError();

        void onExpand();

        void onExpandClose();

        void onIncentCompleted(Map<Object, Object> map);

        void onLeaveApplication();

        void onResize(ResizeDimensions resizeDimensions);

        void onResizeClose();

        void onShowAdScreen();

        void onUserInteraction(Map<String, String> map);
    }

    /* loaded from: classes2.dex */
    public interface IMWebViewPlayableListener {
        void onPlayableSettingsReceived(Map<String, Object> map);
    }

    /* loaded from: classes2.dex */
    public interface InstantVideoCallbackCallback {
        void postFailed(int i);

        void postSuccess();
    }

    /* loaded from: classes2.dex */
    public enum ViewState {
        LOADING,
        DEFAULT,
        RESIZED,
        EXPANDED,
        EXPANDING,
        HIDDEN,
        RESIZING
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum b {
        UNKNOWN_ERROR,
        MISSING_PARAMETER,
        CONETNT_ID_ERROR,
        CONTENT_URL_ERROR,
        CONTENT_URL_NOT_FOUND,
        NOT_SUPPORTED_SDK,
        CONTENT_TYPE_NOT_SUPPORTED,
        CONTENT_SIZE_NOT_SUPPORTED,
        NETWORK_ERROR,
        PERMISSION_ERROR,
        SD_CARD_ERROR
    }

    public IMWebView(Context context, IMWebViewListener iMWebViewListener) {
        super(context);
        this.doNotFireVisibilityChanged = new AtomicBoolean(false);
        this.f = false;
        this.k = ViewState.LOADING;
        this.o = null;
        this.s = false;
        this.mIsInterstitialAd = false;
        this.isTablet = false;
        this.mOriginalWebviewForExpandUrl = null;
        this.mWebViewIsBrowserActivity = false;
        this.t = false;
        this.u = false;
        this.mutex = new Object();
        this.mutexcPos = new Object();
        this.mutexdPos = new Object();
        this.isMutexAquired = new AtomicBoolean(false);
        this.acqMutexcPos = new AtomicBoolean(true);
        this.acqMutexdPos = new AtomicBoolean(true);
        this.B = new ArrayList<>();
        this.C = new AtomicBoolean();
        this.F = false;
        this.H = new WebViewClient() { // from class: com.inmobi.re.container.IMWebView.1
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                IMWebView.this.setState(ViewState.LOADING);
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onPageStarted url: " + str + " p " + IMWebView.this.getParent());
                if (IMWebView.this.getParent() == null) {
                    IMWebView.this.F = true;
                }
                if (IMWebView.this.z != null) {
                    IMWebView.this.z.onPageStarted(webView, str, bitmap);
                }
                IMWebView.this.mraidLoaded = false;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> error: " + str);
                if (IMWebView.this.z != null) {
                    IMWebView.this.z.onReceivedError(webView, i, str, str2);
                }
                try {
                    if (IMWebView.this.k == ViewState.LOADING && IMWebView.this.mListener != null && !IMWebView.this.C.get()) {
                        IMWebView.this.mListener.onError();
                    }
                    IMWebView.this.w = null;
                    IMWebView.this.f = true;
                } catch (Exception e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "Exception in webview loading ", e);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onPageFinished, url: " + str);
                if (IMWebView.this.z != null) {
                    IMWebView.this.z.onPageFinished(webView, str);
                }
                if (!IMWebView.this.f) {
                    try {
                        if (IMWebView.this.B.contains(str) && !IMWebView.this.mraidLoaded) {
                            IMWebView.this.injectJavaScript(Initializer.getMRAIDString());
                        }
                        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> Current State:" + IMWebView.this.k);
                        if (IMWebView.this.k == ViewState.LOADING) {
                            IMWebView.this.injectJavaScript("window.mraid.broadcastEvent('ready');");
                            IMWebView.this.injectJavaScript("window._im_imai.broadcastEvent('ready');");
                            Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> Firing ready event at " + webView);
                            if (IMWebView.this.mOriginalWebviewForExpandUrl != null) {
                                IMWebView.this.setState(ViewState.EXPANDED);
                            } else {
                                IMWebView.this.setState(ViewState.DEFAULT);
                            }
                            if ((!IMWebView.this.mIsInterstitialAd || IMWebView.this.mWebViewIsBrowserActivity) && IMWebView.this.getVisibility() == 4) {
                                IMWebView.this.setVisibility(0);
                            }
                            if (IMWebView.this.w != null && !IMWebView.this.C.get()) {
                                IMWebView.this.w.sendToTarget();
                            }
                            if (IMWebView.this.x != null) {
                                IMWebView.this.x.sendToTarget();
                            }
                        }
                    } catch (Exception e) {
                        Log.debug(Constants.RENDERING_LOG_TAG, "Exception in onPageFinished ", e);
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                boolean z = true;
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> shouldOverrideUrlLoading, url:" + str + "webview id" + webView);
                try {
                    if (!IMWebView.this.mWebViewIsBrowserActivity) {
                        IMWebView.this.c(str);
                    } else if (!str.startsWith("http:") && !str.startsWith("https:")) {
                        IMWebView.this.c(str);
                    } else {
                        IMWebView.this.doHidePlayers();
                        z = false;
                    }
                    return z;
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Should override exception", e);
                    return false;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(14)
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                IMWebView.this.a(sslErrorHandler, sslError);
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView webView, String str) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onLoadResource:" + str);
                try {
                    if (IMWebView.this.z != null) {
                        IMWebView.this.z.onLoadResource(webView, str);
                    }
                    if (str != null && str.contains("/mraid.js") && !IMWebView.this.getUrl().equals("about:blank") && !IMWebView.this.getUrl().startsWith("file:")) {
                        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object at " + webView.getUrl());
                        String url = IMWebView.this.getUrl();
                        if (!IMWebView.this.B.contains(url)) {
                            IMWebView.this.B.add(url);
                        }
                        if (!IMWebView.this.mraidLoaded) {
                            IMWebView.this.injectJavaScript(Initializer.getMRAIDString());
                        }
                        IMWebView.this.mraidLoaded = true;
                    }
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Cannot load resource", e);
                }
            }
        };
        this.I = new WebChromeClient() { // from class: com.inmobi.re.container.IMWebView.11
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
                Context expandedActivity;
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onJsAlert, " + str2);
                try {
                    if (IMWebView.this.isExpanded() || IMWebView.this.mIsInterstitialAd) {
                        expandedActivity = IMWebView.this.getExpandedActivity();
                    } else {
                        expandedActivity = webView.getContext();
                    }
                    new AlertDialog.Builder(expandedActivity).setTitle(str).setMessage(str2).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.confirm();
                        }
                    }).setCancelable(false).create().show();
                    return true;
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "webchrome client exception onJSAlert ", e);
                    return true;
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
                Context expandedActivity;
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onJsConfirm, " + str2);
                try {
                    if (IMWebView.this.isExpanded() || IMWebView.this.mIsInterstitialAd) {
                        expandedActivity = IMWebView.this.getExpandedActivity();
                    } else {
                        expandedActivity = webView.getContext();
                    }
                    AlertDialog.Builder positiveButton = new AlertDialog.Builder(expandedActivity).setTitle(str).setMessage(str2).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.confirm();
                        }
                    });
                    positiveButton.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.cancel();
                        }
                    });
                    positiveButton.setCancelable(false).create().show();
                    return true;
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "webchrome client exception onJSConfirm ", e);
                    return true;
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                Context expandedActivity;
                IMWebView.this.n = view;
                IMWebView.this.o = customViewCallback;
                Log.debug(Constants.RENDERING_LOG_TAG, "onShowCustomView ******************************" + view);
                try {
                    IMWebView.this.a(IMWebView.this.n, new View.OnTouchListener() { // from class: com.inmobi.re.container.IMWebView.11.5
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view2, MotionEvent motionEvent) {
                            return false;
                        }
                    });
                    IMWebView.this.n.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.container.IMWebView.11.6
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view2, MotionEvent motionEvent) {
                            return true;
                        }
                    });
                    if (view instanceof FrameLayout) {
                        IMWebView.this.q = (FrameLayout) view;
                        FrameLayout frameLayout = (FrameLayout) IMWebView.this.y.findViewById(16908290);
                        if (!(IMWebView.this.q.getFocusedChild() instanceof VideoView)) {
                            IMWebView.this.n = view;
                            view.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                            Log.debug(Constants.RENDERING_LOG_TAG, "adding " + view);
                            frameLayout.addView(view, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                            IMWebView.this.n.requestFocus();
                            IMWebView.this.a(IMWebView.this.n, new View.OnKeyListener() { // from class: com.inmobi.re.container.IMWebView.11.9
                                @Override // android.view.View.OnKeyListener
                                public boolean onKey(View view2, int i, KeyEvent keyEvent) {
                                    if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                        Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed when html5 video is playing");
                                        IMWebView.this.d();
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            return;
                        }
                        IMWebView.this.m = (VideoView) IMWebView.this.q.getFocusedChild();
                        if (IMWebView.this.isExpanded() || IMWebView.this.mIsInterstitialAd) {
                            expandedActivity = IMWebView.this.getExpandedActivity();
                        } else {
                            expandedActivity = view.getContext();
                        }
                        IMWebView.this.m.setMediaController(new MediaController(expandedActivity));
                        IMWebView.this.q.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                        IMWebView.this.m.setOnCompletionListener(IMWebView.this.J);
                        IMWebView.this.m.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.inmobi.re.container.IMWebView.11.7
                            @Override // android.view.View.OnFocusChangeListener
                            public void onFocusChange(View view2, boolean z) {
                                IMWebView.this.m.requestFocus();
                            }
                        });
                        frameLayout.addView(IMWebView.this.n, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                        Log.debug(Constants.RENDERING_LOG_TAG, "Registering");
                        IMWebView.this.a(IMWebView.this.n, new View.OnKeyListener() { // from class: com.inmobi.re.container.IMWebView.11.8
                            @Override // android.view.View.OnKeyListener
                            public boolean onKey(View view2, int i, KeyEvent keyEvent) {
                                if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                    Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed when html5 video is playing");
                                    IMWebView.this.m.stopPlayback();
                                    IMWebView.this.d();
                                    return true;
                                }
                                return false;
                            }
                        });
                    }
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "IMWebview onShowCustomView exception ", e);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                IMWebView.this.d();
                super.onHideCustomView();
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
                try {
                    AlertDialog.Builder builder = new AlertDialog.Builder(IMWebView.this.y);
                    builder.setTitle("Locations access");
                    builder.setMessage("Allow location access").setCancelable(true).setPositiveButton("Accept", new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            callback.invoke(str, true, false);
                        }
                    }).setNegativeButton("Decline", new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.10
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            callback.invoke(str, false, false);
                        }
                    });
                    builder.create().show();
                    super.onGeolocationPermissionsShowPrompt(str, callback);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Exception while accessing location from creative ", e);
                    callback.invoke(str, false, false);
                }
            }
        };
        this.mIsViewable = false;
        this.J = new MediaPlayer.OnCompletionListener() { // from class: com.inmobi.re.container.IMWebView.14
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                try {
                    mediaPlayer.stop();
                    IMWebView.this.q.setVisibility(8);
                    IMWebView.this.d();
                    IMWebView.this.y.setContentView(IMWebView.this.p);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Media Player onCompletion", e);
                }
            }
        };
        this.f3912a = -1.0d;
        this.b = new AtomicBoolean(false);
        this.K = true;
        this.c = null;
        this.mListener = iMWebViewListener;
        this.y = (Activity) context;
        b();
    }

    public IMWebView(Context context, IMWebViewListener iMWebViewListener, boolean z, boolean z2) {
        super(context);
        this.doNotFireVisibilityChanged = new AtomicBoolean(false);
        this.f = false;
        this.k = ViewState.LOADING;
        this.o = null;
        this.s = false;
        this.mIsInterstitialAd = false;
        this.isTablet = false;
        this.mOriginalWebviewForExpandUrl = null;
        this.mWebViewIsBrowserActivity = false;
        this.t = false;
        this.u = false;
        this.mutex = new Object();
        this.mutexcPos = new Object();
        this.mutexdPos = new Object();
        this.isMutexAquired = new AtomicBoolean(false);
        this.acqMutexcPos = new AtomicBoolean(true);
        this.acqMutexdPos = new AtomicBoolean(true);
        this.B = new ArrayList<>();
        this.C = new AtomicBoolean();
        this.F = false;
        this.H = new WebViewClient() { // from class: com.inmobi.re.container.IMWebView.1
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                IMWebView.this.setState(ViewState.LOADING);
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onPageStarted url: " + str + " p " + IMWebView.this.getParent());
                if (IMWebView.this.getParent() == null) {
                    IMWebView.this.F = true;
                }
                if (IMWebView.this.z != null) {
                    IMWebView.this.z.onPageStarted(webView, str, bitmap);
                }
                IMWebView.this.mraidLoaded = false;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> error: " + str);
                if (IMWebView.this.z != null) {
                    IMWebView.this.z.onReceivedError(webView, i, str, str2);
                }
                try {
                    if (IMWebView.this.k == ViewState.LOADING && IMWebView.this.mListener != null && !IMWebView.this.C.get()) {
                        IMWebView.this.mListener.onError();
                    }
                    IMWebView.this.w = null;
                    IMWebView.this.f = true;
                } catch (Exception e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "Exception in webview loading ", e);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onPageFinished, url: " + str);
                if (IMWebView.this.z != null) {
                    IMWebView.this.z.onPageFinished(webView, str);
                }
                if (!IMWebView.this.f) {
                    try {
                        if (IMWebView.this.B.contains(str) && !IMWebView.this.mraidLoaded) {
                            IMWebView.this.injectJavaScript(Initializer.getMRAIDString());
                        }
                        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> Current State:" + IMWebView.this.k);
                        if (IMWebView.this.k == ViewState.LOADING) {
                            IMWebView.this.injectJavaScript("window.mraid.broadcastEvent('ready');");
                            IMWebView.this.injectJavaScript("window._im_imai.broadcastEvent('ready');");
                            Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> Firing ready event at " + webView);
                            if (IMWebView.this.mOriginalWebviewForExpandUrl != null) {
                                IMWebView.this.setState(ViewState.EXPANDED);
                            } else {
                                IMWebView.this.setState(ViewState.DEFAULT);
                            }
                            if ((!IMWebView.this.mIsInterstitialAd || IMWebView.this.mWebViewIsBrowserActivity) && IMWebView.this.getVisibility() == 4) {
                                IMWebView.this.setVisibility(0);
                            }
                            if (IMWebView.this.w != null && !IMWebView.this.C.get()) {
                                IMWebView.this.w.sendToTarget();
                            }
                            if (IMWebView.this.x != null) {
                                IMWebView.this.x.sendToTarget();
                            }
                        }
                    } catch (Exception e) {
                        Log.debug(Constants.RENDERING_LOG_TAG, "Exception in onPageFinished ", e);
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                boolean z3 = true;
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> shouldOverrideUrlLoading, url:" + str + "webview id" + webView);
                try {
                    if (!IMWebView.this.mWebViewIsBrowserActivity) {
                        IMWebView.this.c(str);
                    } else if (!str.startsWith("http:") && !str.startsWith("https:")) {
                        IMWebView.this.c(str);
                    } else {
                        IMWebView.this.doHidePlayers();
                        z3 = false;
                    }
                    return z3;
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Should override exception", e);
                    return false;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(14)
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                IMWebView.this.a(sslErrorHandler, sslError);
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView webView, String str) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onLoadResource:" + str);
                try {
                    if (IMWebView.this.z != null) {
                        IMWebView.this.z.onLoadResource(webView, str);
                    }
                    if (str != null && str.contains("/mraid.js") && !IMWebView.this.getUrl().equals("about:blank") && !IMWebView.this.getUrl().startsWith("file:")) {
                        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object at " + webView.getUrl());
                        String url = IMWebView.this.getUrl();
                        if (!IMWebView.this.B.contains(url)) {
                            IMWebView.this.B.add(url);
                        }
                        if (!IMWebView.this.mraidLoaded) {
                            IMWebView.this.injectJavaScript(Initializer.getMRAIDString());
                        }
                        IMWebView.this.mraidLoaded = true;
                    }
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Cannot load resource", e);
                }
            }
        };
        this.I = new WebChromeClient() { // from class: com.inmobi.re.container.IMWebView.11
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
                Context expandedActivity;
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onJsAlert, " + str2);
                try {
                    if (IMWebView.this.isExpanded() || IMWebView.this.mIsInterstitialAd) {
                        expandedActivity = IMWebView.this.getExpandedActivity();
                    } else {
                        expandedActivity = webView.getContext();
                    }
                    new AlertDialog.Builder(expandedActivity).setTitle(str).setMessage(str2).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.confirm();
                        }
                    }).setCancelable(false).create().show();
                    return true;
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "webchrome client exception onJSAlert ", e);
                    return true;
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
                Context expandedActivity;
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onJsConfirm, " + str2);
                try {
                    if (IMWebView.this.isExpanded() || IMWebView.this.mIsInterstitialAd) {
                        expandedActivity = IMWebView.this.getExpandedActivity();
                    } else {
                        expandedActivity = webView.getContext();
                    }
                    AlertDialog.Builder positiveButton = new AlertDialog.Builder(expandedActivity).setTitle(str).setMessage(str2).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.confirm();
                        }
                    });
                    positiveButton.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.cancel();
                        }
                    });
                    positiveButton.setCancelable(false).create().show();
                    return true;
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "webchrome client exception onJSConfirm ", e);
                    return true;
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                Context expandedActivity;
                IMWebView.this.n = view;
                IMWebView.this.o = customViewCallback;
                Log.debug(Constants.RENDERING_LOG_TAG, "onShowCustomView ******************************" + view);
                try {
                    IMWebView.this.a(IMWebView.this.n, new View.OnTouchListener() { // from class: com.inmobi.re.container.IMWebView.11.5
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view2, MotionEvent motionEvent) {
                            return false;
                        }
                    });
                    IMWebView.this.n.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.container.IMWebView.11.6
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view2, MotionEvent motionEvent) {
                            return true;
                        }
                    });
                    if (view instanceof FrameLayout) {
                        IMWebView.this.q = (FrameLayout) view;
                        FrameLayout frameLayout = (FrameLayout) IMWebView.this.y.findViewById(16908290);
                        if (!(IMWebView.this.q.getFocusedChild() instanceof VideoView)) {
                            IMWebView.this.n = view;
                            view.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                            Log.debug(Constants.RENDERING_LOG_TAG, "adding " + view);
                            frameLayout.addView(view, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                            IMWebView.this.n.requestFocus();
                            IMWebView.this.a(IMWebView.this.n, new View.OnKeyListener() { // from class: com.inmobi.re.container.IMWebView.11.9
                                @Override // android.view.View.OnKeyListener
                                public boolean onKey(View view2, int i, KeyEvent keyEvent) {
                                    if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                        Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed when html5 video is playing");
                                        IMWebView.this.d();
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            return;
                        }
                        IMWebView.this.m = (VideoView) IMWebView.this.q.getFocusedChild();
                        if (IMWebView.this.isExpanded() || IMWebView.this.mIsInterstitialAd) {
                            expandedActivity = IMWebView.this.getExpandedActivity();
                        } else {
                            expandedActivity = view.getContext();
                        }
                        IMWebView.this.m.setMediaController(new MediaController(expandedActivity));
                        IMWebView.this.q.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                        IMWebView.this.m.setOnCompletionListener(IMWebView.this.J);
                        IMWebView.this.m.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.inmobi.re.container.IMWebView.11.7
                            @Override // android.view.View.OnFocusChangeListener
                            public void onFocusChange(View view2, boolean z3) {
                                IMWebView.this.m.requestFocus();
                            }
                        });
                        frameLayout.addView(IMWebView.this.n, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                        Log.debug(Constants.RENDERING_LOG_TAG, "Registering");
                        IMWebView.this.a(IMWebView.this.n, new View.OnKeyListener() { // from class: com.inmobi.re.container.IMWebView.11.8
                            @Override // android.view.View.OnKeyListener
                            public boolean onKey(View view2, int i, KeyEvent keyEvent) {
                                if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                    Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed when html5 video is playing");
                                    IMWebView.this.m.stopPlayback();
                                    IMWebView.this.d();
                                    return true;
                                }
                                return false;
                            }
                        });
                    }
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "IMWebview onShowCustomView exception ", e);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                IMWebView.this.d();
                super.onHideCustomView();
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
                try {
                    AlertDialog.Builder builder = new AlertDialog.Builder(IMWebView.this.y);
                    builder.setTitle("Locations access");
                    builder.setMessage("Allow location access").setCancelable(true).setPositiveButton("Accept", new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            callback.invoke(str, true, false);
                        }
                    }).setNegativeButton("Decline", new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.10
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            callback.invoke(str, false, false);
                        }
                    });
                    builder.create().show();
                    super.onGeolocationPermissionsShowPrompt(str, callback);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Exception while accessing location from creative ", e);
                    callback.invoke(str, false, false);
                }
            }
        };
        this.mIsViewable = false;
        this.J = new MediaPlayer.OnCompletionListener() { // from class: com.inmobi.re.container.IMWebView.14
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                try {
                    mediaPlayer.stop();
                    IMWebView.this.q.setVisibility(8);
                    IMWebView.this.d();
                    IMWebView.this.y.setContentView(IMWebView.this.p);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Media Player onCompletion", e);
                }
            }
        };
        this.f3912a = -1.0d;
        this.b = new AtomicBoolean(false);
        this.K = true;
        this.c = null;
        this.y = (Activity) context;
        this.mIsInterstitialAd = z;
        this.mWebViewIsBrowserActivity = z2;
        if (this.mIsInterstitialAd) {
            setId(IMWEBVIEW_INTERSTITIAL_ID);
        }
        this.mListener = iMWebViewListener;
        b();
    }

    public IMWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.doNotFireVisibilityChanged = new AtomicBoolean(false);
        this.f = false;
        this.k = ViewState.LOADING;
        this.o = null;
        this.s = false;
        this.mIsInterstitialAd = false;
        this.isTablet = false;
        this.mOriginalWebviewForExpandUrl = null;
        this.mWebViewIsBrowserActivity = false;
        this.t = false;
        this.u = false;
        this.mutex = new Object();
        this.mutexcPos = new Object();
        this.mutexdPos = new Object();
        this.isMutexAquired = new AtomicBoolean(false);
        this.acqMutexcPos = new AtomicBoolean(true);
        this.acqMutexdPos = new AtomicBoolean(true);
        this.B = new ArrayList<>();
        this.C = new AtomicBoolean();
        this.F = false;
        this.H = new WebViewClient() { // from class: com.inmobi.re.container.IMWebView.1
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                IMWebView.this.setState(ViewState.LOADING);
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onPageStarted url: " + str + " p " + IMWebView.this.getParent());
                if (IMWebView.this.getParent() == null) {
                    IMWebView.this.F = true;
                }
                if (IMWebView.this.z != null) {
                    IMWebView.this.z.onPageStarted(webView, str, bitmap);
                }
                IMWebView.this.mraidLoaded = false;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> error: " + str);
                if (IMWebView.this.z != null) {
                    IMWebView.this.z.onReceivedError(webView, i, str, str2);
                }
                try {
                    if (IMWebView.this.k == ViewState.LOADING && IMWebView.this.mListener != null && !IMWebView.this.C.get()) {
                        IMWebView.this.mListener.onError();
                    }
                    IMWebView.this.w = null;
                    IMWebView.this.f = true;
                } catch (Exception e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "Exception in webview loading ", e);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onPageFinished, url: " + str);
                if (IMWebView.this.z != null) {
                    IMWebView.this.z.onPageFinished(webView, str);
                }
                if (!IMWebView.this.f) {
                    try {
                        if (IMWebView.this.B.contains(str) && !IMWebView.this.mraidLoaded) {
                            IMWebView.this.injectJavaScript(Initializer.getMRAIDString());
                        }
                        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> Current State:" + IMWebView.this.k);
                        if (IMWebView.this.k == ViewState.LOADING) {
                            IMWebView.this.injectJavaScript("window.mraid.broadcastEvent('ready');");
                            IMWebView.this.injectJavaScript("window._im_imai.broadcastEvent('ready');");
                            Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> Firing ready event at " + webView);
                            if (IMWebView.this.mOriginalWebviewForExpandUrl != null) {
                                IMWebView.this.setState(ViewState.EXPANDED);
                            } else {
                                IMWebView.this.setState(ViewState.DEFAULT);
                            }
                            if ((!IMWebView.this.mIsInterstitialAd || IMWebView.this.mWebViewIsBrowserActivity) && IMWebView.this.getVisibility() == 4) {
                                IMWebView.this.setVisibility(0);
                            }
                            if (IMWebView.this.w != null && !IMWebView.this.C.get()) {
                                IMWebView.this.w.sendToTarget();
                            }
                            if (IMWebView.this.x != null) {
                                IMWebView.this.x.sendToTarget();
                            }
                        }
                    } catch (Exception e) {
                        Log.debug(Constants.RENDERING_LOG_TAG, "Exception in onPageFinished ", e);
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                boolean z3 = true;
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> shouldOverrideUrlLoading, url:" + str + "webview id" + webView);
                try {
                    if (!IMWebView.this.mWebViewIsBrowserActivity) {
                        IMWebView.this.c(str);
                    } else if (!str.startsWith("http:") && !str.startsWith("https:")) {
                        IMWebView.this.c(str);
                    } else {
                        IMWebView.this.doHidePlayers();
                        z3 = false;
                    }
                    return z3;
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Should override exception", e);
                    return false;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(14)
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                IMWebView.this.a(sslErrorHandler, sslError);
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView webView, String str) {
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onLoadResource:" + str);
                try {
                    if (IMWebView.this.z != null) {
                        IMWebView.this.z.onLoadResource(webView, str);
                    }
                    if (str != null && str.contains("/mraid.js") && !IMWebView.this.getUrl().equals("about:blank") && !IMWebView.this.getUrl().startsWith("file:")) {
                        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object at " + webView.getUrl());
                        String url = IMWebView.this.getUrl();
                        if (!IMWebView.this.B.contains(url)) {
                            IMWebView.this.B.add(url);
                        }
                        if (!IMWebView.this.mraidLoaded) {
                            IMWebView.this.injectJavaScript(Initializer.getMRAIDString());
                        }
                        IMWebView.this.mraidLoaded = true;
                    }
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Cannot load resource", e);
                }
            }
        };
        this.I = new WebChromeClient() { // from class: com.inmobi.re.container.IMWebView.11
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
                Context expandedActivity;
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onJsAlert, " + str2);
                try {
                    if (IMWebView.this.isExpanded() || IMWebView.this.mIsInterstitialAd) {
                        expandedActivity = IMWebView.this.getExpandedActivity();
                    } else {
                        expandedActivity = webView.getContext();
                    }
                    new AlertDialog.Builder(expandedActivity).setTitle(str).setMessage(str2).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.confirm();
                        }
                    }).setCancelable(false).create().show();
                    return true;
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "webchrome client exception onJSAlert ", e);
                    return true;
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
                Context expandedActivity;
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onJsConfirm, " + str2);
                try {
                    if (IMWebView.this.isExpanded() || IMWebView.this.mIsInterstitialAd) {
                        expandedActivity = IMWebView.this.getExpandedActivity();
                    } else {
                        expandedActivity = webView.getContext();
                    }
                    AlertDialog.Builder positiveButton = new AlertDialog.Builder(expandedActivity).setTitle(str).setMessage(str2).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.confirm();
                        }
                    });
                    positiveButton.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            jsResult.cancel();
                        }
                    });
                    positiveButton.setCancelable(false).create().show();
                    return true;
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "webchrome client exception onJSConfirm ", e);
                    return true;
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                Context expandedActivity;
                IMWebView.this.n = view;
                IMWebView.this.o = customViewCallback;
                Log.debug(Constants.RENDERING_LOG_TAG, "onShowCustomView ******************************" + view);
                try {
                    IMWebView.this.a(IMWebView.this.n, new View.OnTouchListener() { // from class: com.inmobi.re.container.IMWebView.11.5
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view2, MotionEvent motionEvent) {
                            return false;
                        }
                    });
                    IMWebView.this.n.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.container.IMWebView.11.6
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view2, MotionEvent motionEvent) {
                            return true;
                        }
                    });
                    if (view instanceof FrameLayout) {
                        IMWebView.this.q = (FrameLayout) view;
                        FrameLayout frameLayout = (FrameLayout) IMWebView.this.y.findViewById(16908290);
                        if (!(IMWebView.this.q.getFocusedChild() instanceof VideoView)) {
                            IMWebView.this.n = view;
                            view.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                            Log.debug(Constants.RENDERING_LOG_TAG, "adding " + view);
                            frameLayout.addView(view, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                            IMWebView.this.n.requestFocus();
                            IMWebView.this.a(IMWebView.this.n, new View.OnKeyListener() { // from class: com.inmobi.re.container.IMWebView.11.9
                                @Override // android.view.View.OnKeyListener
                                public boolean onKey(View view2, int i, KeyEvent keyEvent) {
                                    if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                        Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed when html5 video is playing");
                                        IMWebView.this.d();
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            return;
                        }
                        IMWebView.this.m = (VideoView) IMWebView.this.q.getFocusedChild();
                        if (IMWebView.this.isExpanded() || IMWebView.this.mIsInterstitialAd) {
                            expandedActivity = IMWebView.this.getExpandedActivity();
                        } else {
                            expandedActivity = view.getContext();
                        }
                        IMWebView.this.m.setMediaController(new MediaController(expandedActivity));
                        IMWebView.this.q.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                        IMWebView.this.m.setOnCompletionListener(IMWebView.this.J);
                        IMWebView.this.m.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.inmobi.re.container.IMWebView.11.7
                            @Override // android.view.View.OnFocusChangeListener
                            public void onFocusChange(View view2, boolean z3) {
                                IMWebView.this.m.requestFocus();
                            }
                        });
                        frameLayout.addView(IMWebView.this.n, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                        Log.debug(Constants.RENDERING_LOG_TAG, "Registering");
                        IMWebView.this.a(IMWebView.this.n, new View.OnKeyListener() { // from class: com.inmobi.re.container.IMWebView.11.8
                            @Override // android.view.View.OnKeyListener
                            public boolean onKey(View view2, int i, KeyEvent keyEvent) {
                                if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                    Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed when html5 video is playing");
                                    IMWebView.this.m.stopPlayback();
                                    IMWebView.this.d();
                                    return true;
                                }
                                return false;
                            }
                        });
                    }
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "IMWebview onShowCustomView exception ", e);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                IMWebView.this.d();
                super.onHideCustomView();
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
                try {
                    AlertDialog.Builder builder = new AlertDialog.Builder(IMWebView.this.y);
                    builder.setTitle("Locations access");
                    builder.setMessage("Allow location access").setCancelable(true).setPositiveButton("Accept", new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            callback.invoke(str, true, false);
                        }
                    }).setNegativeButton("Decline", new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.11.10
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            callback.invoke(str, false, false);
                        }
                    });
                    builder.create().show();
                    super.onGeolocationPermissionsShowPrompt(str, callback);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Exception while accessing location from creative ", e);
                    callback.invoke(str, false, false);
                }
            }
        };
        this.mIsViewable = false;
        this.J = new MediaPlayer.OnCompletionListener() { // from class: com.inmobi.re.container.IMWebView.14
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                try {
                    mediaPlayer.stop();
                    IMWebView.this.q.setVisibility(8);
                    IMWebView.this.d();
                    IMWebView.this.y.setContentView(IMWebView.this.p);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Media Player onCompletion", e);
                }
            }
        };
        this.f3912a = -1.0d;
        this.b = new AtomicBoolean(false);
        this.K = true;
        this.c = null;
        this.y = (Activity) context;
        b();
        getContext().obtainStyledAttributes(attributeSet, d).recycle();
    }

    public void setBrowserActivity(Activity activity) {
        if (activity != null) {
            this.y = (IMBrowserActivity) activity;
        }
    }

    public static void setIMAIController(Class<?> cls) {
        G = cls;
    }

    public void setPlayableListener(IMWebViewPlayableListener iMWebViewPlayableListener) {
        this.l = iMWebViewPlayableListener;
    }

    public IMWebViewPlayableListener getPlayableListener() {
        return this.l;
    }

    public void saveOriginalViewParent() {
        if (this.D == null) {
            this.D = getParent();
            if (this.D != null) {
                int childCount = ((ViewGroup) this.D).getChildCount();
                int i = 0;
                while (i < childCount && ((ViewGroup) this.D).getChildAt(i) != this) {
                    i++;
                }
                this.E = i;
            }
        }
    }

    @SuppressLint({"SetJavaScriptEnabled", "NewApi"})
    private void b() {
        this.b = new AtomicBoolean(false);
        userInitiatedClose = false;
        setScrollContainer(false);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        this.webviewUserAgent = getSettings().getUserAgentString();
        InternalSDKUtil.getUserAgent();
        setBackgroundColor(Initializer.getConfigParams().getWebviewBgColor());
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        if (Build.VERSION.SDK_INT >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.h = this.y.getResources().getDisplayMetrics().density;
        this.e = false;
        getSettings().setJavaScriptEnabled(true);
        getSettings().setGeolocationEnabled(true);
        this.g = new JSUtilityController(this, getContext());
        addJavascriptInterface(this.g, "utilityController");
        setWebViewClient(this.H);
        setWebChromeClient(this.I);
        this.mExpandController = new MRAIDExpandController(this, this.y);
        this.mResizeController = new MRAIDResizeController(this, this.y);
        this.mMraidBasic = new MRAIDBasic(this, this.y);
        this.mInterstitialController = new MRAIDInterstitialController(this, this.y);
        this.mAudioVideoController = new MRAIDAudioVideoController(this);
        this.A = new c(this, this.mMraidBasic, this.mExpandController, this.mInterstitialController, this.mAudioVideoController, this.mResizeController);
        this.mExpandController.mSensorDisplay = ((WindowManager) this.y.getSystemService("window")).getDefaultDisplay();
        this.mAudioVideoController.videoValidateWidth = this.y.getResources().getDisplayMetrics().widthPixels;
        try {
            addJavascriptInterface(G.getDeclaredConstructor(IMWebView.class).newInstance(this), IMAIController.IMAI_BRIDGE);
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Error adding js interface imai controller");
        }
        this.g.setWebViewClosed(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(8)
    public void a(final SslErrorHandler sslErrorHandler, final SslError sslError) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.y);
        builder.setPositiveButton("Continue", new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
                sslErrorHandler.proceed();
            }
        });
        builder.setNegativeButton("Go Back", new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
                sslErrorHandler.cancel();
            }
        });
        if (Build.VERSION.SDK_INT >= 14) {
            builder.setNeutralButton("Open Browser", new DialogInterface.OnClickListener() { // from class: com.inmobi.re.container.IMWebView.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                    IMWebView.this.c(WrapperFunctions.getSSLErrorUrl(sslError));
                }
            });
        }
        builder.setTitle("Security Warning");
        builder.setMessage("There are problems with the security certificate for this site.");
        try {
            builder.create().show();
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Dialog could not be shown due to an exception.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, View.OnTouchListener onTouchListener) {
        view.setOnTouchListener(onTouchListener);
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                a(viewGroup.getChildAt(i), onTouchListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, View.OnKeyListener onKeyListener) {
        view.setOnKeyListener(onKeyListener);
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                a(viewGroup.getChildAt(i), onKeyListener);
            }
        }
    }

    public void addJavascriptObject(Object obj, String str) {
        addJavascriptInterface(obj, str);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        this.f = false;
        if (this.k != ViewState.EXPANDED) {
            c();
            super.loadUrl(str);
        }
    }

    @Override // android.webkit.WebView
    public void loadData(String str, String str2, String str3) {
        this.f = false;
        super.loadData(str, str2, str3);
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f = false;
        if (this.k != ViewState.EXPANDED) {
            c();
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    private void c() {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> initStates");
        this.k = ViewState.LOADING;
        this.C.set(false);
    }

    public void hide() {
        this.A.sendEmptyMessage(1002);
    }

    public void show() {
        this.A.sendEmptyMessage(1003);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != 0 && i2 != 0) {
            if (!this.F) {
                a((int) (i / getDensity()), (int) (i2 / getDensity()));
            }
            this.F = false;
        }
    }

    private void a(int i, int i2) {
        injectJavaScript("window.mraid.broadcastEvent('sizeChange'," + i + "," + i2 + ");");
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        onIMWebviewVisibilityChanged(i == 0);
        if (i != 0) {
            try {
                if (this.g.supports("vibrate")) {
                    ((Vibrator) this.y.getSystemService("vibrator")).cancel();
                }
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "Failed to cancel existing vibration", e);
            }
        }
    }

    protected void onIMWebviewVisibilityChanged(boolean z) {
        if (this.mIsViewable != z) {
            this.mIsViewable = z;
            if (!this.doNotFireVisibilityChanged.get()) {
                a(z);
            }
        }
    }

    public boolean isBusy() {
        return this.s;
    }

    public void setBusy(boolean z) {
        this.s = z;
    }

    public void resetLayout() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.v) {
            layoutParams.height = this.i;
            layoutParams.width = this.j;
        }
        setVisibility(0);
        requestLayout();
    }

    public boolean isPageFinished() {
        return this.e;
    }

    public String getSize() {
        return "{ width: " + ((int) (getWidth() / this.h)) + ", height: " + ((int) (getHeight() / this.h)) + "}";
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onAttachedToWindow");
        saveOriginalViewParent();
        if (!this.v) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            this.i = layoutParams.height;
            this.j = layoutParams.width;
            this.v = true;
        }
        this.g.registerBroadcastListener();
        super.onAttachedToWindow();
    }

    public ViewState getStateVariable() {
        return this.k;
    }

    public void setState(ViewState viewState) {
        Log.debug(Constants.RENDERING_LOG_TAG, "State changing from " + this.k + " to " + viewState);
        this.k = viewState;
        if (viewState != ViewState.EXPANDING && viewState != ViewState.RESIZING) {
            injectJavaScript("window.mraid.broadcastEvent('stateChange','" + getState() + "');");
        }
    }

    public float getDensity() {
        return this.h;
    }

    public void deinit() {
        if (getStateVariable() == ViewState.EXPANDED || getStateVariable() == ViewState.EXPANDING) {
            close();
        }
    }

    protected void closeOpened(View view) {
        ((ViewGroup) ((Activity) getContext()).getWindow().getDecorView()).removeView(view);
        requestLayout();
    }

    public boolean isExpanded() {
        return this.k == ViewState.EXPANDED;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onDetatchedFromWindow");
        this.g.stopAllListeners();
        this.B.clear();
        this.g.unRegisterBroadcastListener();
        if (this.mIsInterstitialAd && !this.mWebViewIsBrowserActivity) {
            this.mInterstitialController.handleInterstitialClose();
        }
        super.onDetachedFromWindow();
    }

    public int getDismissMessage() {
        return Place.TYPE_SUBPREMISE;
    }

    public Handler getWebviewHandler() {
        return this.A;
    }

    public void fireOnLeaveApplication() {
        if (this.mListener != null) {
            this.mListener.onLeaveApplication();
        }
    }

    public void fireOnShowAdScreen() {
        if (this.mListener != null && getStateVariable() == ViewState.DEFAULT && !this.mIsInterstitialAd) {
            IMBrowserActivity.requestOnAdDismiss(this.A.obtainMessage(Place.TYPE_SUBPREMISE));
            this.mListener.onShowAdScreen();
        }
    }

    public void fireOnDismissAdScreen() {
        if (this.mListener != null) {
            this.mListener.onDismissAdScreen();
        }
    }

    public void pageFinishedCallbackForAdCreativeTesting(Message message) {
        this.x = message;
    }

    public void requestOnInterstitialShown(Message message) {
        this.mInterstitialController.mMsgOnInterstitialShown = message;
    }

    public void requestOnInterstitialClosed(Message message) {
        this.mInterstitialController.mMsgOnInterstitialClosed = message;
    }

    public String getState() {
        return this.k.toString().toLowerCase(Locale.ENGLISH);
    }

    public ViewState getViewState() {
        return this.k;
    }

    public void openURL(String str) {
        if (!isViewable()) {
            raiseError("Cannot open URL.Ad is not viewable yet", "openURL");
            return;
        }
        Message obtainMessage = this.A.obtainMessage(1024);
        Bundle bundle = new Bundle();
        bundle.putString(EXPAND_URL, str);
        obtainMessage.setData(bundle);
        this.A.sendMessage(obtainMessage);
    }

    public void openExternal(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        try {
            getContext().startActivity(intent);
            if (this.mListener != null) {
                this.mListener.onLeaveApplication();
            }
        } catch (Exception e) {
            raiseError("Request must specify a valid URL", "openExternal");
        }
    }

    public void onOrientationEventChange() {
        this.A.sendEmptyMessage(Place.TYPE_SUBLOCALITY_LEVEL_5);
    }

    public void setCustomClose(boolean z) {
        this.t = z;
        this.A.sendMessage(this.A.obtainMessage(Place.TYPE_LOCALITY));
    }

    public boolean getCustomClose() {
        return this.t;
    }

    public void close() {
        try {
            this.g.setWebViewClosed(true);
            if (!this.A.hasMessages(1001)) {
                this.A.sendEmptyMessage(1001);
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception closing webview. Webview not initialized properly", e);
        }
    }

    public void closeExpanded() {
        this.A.sendEmptyMessage(Place.TYPE_COUNTRY);
    }

    public void closeResized() {
        this.A.sendEmptyMessage(AdProperties.REQUIRES_TRANSPARENCY);
    }

    public boolean isViewable() {
        return this.mIsViewable;
    }

    private void a(boolean z) {
        Log.debug(Constants.RENDERING_LOG_TAG, "Viewable:" + z);
        injectJavaScript("window.mraid.broadcastEvent('viewableChange'," + isViewable() + ");");
    }

    public String getPlacementType() {
        return this.mIsInterstitialAd ? "interstitial" : "inline";
    }

    public String getCurrentRotation(int i) {
        switch (i) {
            case 0:
                return AppEventsConstants.EVENT_PARAM_VALUE_NO;
            case 1:
                return "90";
            case 2:
                return "180";
            case 3:
                return "270";
            default:
                return "-1";
        }
    }

    public void setExpandPropertiesForInterstitial(boolean z, boolean z2, String str) {
        setCustomClose(z);
        this.mInterstitialController.orientationValueForInterstitial = str;
        this.mInterstitialController.lockOrientationValueForInterstitial = z2;
        if (this.mWebViewIsBrowserActivity) {
            this.mExpandController.handleOrientationFor2Piece();
        }
        if (isViewable() && this.mIsInterstitialAd) {
            this.A.sendEmptyMessage(Place.TYPE_SUBLOCALITY_LEVEL_4);
        }
    }

    public void setOrientationPropertiesForInterstitial(boolean z, String str) {
        this.mInterstitialController.orientationValueForInterstitial = str;
        this.mInterstitialController.lockOrientationValueForInterstitial = z;
        if (this.mWebViewIsBrowserActivity) {
            this.mExpandController.handleOrientationFor2Piece();
        }
        if (isViewable() && this.mIsInterstitialAd) {
            this.A.sendEmptyMessage(Place.TYPE_SUBLOCALITY_LEVEL_4);
        }
    }

    public void expand(String str, JSController.ExpandProperties expandProperties) {
        setState(ViewState.EXPANDING);
        this.mExpandController.mIsExpandUrlValid = false;
        this.isMutexAquired.set(true);
        Message obtainMessage = this.A.obtainMessage(1004);
        Bundle bundle = new Bundle();
        bundle.putString(EXPAND_URL, str);
        obtainMessage.setData(bundle);
        this.mExpandController.expandProperties = expandProperties;
        Log.debug(Constants.RENDERING_LOG_TAG, "Dimensions: {" + this.mExpandController.expandProperties.x + " ," + this.mExpandController.expandProperties.y + " ," + this.mExpandController.expandProperties.width + " ," + this.mExpandController.expandProperties.height + "}");
        this.mExpandController.tempExpPropsLock = this.mExpandController.expandProperties.lockOrientation;
        this.A.sendMessage(obtainMessage);
    }

    public void resize(JSController.ResizeProperties resizeProperties) {
        setState(ViewState.RESIZING);
        this.isMutexAquired.set(true);
        Message obtainMessage = this.A.obtainMessage(1030);
        this.mResizeController.resizeProperties = resizeProperties;
        this.A.sendMessage(obtainMessage);
    }

    public void lockExpandOrientation(Activity activity, boolean z, String str) {
        int requestedOrientation;
        try {
            if (isConfigChangesListed(activity) && (requestedOrientation = activity.getRequestedOrientation()) != 0 && requestedOrientation != 1 && (Build.VERSION.SDK_INT < 9 || (requestedOrientation != 8 && requestedOrientation != 9 && requestedOrientation != 6 && requestedOrientation != 7))) {
                if (!z) {
                    int integerCurrentRotation = getIntegerCurrentRotation();
                    this.mExpandController.initialExpandOrientation = activity.getRequestedOrientation();
                    if (str.equalsIgnoreCase("portrait")) {
                        this.mExpandController.useLockOrient = true;
                        activity.setRequestedOrientation(WrapperFunctions.getParamPortraitOrientation(integerCurrentRotation));
                    } else if (str.equalsIgnoreCase("landscape")) {
                        this.mExpandController.useLockOrient = true;
                        activity.setRequestedOrientation(WrapperFunctions.getParamLandscapeOrientation(integerCurrentRotation));
                    } else {
                        this.mExpandController.useLockOrient = true;
                        if (activity.getResources().getConfiguration().orientation == 2) {
                            Log.internal(Constants.RENDERING_LOG_TAG, "In allowFalse, none mode dev orientation:ORIENTATION_LANDSCAPE");
                            activity.setRequestedOrientation(0);
                        } else {
                            Log.internal(Constants.RENDERING_LOG_TAG, "In allowFalse, none mode dev orientation:ORIENTATION_PORTRAIT");
                            activity.setRequestedOrientation(1);
                        }
                    }
                } else if (activity.getResources().getConfiguration().orientation == 2) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
                } else {
                    Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_PORTRAIT");
                }
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception handling the orientation ", e);
        }
    }

    public void sendToCPHandler() {
        this.A.sendEmptyMessage(Place.TYPE_SYNTHETIC_GEOCODE);
    }

    public void sendToDPHandler() {
        this.A.sendEmptyMessage(1032);
    }

    public int getIntegerCurrentRotation() {
        int displayRotation = DeviceInfo.getDisplayRotation(((WindowManager) this.y.getSystemService("window")).getDefaultDisplay());
        if (DeviceInfo.isDefOrientationLandscape(displayRotation, this.y.getResources().getDisplayMetrics().widthPixels, this.y.getResources().getDisplayMetrics().heightPixels)) {
            displayRotation++;
            if (displayRotation > 3) {
                displayRotation = 0;
            }
            if (DeviceInfo.isTablet(this.y.getApplicationContext())) {
                this.isTablet = true;
            }
        }
        return displayRotation;
    }

    public void playAudio(String str, boolean z, boolean z2, boolean z3, String str2, String str3, String str4) {
        synchronized (this.mutex) {
            if (this.isMutexAquired.get()) {
                try {
                    this.mutex.wait();
                } catch (InterruptedException e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "mutex failed ", e);
                }
            }
        }
        if (!this.mIsInterstitialAd && this.k != ViewState.EXPANDED) {
            raiseError("Cannot play audio.Ad is not in an expanded state", "playAudio");
        } else if (!isViewable()) {
            raiseError("Cannot play audio.Ad is not viewable yet", "playAudio");
        } else {
            JSController.PlayerProperties playerProperties = new JSController.PlayerProperties();
            playerProperties.setProperties(false, z, z2, z3, str2, str3, str4);
            Bundle bundle = new Bundle();
            bundle.putString(EXPAND_URL, str);
            bundle.putParcelable(PLAYER_PROPERTIES, playerProperties);
            Message obtainMessage = this.A.obtainMessage(1007);
            obtainMessage.setData(bundle);
            this.A.sendMessage(obtainMessage);
        }
    }

    public void pauseAudio(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "pauseAudio");
        } else if (currentAudioPlayer.getState() != AVPlayer.playerState.PLAYING) {
            if (currentAudioPlayer.getState() == AVPlayer.playerState.INIT && !currentAudioPlayer.isPrepared()) {
                currentAudioPlayer.setAutoPlay(false);
            } else {
                raiseError("Invalid player state", "pauseAudio");
            }
        } else if (currentAudioPlayer.isPlaying()) {
            Message obtainMessage = this.A.obtainMessage(Place.TYPE_NATURAL_FEATURE);
            Bundle bundle = new Bundle();
            bundle.putString("aplayerref", str);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }

    public void muteAudio(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "muteAudio");
        } else if (currentAudioPlayer.getState() == AVPlayer.playerState.RELEASED) {
            raiseError("Invalid player state", "muteAudio");
        } else {
            Message obtainMessage = this.A.obtainMessage(Place.TYPE_ROOM);
            Bundle bundle = new Bundle();
            bundle.putString("aplayerref", str);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }

    public void unMuteAudio(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "unmuteAudio");
        } else if (currentAudioPlayer.getState() == AVPlayer.playerState.RELEASED) {
            raiseError("Invalid player state", "unmuteAudio");
        } else {
            Message obtainMessage = this.A.obtainMessage(Place.TYPE_ROUTE);
            Bundle bundle = new Bundle();
            bundle.putString("aplayerref", str);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }

    public boolean isAudioMuted(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "isAudioMuted");
            return false;
        }
        return currentAudioPlayer.isMediaMuted();
    }

    public void setAudioVolume(String str, int i) {
        if (this.mAudioVideoController.getCurrentAudioPlayer(str) == null) {
            raiseError("Invalid property ID", "setAudioVolume");
            return;
        }
        Message obtainMessage = this.A.obtainMessage(Place.TYPE_STREET_ADDRESS);
        Bundle bundle = new Bundle();
        bundle.putInt("vol", i);
        bundle.putString("aplayerref", str);
        obtainMessage.setData(bundle);
        obtainMessage.sendToTarget();
    }

    public int getAudioVolume(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "getAudioVolume");
            return -1;
        }
        return currentAudioPlayer.getVolume();
    }

    public void seekAudio(String str, int i) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "seekAudio");
        } else if (currentAudioPlayer.getState() == AVPlayer.playerState.RELEASED) {
            raiseError("Invalid player state", "seekAudio");
        } else {
            Message obtainMessage = this.A.obtainMessage(Place.TYPE_SUBLOCALITY);
            Bundle bundle = new Bundle();
            bundle.putInt("seekaudio", i);
            obtainMessage.setData(bundle);
            obtainMessage.obj = currentAudioPlayer;
            obtainMessage.sendToTarget();
        }
    }

    public void playVideo(String str, boolean z, boolean z2, boolean z3, boolean z4, JSController.Dimensions dimensions, String str2, String str3, String str4) {
        synchronized (this.mutex) {
            if (this.isMutexAquired.get()) {
                try {
                    this.mutex.wait();
                } catch (InterruptedException e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "mutex failed ", e);
                }
            }
        }
        if (!this.mIsInterstitialAd && this.k != ViewState.EXPANDED) {
            raiseError("Cannot play video.Ad is not in an expanded state", JSInterface.ACTION_PLAY_VIDEO);
        } else if (!isViewable()) {
            raiseError("Cannot play video.Ad is not viewable yet", JSInterface.ACTION_PLAY_VIDEO);
        } else if (!this.mAudioVideoController.videoPlayerList.isEmpty() && this.mAudioVideoController.videoPlayerList.size() >= 5 && !this.mAudioVideoController.videoPlayerList.containsKey(str4)) {
            raiseError("Player Error. Exceeding permissible limit for saved play instances", JSInterface.ACTION_PLAY_VIDEO);
        } else {
            Message obtainMessage = this.A.obtainMessage(Place.TYPE_FLOOR);
            JSController.PlayerProperties playerProperties = new JSController.PlayerProperties();
            playerProperties.setProperties(z, z2, z3, z4, str2, str3, str4);
            Bundle bundle = new Bundle();
            bundle.putString(EXPAND_URL, str);
            bundle.putParcelable(PLAYER_PROPERTIES, playerProperties);
            Log.debug(Constants.RENDERING_LOG_TAG, "Before validation dimension: (" + dimensions.x + ", " + dimensions.y + ", " + dimensions.width + ", " + dimensions.height + ")");
            this.mAudioVideoController.validateVideoDimensions(dimensions);
            Log.debug(Constants.RENDERING_LOG_TAG, "After validation dimension: (" + dimensions.x + ", " + dimensions.y + ", " + dimensions.width + ", " + dimensions.height + ")");
            bundle.putParcelable(DIMENSIONS, dimensions);
            obtainMessage.setData(bundle);
            this.A.sendMessage(obtainMessage);
        }
    }

    public void pauseVideo(String str) {
        Message obtainMessage = this.A.obtainMessage(Place.TYPE_NEIGHBORHOOD);
        Bundle bundle = new Bundle();
        bundle.putString("pid", str);
        obtainMessage.setData(bundle);
        this.A.sendMessage(obtainMessage);
    }

    public void closeVideo(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "closeVideo");
        } else if (videoPlayer.getState() == AVPlayer.playerState.RELEASED) {
            raiseError("Invalid player state", "closeVideo");
        } else {
            this.mAudioVideoController.videoPlayerList.remove(str);
            Message obtainMessage = this.A.obtainMessage(Place.TYPE_POLITICAL);
            obtainMessage.obj = videoPlayer;
            this.A.sendMessage(obtainMessage);
        }
    }

    public void hideVideo(String str) {
        Message obtainMessage = this.A.obtainMessage(Place.TYPE_POINT_OF_INTEREST);
        Bundle bundle = new Bundle();
        bundle.putString("pid", str);
        obtainMessage.setData(bundle);
        this.A.sendMessage(obtainMessage);
    }

    public void showVideo(String str) {
        Message obtainMessage = this.A.obtainMessage(1014);
        Bundle bundle = new Bundle();
        bundle.putString("pid", str);
        obtainMessage.setData(bundle);
        this.A.sendMessage(obtainMessage);
    }

    public void muteVideo(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "muteVideo");
        } else if (videoPlayer.getState() == AVPlayer.playerState.RELEASED || videoPlayer.getState() == AVPlayer.playerState.INIT) {
            raiseError("Invalid player state", "muteVideo");
        } else {
            Message obtainMessage = this.A.obtainMessage(Place.TYPE_POSTAL_CODE);
            obtainMessage.obj = videoPlayer;
            this.A.sendMessage(obtainMessage);
        }
    }

    public void unMuteVideo(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "unMuteVideo");
        } else if (videoPlayer.getState() == AVPlayer.playerState.RELEASED || videoPlayer.getState() == AVPlayer.playerState.INIT) {
            raiseError("Invalid player state", "unMuteVideo");
        } else {
            Message obtainMessage = this.A.obtainMessage(1016);
            obtainMessage.obj = videoPlayer;
            this.A.sendMessage(obtainMessage);
        }
    }

    public void seekVideo(String str, int i) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "seekVideo");
        } else if (videoPlayer.getState() == AVPlayer.playerState.RELEASED || videoPlayer.getState() == AVPlayer.playerState.INIT) {
            raiseError("Invalid player state", "seekVideo");
        } else {
            Message obtainMessage = this.A.obtainMessage(Place.TYPE_PREMISE);
            Bundle bundle = new Bundle();
            bundle.putInt("seek", i);
            obtainMessage.setData(bundle);
            obtainMessage.obj = videoPlayer;
            this.A.sendMessage(obtainMessage);
        }
    }

    public boolean isVideoMuted(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "isVideoMuted");
            return false;
        }
        return videoPlayer.isMediaMuted();
    }

    public void setVideoVolume(String str, int i) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "setVideoVolume");
        } else if (videoPlayer.getState() == AVPlayer.playerState.RELEASED) {
            raiseError("Invalid player state", "setVideoVolume");
        } else {
            Message obtainMessage = this.A.obtainMessage(1017);
            Bundle bundle = new Bundle();
            bundle.putInt("volume", i);
            obtainMessage.setData(bundle);
            obtainMessage.obj = videoPlayer;
            this.A.sendMessage(obtainMessage);
        }
    }

    public int getVideoVolume(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "getVideoVolume");
            return -1;
        }
        return videoPlayer.getVolume();
    }

    public void postInjectJavaScript(String str) {
        if (str != null) {
            Message obtainMessage = this.A.obtainMessage(Place.TYPE_SUBLOCALITY_LEVEL_3);
            Bundle bundle = new Bundle();
            bundle.putString("injectMessage", str);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }

    public void injectJavaScript(String str) {
        if (str != null) {
            try {
                String str2 = "javascript:try{" + str + "}catch(e){}";
                if (str2.length() < 400) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "Injecting JavaScript: " + str2);
                }
                if (!e()) {
                    if (Build.VERSION.SDK_INT < 19) {
                        a(str2);
                    } else {
                        b(str2);
                    }
                }
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "Error injecting javascript ", e);
            }
        }
    }

    private void a(String str) {
        super.loadUrl(str);
    }

    @TargetApi(19)
    private void b(String str) {
        evaluateJavascript(str, null);
    }

    public void broadcastEventIMraid(final String str, final Object obj) {
        try {
            this.y.runOnUiThread(new Runnable() { // from class: com.inmobi.re.container.IMWebView.12
                @Override // java.lang.Runnable
                public void run() {
                    if (obj != null) {
                        IMWebView.this.injectJavaScript("window.imraid.broadcastEvent('" + str + "'," + obj + ");");
                    } else {
                        IMWebView.this.injectJavaScript("window.imraid.broadcastEvent('" + str + "');");
                    }
                }
            });
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception broadcasting events", e);
        }
    }

    public void broadcastEventIMraid(final String str, final String str2) {
        try {
            this.y.runOnUiThread(new Runnable() { // from class: com.inmobi.re.container.IMWebView.13
                @Override // java.lang.Runnable
                public void run() {
                    if (str2 != null) {
                        IMWebView.this.injectJavaScript("window.imraid.broadcastEvent('" + str + "','" + str2 + "');");
                    } else {
                        IMWebView.this.injectJavaScript("window.imraid.broadcastEvent('" + str + "');");
                    }
                }
            });
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception broadcasting events", e);
        }
    }

    public boolean isConfigChangesListed(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        int a2 = a(activity);
        return ((a2 & 16) != 0 && (a2 & 32) != 0 && (a2 & 128) != 0) && (i < 13 || ((a2 & 1024) != 0 && (a2 & Barcode.PDF417) != 0));
    }

    private int a(Activity activity) {
        ResolveInfo resolveInfo;
        Iterator<ResolveInfo> it = activity.getPackageManager().queryIntentActivities(new Intent(activity, activity.getClass()), 65536).iterator();
        while (true) {
            if (!it.hasNext()) {
                resolveInfo = null;
                break;
            }
            resolveInfo = it.next();
            if (resolveInfo.activityInfo.name.contentEquals(activity.getClass().getName())) {
                break;
            }
        }
        return resolveInfo.activityInfo.configChanges;
    }

    public void raiseError(String str, String str2) {
        Message obtainMessage = this.A.obtainMessage(1008);
        Bundle bundle = new Bundle();
        bundle.putString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, str);
        bundle.putString(NativeProtocol.WEB_DIALOG_ACTION, str2);
        obtainMessage.setData(bundle);
        this.A.sendMessage(obtainMessage);
    }

    public void setActivity(Activity activity) {
        this.y = activity;
    }

    public Activity getActivity() {
        return this.y;
    }

    public ArrayList<String> getMRAIDUrls() {
        return this.B;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<IMWebView> f3941a;
        private final WeakReference<MRAIDExpandController> b;
        private final WeakReference<MRAIDResizeController> c;
        private final WeakReference<MRAIDBasic> d;
        private final WeakReference<MRAIDInterstitialController> e;
        private final WeakReference<MRAIDAudioVideoController> f;

        public c(IMWebView iMWebView, MRAIDBasic mRAIDBasic, MRAIDExpandController mRAIDExpandController, MRAIDInterstitialController mRAIDInterstitialController, MRAIDAudioVideoController mRAIDAudioVideoController, MRAIDResizeController mRAIDResizeController) {
            this.f3941a = new WeakReference<>(iMWebView);
            this.b = new WeakReference<>(mRAIDExpandController);
            this.d = new WeakReference<>(mRAIDBasic);
            this.e = new WeakReference<>(mRAIDInterstitialController);
            this.f = new WeakReference<>(mRAIDAudioVideoController);
            this.c = new WeakReference<>(mRAIDResizeController);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            String str2;
            String str3;
            try {
                IMWebView iMWebView = this.f3941a.get();
                MRAIDBasic mRAIDBasic = this.d.get();
                MRAIDExpandController mRAIDExpandController = this.b.get();
                MRAIDResizeController mRAIDResizeController = this.c.get();
                MRAIDInterstitialController mRAIDInterstitialController = this.e.get();
                MRAIDAudioVideoController mRAIDAudioVideoController = this.f.get();
                if (iMWebView != null) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView->handleMessage: msg: " + message);
                    Bundle data = message.getData();
                    switch (message.what) {
                        case 1001:
                            switch (iMWebView.k) {
                                case RESIZING:
                                case RESIZED:
                                    mRAIDResizeController.closeResized();
                                    break;
                                case EXPANDING:
                                case EXPANDED:
                                    mRAIDExpandController.closeExpanded();
                                    mRAIDExpandController.mIsExpandUrlValid = false;
                                    break;
                                case HIDDEN:
                                    break;
                                default:
                                    if (iMWebView.mIsInterstitialAd) {
                                        mRAIDInterstitialController.resetContentsForInterstitials();
                                        break;
                                    } else {
                                        iMWebView.hide();
                                        break;
                                    }
                            }
                        case 1002:
                            iMWebView.setVisibility(4);
                            iMWebView.setState(ViewState.HIDDEN);
                            break;
                        case 1003:
                            iMWebView.injectJavaScript("window.mraidview.fireChangeEvent({ state: 'default' });");
                            iMWebView.setVisibility(0);
                            break;
                        case 1004:
                            if (iMWebView.k == ViewState.EXPANDING) {
                                mRAIDExpandController.doExpand(data);
                            }
                            iMWebView.g.setWebViewClosed(false);
                            break;
                        case Place.TYPE_COUNTRY /* 1005 */:
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onExpandClose();
                                break;
                            }
                            break;
                        case Place.TYPE_FLOOR /* 1006 */:
                            try {
                                mRAIDAudioVideoController.playVideoImpl(data, iMWebView.y);
                                break;
                            } catch (Exception e) {
                                Log.debug(Constants.RENDERING_LOG_TAG, "Play video failed ", e);
                                break;
                            }
                        case 1007:
                            try {
                                mRAIDAudioVideoController.playAudioImpl(data, iMWebView.y);
                                break;
                            } catch (Exception e2) {
                                Log.debug(Constants.RENDERING_LOG_TAG, "Play audio failed ", e2);
                                break;
                            }
                        case 1008:
                            iMWebView.injectJavaScript("window.mraid.broadcastEvent('error',\"" + data.getString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE) + "\", \"" + data.getString(NativeProtocol.WEB_DIALOG_ACTION) + "\")");
                            break;
                        case Place.TYPE_LOCALITY /* 1009 */:
                            iMWebView.setCloseButton();
                            break;
                        case Place.TYPE_NATURAL_FEATURE /* 1010 */:
                            AVPlayer aVPlayer = mRAIDAudioVideoController.audioPlayerList.get(data.getString("aplayerref"));
                            if (aVPlayer != null) {
                                aVPlayer.pause();
                                break;
                            }
                            break;
                        case Place.TYPE_NEIGHBORHOOD /* 1011 */:
                            AVPlayer videoPlayer = mRAIDAudioVideoController.getVideoPlayer(data.getString("pid"));
                            if (videoPlayer == null) {
                                str3 = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"pauseVideo\")";
                            } else if (videoPlayer.getState() != AVPlayer.playerState.PLAYING) {
                                if (videoPlayer.getState() == AVPlayer.playerState.INIT) {
                                    if (!videoPlayer.isPrepared()) {
                                        videoPlayer.setAutoPlay(false);
                                        break;
                                    }
                                } else {
                                    str3 = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"pauseVideo\")";
                                }
                            } else {
                                videoPlayer.pause();
                                return;
                            }
                            iMWebView.injectJavaScript(str3);
                            break;
                        case Place.TYPE_POLITICAL /* 1012 */:
                            ((AVPlayer) message.obj).releasePlayer(false);
                            break;
                        case Place.TYPE_POINT_OF_INTEREST /* 1013 */:
                            String string = data.getString("pid");
                            AVPlayer videoPlayer2 = mRAIDAudioVideoController.getVideoPlayer(string);
                            if (videoPlayer2 == null) {
                                str2 = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"hideVideo\")";
                            } else if (videoPlayer2.getState() == AVPlayer.playerState.RELEASED) {
                                str2 = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"hideVideo\")";
                            } else {
                                mRAIDAudioVideoController.videoPlayerList.put(string, videoPlayer2);
                                videoPlayer2.hide();
                                return;
                            }
                            iMWebView.injectJavaScript(str2);
                            break;
                        case 1014:
                            String string2 = data.getString("pid");
                            AVPlayer videoPlayer3 = mRAIDAudioVideoController.getVideoPlayer(string2);
                            if (videoPlayer3 == null) {
                                str = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"showVideo\")";
                            } else if (videoPlayer3.getState() != AVPlayer.playerState.RELEASED && videoPlayer3.getState() != AVPlayer.playerState.HIDDEN) {
                                str = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"showVideo\")";
                            } else if (mRAIDAudioVideoController.videoPlayer != null && !mRAIDAudioVideoController.videoPlayer.getPropertyID().equalsIgnoreCase(string2)) {
                                str = "window.mraid.broadcastEvent('error',\"Show failed. There is already a video playing\", \"showVideo\")";
                            } else {
                                mRAIDAudioVideoController.videoPlayerList.remove(string2);
                                mRAIDAudioVideoController.videoPlayer = videoPlayer3;
                                videoPlayer3.show();
                                return;
                            }
                            iMWebView.injectJavaScript(str);
                            break;
                        case Place.TYPE_POSTAL_CODE /* 1015 */:
                            ((AVPlayer) message.obj).mute();
                            break;
                        case 1016:
                            ((AVPlayer) message.obj).unMute();
                            break;
                        case 1017:
                            ((AVPlayer) message.obj).setVolume(data.getInt("volume"));
                            break;
                        case Place.TYPE_PREMISE /* 1018 */:
                            ((AVPlayer) message.obj).seekPlayer(data.getInt("seek") * 1000);
                            break;
                        case Place.TYPE_ROOM /* 1019 */:
                            AVPlayer aVPlayer2 = mRAIDAudioVideoController.audioPlayerList.get(data.getString("aplayerref"));
                            if (aVPlayer2 != null) {
                                aVPlayer2.mute();
                                break;
                            }
                            break;
                        case Place.TYPE_ROUTE /* 1020 */:
                            AVPlayer aVPlayer3 = mRAIDAudioVideoController.audioPlayerList.get(data.getString("aplayerref"));
                            if (aVPlayer3 != null) {
                                aVPlayer3.unMute();
                                break;
                            }
                            break;
                        case Place.TYPE_STREET_ADDRESS /* 1021 */:
                            AVPlayer aVPlayer4 = mRAIDAudioVideoController.audioPlayerList.get(data.getString("aplayerref"));
                            if (aVPlayer4 != null) {
                                aVPlayer4.setVolume(data.getInt("vol"));
                                break;
                            }
                            break;
                        case Place.TYPE_SUBLOCALITY /* 1022 */:
                            ((AVPlayer) message.obj).seekPlayer(data.getInt("seekaudio") * 1000);
                            break;
                        case Place.TYPE_SUBLOCALITY_LEVEL_1 /* 1023 */:
                            mRAIDAudioVideoController.hidePlayers();
                            break;
                        case 1024:
                            mRAIDBasic.open(data.getString(IMWebView.EXPAND_URL));
                            break;
                        case Place.TYPE_SUBLOCALITY_LEVEL_3 /* 1025 */:
                            String string3 = data.getString("injectMessage");
                            if (string3 != null) {
                                iMWebView.injectJavaScript(string3);
                                break;
                            }
                            break;
                        case Place.TYPE_SUBLOCALITY_LEVEL_4 /* 1026 */:
                            mRAIDInterstitialController.handleOrientationForInterstitial();
                            break;
                        case Place.TYPE_SUBLOCALITY_LEVEL_5 /* 1027 */:
                            if (!iMWebView.mIsInterstitialAd) {
                                mRAIDResizeController.onOrientationChange();
                                break;
                            }
                            break;
                        case Place.TYPE_SUBPREMISE /* 1028 */:
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onDismissAdScreen();
                                break;
                            }
                            break;
                        case Place.TYPE_SYNTHETIC_GEOCODE /* 1029 */:
                            mRAIDBasic.getCurrentPosition();
                            break;
                        case 1030:
                            if (iMWebView.k == ViewState.RESIZING) {
                                mRAIDResizeController.doResize(data);
                                break;
                            }
                            break;
                        case AdProperties.REQUIRES_TRANSPARENCY /* 1031 */:
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onResizeClose();
                                break;
                            }
                            break;
                        case 1032:
                            mRAIDBasic.getDefaultPosition();
                            break;
                        case 1033:
                            HashMap hashMap = (HashMap) message.getData().getSerializable("map");
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onUserInteraction(hashMap);
                                break;
                            }
                            break;
                        case 1034:
                            HashMap hashMap2 = (HashMap) message.getData().getSerializable("incent_ad_map");
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onIncentCompleted(hashMap2);
                                break;
                            }
                            break;
                        case 1035:
                            iMWebView.disableCloseRegion();
                            break;
                    }
                }
                super.handleMessage(message);
            } catch (Exception e3) {
                Log.internal(Constants.RENDERING_LOG_TAG, "Webview Handle Message Exception ", e3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.n != null) {
            if (this.o != null) {
                this.o.onCustomViewHidden();
            }
            this.o = null;
            if (this.n != null && this.n.getParent() != null) {
                ((ViewGroup) this.n.getParent()).removeView(this.n);
            }
            this.n = null;
        }
    }

    public void setCloseButton() {
        try {
            CustomView customView = (CustomView) ((ViewGroup) getRootView()).findViewById(225);
            if (customView != null) {
                customView.setVisibility(getCustomClose() ? 8 : 0);
            }
        } catch (Exception e) {
        }
    }

    public void disableCloseRegion() {
        CustomView customView = (CustomView) ((ViewGroup) getRootView()).findViewById(IMBrowserActivity.CLOSE_REGION_VIEW_ID);
        if (customView != null) {
            customView.disableView(this.u);
        }
    }

    public boolean isPortraitSyncOrientation(int i) {
        return i == 0 || i == 2;
    }

    public boolean isLandscapeSyncOrientation(int i) {
        return i == 1 || i == 3;
    }

    public void setExternalWebViewClient(WebViewClient webViewClient) {
        this.z = webViewClient;
    }

    public void doHidePlayers() {
        this.A.sendEmptyMessage(Place.TYPE_SUBLOCALITY_LEVEL_1);
    }

    public void cancelLoad() {
        this.C.set(true);
    }

    public void sendasyncPing(String str) {
        this.g.asyncPing(str);
    }

    public void setOriginalParent(ViewParent viewParent) {
        this.D = viewParent;
    }

    public ViewParent getOriginalParent() {
        if (this.D == null) {
            saveOriginalViewParent();
        }
        return this.D;
    }

    public int getOriginalIndex() {
        return this.E;
    }

    public void raiseMicEvent(double d2) {
        this.f3912a = d2;
        final String str = "window.mraid.broadcastEvent('micIntensityChange'," + d2 + ")";
        if (this.y != null) {
            this.y.runOnUiThread(new Runnable() { // from class: com.inmobi.re.container.IMWebView.15
                @Override // java.lang.Runnable
                public void run() {
                    IMWebView.this.injectJavaScript(str);
                }
            });
        }
    }

    public void raiseCameraPictureCapturedEvent(String str, int i, int i2) {
        final String str2 = "window.mraidview.fireCameraPictureCatpturedEvent('" + str + "','" + i + "','" + i2 + "')";
        if (this.y != null) {
            this.y.runOnUiThread(new Runnable() { // from class: com.inmobi.re.container.IMWebView.2
                @Override // java.lang.Runnable
                public void run() {
                    IMWebView.this.injectJavaScript(str2);
                }
            });
        }
    }

    public void raiseVibrateCompleteEvent() {
        if (this.y != null) {
            this.y.runOnUiThread(new Runnable() { // from class: com.inmobi.re.container.IMWebView.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IMWebView.this.injectJavaScript("window.mraid.broadcastEvent('vibrateComplete')");
                    } catch (Exception e) {
                        Log.internal(Constants.RENDERING_LOG_TAG, "Exception giviing vibration complete callback", e);
                    }
                }
            });
        }
    }

    public void raiseGalleryImageSelectedEvent(String str, int i, int i2) {
        final String str2 = "window.mraidview.fireGalleryImageSelectedEvent('" + str + "','" + i + "','" + i2 + "')";
        if (this.y != null) {
            this.y.runOnUiThread(new Runnable() { // from class: com.inmobi.re.container.IMWebView.4
                @Override // java.lang.Runnable
                public void run() {
                    IMWebView.this.injectJavaScript(str2);
                }
            });
        }
    }

    public void resetMraid() {
        this.mExpandController.reset();
        this.mResizeController.reset();
        this.g.reset();
    }

    public boolean isModal() {
        return this.mIsInterstitialAd || this.k == ViewState.EXPANDED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        this.y.startActivity(intent);
        fireOnLeaveApplication();
    }

    public void mediaPlayerReleased(AVPlayer aVPlayer) {
        this.mAudioVideoController.mediaPlayerReleased(aVPlayer);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        requestFocus();
        return super.onTouchEvent(motionEvent);
    }

    public double getLastGoodKnownMicValue() {
        return this.f3912a;
    }

    public void postInHandler(Runnable runnable) {
        this.A.post(runnable);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView: Destroy called.");
        close();
        postInHandler(new Runnable() { // from class: com.inmobi.re.container.IMWebView.5
            @Override // java.lang.Runnable
            public void run() {
                IMWebView.this.b.set(true);
                IMWebView.this.removeAllViews();
                ViewGroup viewGroup = (ViewGroup) IMWebView.this.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(IMWebView.this);
                }
                if (Build.VERSION.SDK_INT >= 11) {
                    IMWebView.this.removeJavascriptInterface("utilityController");
                    IMWebView.this.removeJavascriptInterface("displayController");
                    IMWebView.this.removeJavascriptInterface(IMAIController.IMAI_BRIDGE);
                }
                IMWebView.this.a();
                IMWebView.super.destroy();
            }
        });
    }

    private boolean e() {
        return this.b.get();
    }

    public void disableHardwareAcceleration() {
        this.K = false;
        Log.internal(Constants.RENDERING_LOG_TAG, "disableHardwareAcceleration called.");
        if (Build.VERSION.SDK_INT >= 14) {
            WrapperFunctions.disableHardwareAccl(this);
            this.mExpandController.disableEnableHardwareAccelerationForExpandWithURLView();
        }
    }

    public boolean isEnabledHardwareAcceleration() {
        return this.K;
    }

    public void userInteraction(HashMap<String, String> hashMap) {
        Message obtainMessage = this.A.obtainMessage(1033);
        Bundle bundle = new Bundle();
        bundle.putSerializable("map", hashMap);
        obtainMessage.setData(bundle);
        obtainMessage.sendToTarget();
    }

    public void saveFile(final String str, String str2) {
        File file = new File(InternalSDKUtil.getSdkCacheDirectory(this.y), String.valueOf(hashCode()));
        if (!file.mkdirs() && !file.isDirectory()) {
            Log.debug(IMWebView.class.getSimpleName(), "Cannot create temp directory to save ");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("url", str2);
                jSONObject.put("reason", b.PERMISSION_ERROR.ordinal());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            final String replace = jSONObject.toString().replace("\"", "\\\"");
            this.y.runOnUiThread(new Runnable() { // from class: com.inmobi.re.container.IMWebView.6
                @Override // java.lang.Runnable
                public void run() {
                    IMWebView.this.injectJavaScript("sendSaveContentResult(\"saveContent_" + str + "\", 'failure', \"" + replace + "\");");
                    if (IMWebView.this.c != null) {
                        IMWebView.this.c.postFailed(b.PERMISSION_ERROR.ordinal());
                    }
                }
            });
            return;
        }
        new a(new File(file, UUID.randomUUID().toString()), str, str2).execute(new Void[0]);
    }

    void a() {
        try {
            if (this.r != null) {
                for (int i = 0; i < this.r.size(); i++) {
                    a aVar = this.r.get(i);
                    if (aVar.getStatus() == AsyncTask.Status.RUNNING) {
                        aVar.cancel(true);
                    }
                }
                this.r.clear();
                this.r = null;
            }
            InternalSDKUtil.clearSdkCacheDirectory(InternalSDKUtil.getSdkCacheDirectory(this.y), String.valueOf(hashCode()));
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception deleting saved content dirs and stopping download task");
        }
    }

    public void cancelSaveContent(String str) {
        if (this.r != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.r.size()) {
                    a aVar = this.r.get(i2);
                    if (!aVar.a().equals(str) || aVar.getStatus() != AsyncTask.Status.RUNNING) {
                        i = i2 + 1;
                    } else {
                        aVar.cancel(true);
                        return;
                    }
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends AsyncTask<Void, Void, String> {

        /* renamed from: a  reason: collision with root package name */
        File f3939a;
        String b;
        String c;
        int d = -1;
        String e = "";

        a(File file, String str, String str2) {
            this.f3939a = file;
            this.c = str;
            this.b = str2;
            if (IMWebView.this.r == null) {
                IMWebView.this.r = new ArrayList();
            }
            IMWebView.this.r.add(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public String doInBackground(Void... voidArr) {
            String replace;
            boolean z;
            PackageManager packageManager = IMWebView.this.y.getPackageManager();
            if (!(packageManager.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", packageManager.getNameForUid(Binder.getCallingUid())) == 0)) {
                this.d = b.PERMISSION_ERROR.ordinal();
                return "failure";
            } else if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                this.d = b.NETWORK_ERROR.ordinal();
                return "failure";
            } else if (!this.c.matches("[A-Za-z0-9]+") || this.c.equals("")) {
                this.d = b.CONETNT_ID_ERROR.ordinal();
                return "failure";
            } else if (this.b.equals("") || !URLUtil.isValidUrl(this.b)) {
                this.d = b.CONTENT_URL_ERROR.ordinal();
                return "failure";
            } else {
                String substring = Initializer.getConfigParams().getAllowedContentType().replace("\\", "").substring(1, replace.length() - 1);
                String[] split = substring.contains(",") ? substring.split(",") : new String[]{substring};
                int maxSaveContentSize = Initializer.getConfigParams().getMaxSaveContentSize();
                try {
                    long currentTimeMillis = System.currentTimeMillis();
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.b).openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setConnectTimeout(5000);
                    String contentType = httpURLConnection.getContentType();
                    android.util.Log.i(Constants.RENDERING_LOG_TAG, "contentType_url: " + contentType);
                    int i = 0;
                    while (true) {
                        if (i >= split.length) {
                            z = false;
                            break;
                        } else if (split[i].substring(1, split[i].length() - 1).equals(contentType)) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (!z) {
                        this.d = b.CONTENT_TYPE_NOT_SUPPORTED.ordinal();
                        return "failure";
                    }
                    long contentLength = httpURLConnection.getContentLength();
                    if (contentLength >= 0) {
                        android.util.Log.e(Constants.RENDERING_LOG_TAG, "content size: " + contentLength);
                        android.util.Log.e(Constants.RENDERING_LOG_TAG, "max size: " + (maxSaveContentSize * 1024 * 1024));
                        if (contentLength > maxSaveContentSize * 1024 * 1024) {
                            this.d = b.CONTENT_SIZE_NOT_SUPPORTED.ordinal();
                            return "failure";
                        }
                    }
                    httpURLConnection.connect();
                    FileOutputStream fileOutputStream = new FileOutputStream(this.f3939a);
                    InputStream inputStream = httpURLConnection.getInputStream();
                    byte[] bArr = new byte[1024];
                    long j = 0;
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read > 0) {
                            j += read;
                            if (j > maxSaveContentSize * 1024 * 1024) {
                                this.d = b.CONTENT_SIZE_NOT_SUPPORTED.ordinal();
                                return "failure";
                            }
                            fileOutputStream.write(bArr, 0, read);
                        } else {
                            fileOutputStream.close();
                            long currentTimeMillis2 = System.currentTimeMillis();
                            String str = "file://" + this.f3939a.getAbsolutePath();
                            Log.internal(Constants.RENDERING_LOG_TAG, "file path of video: " + str);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("url", this.b);
                            jSONObject.put("saved_url", str);
                            jSONObject.put("size_in_bytes", this.f3939a.length());
                            jSONObject.put("download_started_at", currentTimeMillis);
                            jSONObject.put("download_ended_at", currentTimeMillis2);
                            this.e = jSONObject.toString().replace("\"", "\\\"");
                            return GraphResponse.SUCCESS_KEY;
                        }
                    }
                } catch (FileNotFoundException e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "FileNotFoundException");
                    this.d = b.CONTENT_URL_NOT_FOUND.ordinal();
                    return "failure";
                } catch (MalformedURLException e2) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "MalformedURLException");
                    this.d = b.CONTENT_URL_ERROR.ordinal();
                    return "failure";
                } catch (ProtocolException e3) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "ProtocolException");
                    this.d = b.NETWORK_ERROR.ordinal();
                    return "failure";
                } catch (SocketTimeoutException e4) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "SocketTimeoutException");
                    this.d = b.NETWORK_ERROR.ordinal();
                    return "failure";
                } catch (IOException e5) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "IOException");
                    this.d = b.UNKNOWN_ERROR.ordinal();
                    return "failure";
                } catch (JSONException e6) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "JSONException");
                    this.d = b.UNKNOWN_ERROR.ordinal();
                    return "failure";
                } catch (Exception e7) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Unknown Exception");
                    this.d = b.UNKNOWN_ERROR.ordinal();
                    return "failure";
                }
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(String str) {
            if (str.equals(GraphResponse.SUCCESS_KEY)) {
                IMWebView.this.injectJavaScript("window.mraid.sendSaveContentResult(\"saveContent_" + this.c + "\", 'success', \"" + this.e + "\");");
                if (IMWebView.this.c != null) {
                    IMWebView.this.c.postSuccess();
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", this.b);
                    jSONObject.put("reason", this.d);
                    IMWebView.this.injectJavaScript("window.mraid.sendSaveContentResult(\"saveContent_" + this.c + "\", 'failure', \"" + jSONObject.toString().replace("\"", "\\\"") + "\");");
                    if (IMWebView.this.c != null) {
                        IMWebView.this.c.postFailed(this.d);
                    }
                } catch (JSONException e) {
                }
            }
            super.onPostExecute(str);
        }

        public String a() {
            return this.c;
        }
    }

    public void setCallBack(InstantVideoCallbackCallback instantVideoCallbackCallback) {
        this.c = instantVideoCallbackCallback;
    }

    public Activity getExpandedActivity() {
        return this.y;
    }

    public void incentCompleted(HashMap<Object, Object> hashMap) {
        Message obtainMessage = this.A.obtainMessage(1034);
        Bundle bundle = new Bundle();
        bundle.putSerializable("incent_ad_map", hashMap);
        obtainMessage.setData(bundle);
        obtainMessage.sendToTarget();
    }

    public void setDisableCloseRegion(boolean z) {
        this.u = z;
        this.A.sendMessage(this.A.obtainMessage(1035));
    }

    public boolean getDisableCloseRegion() {
        return this.u;
    }
}
