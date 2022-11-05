package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewDatabase;
import android.widget.RelativeLayout;
import com.applovin.adview.AdViewController;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinInterstitialActivity;
import com.applovin.adview.ClickTrackingOverlayView;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.cb;
import com.applovin.impl.sdk.cd;
import com.applovin.impl.sdk.di;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class AdViewControllerImpl implements AdViewController {

    /* renamed from: a  reason: collision with root package name */
    private Activity f1533a;
    private AppLovinSdk b;
    private AppLovinAdService c;
    private AppLovinLogger d;
    private AppLovinAdSize e;
    private String f;
    private r g;
    private l h;
    private o i;
    private AppLovinAd j;
    private Runnable k;
    private Runnable l;
    private Runnable m;
    private volatile AppLovinAd n = null;
    private ClickTrackingOverlayView o = null;
    private WeakReference p = null;
    private final AtomicReference q = new AtomicReference();
    private volatile boolean r = false;
    private volatile boolean s = true;
    private volatile boolean t = false;
    private volatile boolean u = false;
    private volatile AppLovinAdLoadListener v;
    private volatile AppLovinAdDisplayListener w;
    private volatile AppLovinAdVideoPlaybackListener x;
    private volatile AppLovinAdClickListener y;
    private volatile boolean z;

    private void a(ViewGroup viewGroup, AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, Context context) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        if (!(context instanceof Activity)) {
            throw new IllegalArgumentException("Specified context is not an activity");
        }
        this.b = appLovinSdk;
        this.c = appLovinSdk.getAdService();
        this.d = appLovinSdk.getLogger();
        this.e = appLovinAdSize;
        this.f1533a = (Activity) context;
        this.j = di.a();
        this.g = new r(this, appLovinSdk);
        this.m = new f(this, null);
        this.k = new k(this, null);
        this.l = new i(this, null);
        this.h = new l(this, appLovinSdk);
        if (!a(context)) {
            this.d.userError("AppLovinAdView", "Web view database is corrupt, AdView not loaded");
            return;
        }
        this.i = b();
        viewGroup.setBackgroundColor(0);
        viewGroup.addView(this.i);
        b(this.i, appLovinAdSize);
        a(this.m);
        a(new j(this, null));
        this.r = true;
    }

    private void a(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, Uri uri) {
        if (this.o != null) {
            this.d.d("AppLovinAdView", "Skipping click overlay rendering because it already exists");
            return;
        }
        this.d.d("AppLovinAdView", "Creating and rendering click overlay");
        this.o = new ClickTrackingOverlayView(appLovinAdView.getContext(), this.b);
        this.o.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        appLovinAdView.addView(this.o);
        appLovinAdView.bringChildToFront(this.o);
        ((AppLovinAdServiceImpl) this.c).trackForegroundClick(appLovinAd, this.f, appLovinAdView, this, uri);
    }

    private void a(Runnable runnable) {
        this.f1533a.runOnUiThread(runnable);
    }

    private static boolean a(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 11) {
                return true;
            }
            WebViewDatabase webViewDatabase = WebViewDatabase.getInstance(context);
            Method declaredMethod = WebViewDatabase.class.getDeclaredMethod("getCacheTotalSize", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(webViewDatabase, new Object[0]);
            return true;
        } catch (IllegalAccessException e) {
            Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", e);
            return true;
        } catch (IllegalArgumentException e2) {
            Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", e2);
            return true;
        } catch (NoSuchMethodException e3) {
            Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", e3);
            return true;
        } catch (InvocationTargetException e4) {
            Log.e("AppLovinAdView", "getCacheTotalSize() reported exception", e4);
            return false;
        } catch (Throwable th) {
            Log.e("AppLovinAdView", "Unexpected error while checking DB state", th);
            return false;
        }
    }

    private o b() {
        o oVar = new o(this.g, this.b, this.f1533a);
        oVar.setBackgroundColor(0);
        oVar.setWillNotCacheDrawing(false);
        if (new cb(this.b).F() && Build.VERSION.SDK_INT >= 19) {
            oVar.setLayerType(2, null);
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, AppLovinAdSize appLovinAdSize) {
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        int applyDimension = appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel()) ? -1 : appLovinAdSize.getWidth() == -1 ? displayMetrics.widthPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
        int applyDimension2 = appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel()) ? -1 : appLovinAdSize.getHeight() == -1 ? displayMetrics.heightPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.width = applyDimension;
        layoutParams.height = applyDimension2;
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        }
        view.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.d.d("AppLovinAdView", "Ad: " + this.n + " with placement = \"" + this.f + "\" closed.");
        a(this.m);
        a(new h(this, this.n));
        this.n = null;
        this.f = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (!this.t) {
            this.c.addAdUpdateListener(this.h, this.e);
            a(this.m);
        }
        a(new b(this, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            this.d.e("AppLovinAdView", "No provided when to the view controller");
            a(-1);
            return;
        }
        this.u = true;
        if (!this.t) {
            this.c.addAdUpdateListener(this.h, this.e);
            renderAd(appLovinAd);
        } else {
            this.q.set(appLovinAd);
            this.d.d("AppLovinAdView", "Ad view has paused when an ad was recieved, ad saved for later");
        }
        a(new a(this, appLovinAd));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl, Uri uri) {
        AppLovinAdServiceImpl appLovinAdServiceImpl = (AppLovinAdServiceImpl) this.c;
        if (!new cb(this.b).H() || uri == null) {
            appLovinAdServiceImpl.trackClickOn(appLovinAd, this.f, appLovinAdView, this, uri);
        } else {
            a(appLovinAd, appLovinAdView, uri);
        }
        a(new g(this, appLovinAd));
    }

    @Override // com.applovin.adview.AdViewController
    public void destroy() {
        if (this.c != null) {
            this.c.removeAdUpdateListener(this.h, getSize());
        }
        if (this.i != null) {
            try {
                ViewParent parent = this.i.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.i);
                }
                this.i.removeAllViews();
                this.i.destroy();
                this.i = null;
            } catch (Throwable th) {
                this.d.w("AppLovinAdView", "Unable to destroy ad view", th);
            }
        }
        this.t = true;
    }

    public void dismissInterstitialIfRequired() {
        x xVar;
        if (new cb(this.b).L()) {
            if (this.f1533a != null && (this.f1533a instanceof AppLovinInterstitialActivity)) {
                ((AppLovinInterstitialActivity) this.f1533a).dismiss();
            } else if (this.p == null || (xVar = (x) this.p.get()) == null) {
            } else {
                xVar.dismiss();
            }
        }
    }

    @Override // com.applovin.adview.AdViewController
    public AppLovinAdSize getSize() {
        return this.e;
    }

    @Override // com.applovin.adview.AdViewController
    public void initializeAdView(ViewGroup viewGroup, Context context, AppLovinAdSize appLovinAdSize, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (context == null) {
            Log.e(AppLovinLogger.SDK_TAG, "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
            return;
        }
        if (appLovinAdSize == null && (appLovinAdSize = m.a(attributeSet)) == null) {
            appLovinAdSize = AppLovinAdSize.BANNER;
        }
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(context);
        }
        if (appLovinSdk == null || appLovinSdk.hasCriticalErrors()) {
            return;
        }
        a(viewGroup, appLovinSdk, appLovinAdSize, context);
        if (!m.b(attributeSet)) {
            return;
        }
        loadNextAd();
    }

    @Override // com.applovin.adview.AdViewController
    public boolean isAdReadyToDisplay() {
        return this.b.getAdService().hasPreloadedAd(this.e);
    }

    @Override // com.applovin.adview.AdViewController
    public boolean isAutoDestroy() {
        return this.s;
    }

    public boolean isForegroundClickInvalidated() {
        return this.z;
    }

    @Override // com.applovin.adview.AdViewController
    public void loadNextAd() {
        if (this.b == null || this.h == null || this.f1533a == null || !this.r) {
            Log.i(AppLovinLogger.SDK_TAG, "Unable to load next ad: AppLovinAdView is not initialized.");
        } else {
            this.c.loadNextAd(this.e, this.h);
        }
    }

    public void onAdHtmlLoaded(WebView webView) {
        if (this.n != null) {
            webView.setVisibility(0);
            try {
                if (this.w == null) {
                    return;
                }
                this.w.adDisplayed(this.n);
            } catch (Throwable th) {
                this.d.userError("AppLovinAdView", "Exception while notifying ad display listener", th);
            }
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void onDetachedFromWindow() {
        if (!this.r) {
            return;
        }
        a(new h(this, this.n));
        if (!this.s) {
            return;
        }
        destroy();
    }

    @Override // com.applovin.adview.AdViewController
    public void onVisibilityChanged(int i) {
        if (this.r && this.s) {
            if (i == 8 || i == 4) {
                pause();
            } else if (i != 0) {
            } else {
                resume();
            }
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void pause() {
        if (!this.r) {
            return;
        }
        this.c.removeAdUpdateListener(this.h, getSize());
        AppLovinAd appLovinAd = this.n;
        renderAd(this.j);
        if (appLovinAd != null) {
            this.q.set(appLovinAd);
        }
        this.t = true;
    }

    public void removeClickTrackingOverlay() {
        if (this.o == null) {
            this.d.d("AppLovinAdView", "Asked to remove an overlay when none existed. Skipping...");
            return;
        }
        ViewParent parent = this.o.getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(this.o);
        this.o = null;
    }

    @Override // com.applovin.adview.AdViewController
    public void renderAd(AppLovinAd appLovinAd) {
        renderAd(appLovinAd, null);
    }

    @Override // com.applovin.adview.AdViewController
    public void renderAd(AppLovinAd appLovinAd, String str) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (!this.r) {
            Log.i(AppLovinLogger.SDK_TAG, "Unable to render ad: AppLovinAdView is not initialized.");
        } else if (appLovinAd == this.n) {
            this.d.w("AppLovinAdView", "Ad #" + appLovinAd.getAdIdNumber() + " is already showing, ignoring");
        } else {
            this.d.d("AppLovinAdView", "Rendering ad #" + appLovinAd.getAdIdNumber() + " (" + appLovinAd.getSize() + ") over placement: " + str);
            a(new h(this, this.n));
            this.q.set(null);
            this.n = appLovinAd;
            this.f = str;
            if (appLovinAd.getSize() == this.e) {
                a(this.k);
            } else if (appLovinAd.getSize() == AppLovinAdSize.INTERSTITIAL) {
                a(this.m);
                a(this.l);
            }
            new cd(this.b).a();
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void resume() {
        if (!this.r) {
            return;
        }
        if (this.u) {
            this.c.addAdUpdateListener(this.h, this.e);
        }
        AppLovinAd appLovinAd = (AppLovinAd) this.q.getAndSet(null);
        if (appLovinAd != null) {
            renderAd(appLovinAd);
        }
        this.t = false;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.y = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.w = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.v = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.x = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAutoDestroy(boolean z) {
        this.s = z;
    }

    public void setIsForegroundClickInvalidated(boolean z) {
        this.z = z;
    }

    public void setParentDialog(WeakReference weakReference) {
        this.p = weakReference;
    }
}
