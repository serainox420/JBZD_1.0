package com.inmobi.monetization.internal;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.inmobi.commons.AnimationType;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.Response;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.internal.Ad;
import com.inmobi.monetization.internal.configs.Initializer;
import com.inmobi.monetization.internal.configs.NetworkEventType;
import com.inmobi.monetization.internal.imai.IMAIController;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import com.loopme.common.StaticParams;
import com.openx.view.mraid.JSInterface;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class BannerAd extends Ad {
    protected static final String KEY_MANUAL_REFRESH = "u-rt";
    protected static final String KEY_TYPE_OF_ADREQ = "requestactivity";
    protected static final String VALUE_OF_ADREQ = "AdRequest";
    AnimationType b;
    private Activity c;
    private IMWebView d;
    private IMWebView e;
    private boolean f;
    private boolean g;
    private int h;
    private long i;
    private boolean j;
    private int k;
    private d l;
    private Animation m;
    public IMWebView mCurrentWebView;
    private Animation n;
    private long o;
    private boolean p;
    private boolean q;
    private AtomicBoolean r;
    private Response s;
    private boolean t;
    private IMWebView.IMWebViewListener u;
    private a v;
    private Animation.AnimationListener w;

    public BannerAd(Activity activity, IMBanner iMBanner, String str, int i) {
        super(str);
        this.f = true;
        this.g = false;
        this.h = 15;
        this.i = 0L;
        this.b = AnimationType.ROTATE_HORIZONTAL_AXIS;
        this.j = true;
        this.k = Initializer.getConfigParams().getDefaultRefreshRate();
        this.o = 0L;
        this.p = false;
        this.q = true;
        this.r = new AtomicBoolean(false);
        this.s = null;
        this.t = false;
        this.u = new IMWebView.IMWebViewListener() { // from class: com.inmobi.monetization.internal.BannerAd.2
            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onExpandClose() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onDismissAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onExpand() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onShowAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onLeaveApplication() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onLeaveApplication();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onError() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onAdRequestFailed(AdErrorCode.INTERNAL_ERROR);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onShowAdScreen() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onShowAdScreen();
                }
                BannerAd.this.r.set(true);
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onDismissAdScreen() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onDismissAdScreen();
                }
                BannerAd.this.r.set(false);
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onResize(ResizeDimensions resizeDimensions) {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onShowAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onResizeClose() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onDismissAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onUserInteraction(Map<String, String> map) {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onAdInteraction(map);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onIncentCompleted(Map<Object, Object> map) {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onDisplayFailed() {
            }
        };
        this.v = new a(this);
        this.w = new Animation.AnimationListener() { // from class: com.inmobi.monetization.internal.BannerAd.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                BannerAd.this.h();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.h = i;
        this.c = activity;
        this.t = initialize();
    }

    public BannerAd(Activity activity, IMBanner iMBanner, long j, int i) {
        super(j);
        this.f = true;
        this.g = false;
        this.h = 15;
        this.i = 0L;
        this.b = AnimationType.ROTATE_HORIZONTAL_AXIS;
        this.j = true;
        this.k = Initializer.getConfigParams().getDefaultRefreshRate();
        this.o = 0L;
        this.p = false;
        this.q = true;
        this.r = new AtomicBoolean(false);
        this.s = null;
        this.t = false;
        this.u = new IMWebView.IMWebViewListener() { // from class: com.inmobi.monetization.internal.BannerAd.2
            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onExpandClose() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onDismissAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onExpand() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onShowAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onLeaveApplication() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onLeaveApplication();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onError() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onAdRequestFailed(AdErrorCode.INTERNAL_ERROR);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onShowAdScreen() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onShowAdScreen();
                }
                BannerAd.this.r.set(true);
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onDismissAdScreen() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onDismissAdScreen();
                }
                BannerAd.this.r.set(false);
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onResize(ResizeDimensions resizeDimensions) {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onShowAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onResizeClose() {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onDismissAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onUserInteraction(Map<String, String> map) {
                if (BannerAd.this.mAdListener != null) {
                    BannerAd.this.mAdListener.onAdInteraction(map);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onIncentCompleted(Map<Object, Object> map) {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onDisplayFailed() {
            }
        };
        this.v = new a(this);
        this.w = new Animation.AnimationListener() { // from class: com.inmobi.monetization.internal.BannerAd.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                BannerAd.this.h();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.h = i;
        this.o = j;
        this.c = activity;
        this.t = initialize();
    }

    @Override // com.inmobi.monetization.internal.Ad
    public void loadAd() {
        a(false);
    }

    public void refreshAd() {
        this.p = true;
        this.v.removeMessages(101);
        if (this.k > 0) {
            this.v.sendEmptyMessageDelayed(101, this.k * 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (!this.t) {
            this.t = initialize();
        }
        if (!this.t) {
            Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
            return;
        }
        this.g = false;
        this.p = z;
        if (!g()) {
            super.loadAd();
        } else if (this.mAdListener != null) {
            AdErrorCode adErrorCode = AdErrorCode.INVALID_REQUEST;
            adErrorCode.setMessage("Ad click is in progress.Cannot load new ad");
            Log.debug(Constants.LOG_TAG, "Ad click is in progress.Cannot load new ad");
            this.mAdListener.onAdRequestFailed(adErrorCode);
        }
        this.v.removeMessages(101);
        if (this.k > 0) {
            this.v.sendEmptyMessageDelayed(101, this.k * 1000);
        }
    }

    public void stopRefresh() {
        if (!this.t) {
            Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
        } else {
            this.v.removeMessages(101);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.inmobi.monetization.internal.Ad
    public boolean initialize() {
        if (this.h < 0) {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_INVALID_AD_SIZE);
            return false;
        } else if (this.c == null) {
            Log.debug(Constants.LOG_TAG, "Activity cannot be null");
            return false;
        } else {
            this.c = b.a(this.c);
            if (this.d == null) {
                this.d = new IMWebView(this.c, this.u, false, false);
                if (!this.q) {
                    this.d.disableHardwareAcceleration();
                }
                this.d.addJavascriptInterface(new IMAIController(this.d), IMAIController.IMAI_BRIDGE);
            }
            if (this.e == null) {
                this.e = new IMWebView(this.c, this.u, false, false);
                this.mCurrentWebView = this.e;
                if (!this.q) {
                    this.e.disableHardwareAcceleration();
                }
                this.e.addJavascriptInterface(new IMAIController(this.e), IMAIController.IMAI_BRIDGE);
            }
            this.l = new d(this, this.w);
            return super.initialize();
        }
    }

    public View getView() {
        return this.mCurrentWebView;
    }

    private ViewGroup d() {
        ViewGroup viewGroup = (ViewGroup) this.d.getParent();
        if (viewGroup == null) {
            return (ViewGroup) this.e.getParent();
        }
        return viewGroup;
    }

    @Override // com.inmobi.monetization.internal.Ad
    protected Map<String, String> getAdFormatParams() {
        HashMap hashMap = new HashMap();
        hashMap.put(StaticParams.FORMAT_TAG, Ad.AD_FORMAT.IMAI.toString().toLowerCase(Locale.getDefault()));
        hashMap.put("mk-ads", "1");
        hashMap.put(KEY_TYPE_OF_ADREQ, VALUE_OF_ADREQ);
        if (this.p) {
            hashMap.put(KEY_MANUAL_REFRESH, String.valueOf(1));
        } else {
            hashMap.put(KEY_MANUAL_REFRESH, String.valueOf(0));
        }
        if (this.o > 0) {
            hashMap.put("placement-size", b() + JSInterface.JSON_X + c());
        }
        hashMap.put("mk-ad-slot", String.valueOf(this.h));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        return this.f;
    }

    @Override // com.inmobi.monetization.internal.Ad
    public void handleResponse(c cVar, Response response) {
        if (response != null) {
            try {
                if (this.c != null) {
                    this.s = response;
                    this.c.runOnUiThread(new Runnable() { // from class: com.inmobi.monetization.internal.BannerAd.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BannerAd.this.i();
                        }
                    });
                }
            } catch (Exception e) {
                Log.debug(Constants.LOG_TAG, "Failed to render banner ad");
                if (this.mAdListener != null) {
                    this.mAdListener.onAdRequestFailed(AdErrorCode.INTERNAL_ERROR);
                }
            }
        }
    }

    public void disableHardwareAcceleration() {
        if (!this.t) {
            Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
            return;
        }
        this.q = false;
        if (this.mCurrentWebView != null) {
            this.mCurrentWebView.disableHardwareAcceleration();
        }
    }

    @Override // com.inmobi.monetization.internal.Ad
    public void stopLoading() {
        if (!this.t) {
            Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
            return;
        }
        super.stopLoading();
        if (this.v != null && this.v.hasMessages(102)) {
            this.v.removeMessages(102);
        }
        this.g = true;
    }

    private void f() {
        try {
            if (this.e != null) {
                this.e.setBackgroundColor(0);
            }
            if (this.d != null) {
                this.d.setBackgroundColor(0);
            }
        } catch (Exception e) {
            Log.debug(Constants.LOG_TAG, "Error setNormalBGColor", e);
        }
    }

    private void b(boolean z) {
        this.f = z;
        if (z) {
            this.d.deinit();
            this.d = null;
            return;
        }
        this.e.deinit();
        this.e = null;
    }

    private boolean g() {
        IMWebView iMWebView;
        if (e()) {
            iMWebView = this.e;
        } else {
            iMWebView = this.d;
        }
        String state = iMWebView.getState();
        Log.debug(Constants.LOG_TAG, "Current Ad State: " + state);
        if (IMWebView.ViewState.EXPANDED.toString().equalsIgnoreCase(state) || IMWebView.ViewState.RESIZED.toString().equalsIgnoreCase(state) || IMWebView.ViewState.RESIZING.toString().equalsIgnoreCase(state) || IMWebView.ViewState.EXPANDING.toString().equalsIgnoreCase(state)) {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_AD_STATE);
            return true;
        } else if (!iMWebView.isBusy()) {
            return this.r.get();
        } else {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_AD_BUSY);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        try {
            if (!this.g) {
                try {
                    ViewGroup d = d();
                    d.removeAllViews();
                    if (d != null) {
                        if (e()) {
                            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                            this.mCurrentWebView = this.d;
                            d.addView(this.d, layoutParams);
                        } else {
                            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                            this.mCurrentWebView = this.e;
                            d.addView(this.e, layoutParams2);
                        }
                        b(!e());
                        f();
                    }
                    if (this.mAdListener != null) {
                        this.mAdListener.onAdRequestSucceeded();
                    }
                    if (this.v != null) {
                        this.v.removeMessages(102);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    Log.debug(Constants.LOG_TAG, "Error swapping banner ads", e);
                    if (this.mAdListener != null) {
                        this.mAdListener.onAdRequestSucceeded();
                    }
                    if (this.v != null) {
                        this.v.removeMessages(102);
                    }
                }
            }
        } catch (Throwable th) {
            if (this.mAdListener != null) {
                this.mAdListener.onAdRequestSucceeded();
            }
            if (this.v != null) {
                this.v.removeMessages(102);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (!this.g && this.s != null) {
            String responseBody = this.s.getResponseBody();
            long currentTimeMillis = System.currentTimeMillis() - this.mFetchStartTime;
            if (responseBody != null) {
                String replace = responseBody.replace("@__imm_aft@", "" + currentTimeMillis);
                if (Build.VERSION.SDK_INT <= 8) {
                    replace.replaceAll("%", "%25");
                }
                if (e()) {
                    if (this.d == null) {
                        this.d = new IMWebView(this.c, this.u, false, false);
                        if (!this.q) {
                            this.d.disableHardwareAcceleration();
                        }
                    }
                    this.mCurrentWebView = this.d;
                } else {
                    if (this.e == null) {
                        this.e = new IMWebView(this.c, this.u, false, false);
                        if (!this.q) {
                            this.e.disableHardwareAcceleration();
                        }
                    }
                    this.mCurrentWebView = this.e;
                }
                this.mCurrentWebView.addJavascriptInterface(new IMAIController(this.mCurrentWebView), IMAIController.IMAI_BRIDGE);
                this.i = System.currentTimeMillis();
                this.v.sendEmptyMessageDelayed(102, Initializer.getConfigParams().getRenderTimeOut());
                this.mCurrentWebView.resetMraid();
                this.mCurrentWebView.loadDataWithBaseURL("", replace, "text/html", null, null);
                collectMetrics(this.s, System.currentTimeMillis() - this.mFetchStartTime, NetworkEventType.RENDER_COMPLETE);
                if (this.j) {
                    h();
                    this.j = false;
                    return;
                } else if (this.b == AnimationType.ANIMATION_OFF) {
                    h();
                    return;
                } else {
                    this.l.a(this.b);
                    return;
                }
            }
            Log.debug(Constants.LOG_TAG, "Cannot load Ad. Invalid Ad Response");
            if (this.mAdListener != null) {
                this.mAdListener.onAdRequestFailed(AdErrorCode.INTERNAL_ERROR);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<BannerAd> f3852a;

        public a(BannerAd bannerAd) {
            this.f3852a = new WeakReference<>(bannerAd);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            BannerAd bannerAd = this.f3852a.get();
            if (bannerAd != null) {
                try {
                    switch (message.what) {
                        case 101:
                            if (!bannerAd.c.hasWindowFocus()) {
                                Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_AD_FOCUS);
                                break;
                            } else if (!MRAIDInterstitialController.isInterstitialDisplayed.get()) {
                                bannerAd.a(true);
                                break;
                            } else {
                                Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_INTERSTITIAL_AD_DISPLAYED);
                                break;
                            }
                        case 102:
                            bannerAd.collectMetrics(bannerAd.s, System.currentTimeMillis() - bannerAd.i, NetworkEventType.RENDER_TIMEOUT);
                            if (bannerAd.e()) {
                                bannerAd.d = null;
                            } else {
                                bannerAd.e = null;
                            }
                            if (bannerAd.mCurrentWebView != null) {
                                bannerAd.mCurrentWebView.cancelLoad();
                                bannerAd.mCurrentWebView.stopLoading();
                                bannerAd.mCurrentWebView.deinit();
                                bannerAd.mCurrentWebView = null;
                            }
                            if (bannerAd.mAdListener != null) {
                                bannerAd.mAdListener.onAdRequestFailed(AdErrorCode.AD_RENDERING_TIMEOUT);
                                break;
                            }
                            break;
                    }
                } catch (Exception e) {
                    Log.internal(Constants.LOG_TAG, "Exception hanlde message adview", e);
                }
            }
            super.handleMessage(message);
        }
    }

    public void setRefreshInterval(int i) {
        if (!this.t) {
            Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
            return;
        }
        int minimumRefreshRate = Initializer.getConfigParams().getMinimumRefreshRate();
        this.v.removeMessages(101);
        if (i <= 0) {
            this.k = 0;
            return;
        }
        if (i < minimumRefreshRate) {
            Log.debug(Constants.LOG_TAG, "Refresh Interval cannot be less than " + minimumRefreshRate + " seconds. Setting refresh rate to " + minimumRefreshRate);
            this.k = minimumRefreshRate;
        } else {
            this.k = i;
        }
        if (this.k != 0) {
            this.v.sendEmptyMessageDelayed(101, this.k * 1000);
        }
    }

    public void setAnimation(AnimationType animationType) {
        this.b = animationType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Animation a() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Animation animation) {
        this.m = animation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Animation animation) {
        this.n = animation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        try {
            ViewGroup d = d();
            if (d != null) {
                return d.getWidth();
            }
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Exception getting width of banner view", e);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        try {
            ViewGroup d = d();
            if (d != null) {
                return d.getHeight();
            }
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Exception getting height of banner view", e);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(Animation animation) {
        try {
            ViewGroup d = d();
            if (d != null) {
                d.startAnimation(animation);
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.internal(Constants.LOG_TAG, "Exception animating  banner view", e);
        }
    }

    public void setAdSize(int i) {
        this.h = i;
    }
}
