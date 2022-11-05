package com.smartadserver.android.library.ui;

import android.animation.Animator;
import android.animation.LayoutTransition;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.c.j;
import com.smartadserver.android.library.exception.SASAdDisplayException;
import com.smartadserver.android.library.exception.SASPendingRequestException;
import com.smartadserver.android.library.model.SASAdElement;
import com.smartadserver.android.library.model.SASNativeParallaxAdElement;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.smartadserver.android.library.preview.SASPreviewHandlerActivity;
import com.smartadserver.android.library.ui.c;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Vector;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class SASAdView extends FrameLayout implements c.a {
    private View A;
    private View B;
    private FrameLayout C;
    private Vector<d> D;
    private boolean E;
    private b F;
    private Timer I;
    private String J;
    private int K;
    private boolean L;
    private HandlerThread M;
    private Object N;
    private double O;
    private ArrayList<String> P;
    private ArrayList<com.smartadserver.android.library.model.d> Q;
    private boolean R;
    private ArrayList<e> S;
    private ArrayList<c> T;
    private View W;
    private int aA;
    private ViewGroup aB;
    private int[] aC;
    private int[] aD;
    private int[] aE;
    private float aF;
    private float aG;
    private boolean aH;
    private boolean aI;
    private boolean aJ;
    private RelativeLayout aa;
    private com.smartadserver.android.library.ui.a ab;
    private FrameLayout ac;
    private TextView ad;
    private ShapeDrawable ae;
    private LinearLayout af;
    private int ag;
    private FrameLayout ah;
    private FrameLayout ai;
    private ViewGroup.LayoutParams aj;
    private ViewGroup.LayoutParams ak;
    private RelativeLayout al;
    private RelativeLayout am;
    private boolean an;
    private Location ao;
    private ViewTreeObserver.OnGlobalLayoutListener ap;
    private Timer aq;
    private SASPreviewHandlerActivity.PreviewConfig ar;
    private FrameLayout as;
    private LinearLayout at;
    private TextView au;
    private ViewTreeObserver.OnScrollChangedListener av;
    private int aw;
    private int ax;
    private boolean ay;
    private boolean az;
    protected int d;
    public com.smartadserver.android.library.a.c e;
    public com.smartadserver.android.library.e.a.c f;
    Handler g;
    public com.smartadserver.android.library.controller.a h;
    public com.smartadserver.android.library.controller.c i;
    public com.smartadserver.android.library.controller.b j;
    public com.smartadserver.android.library.ui.d k;
    public com.smartadserver.android.library.ui.d l;
    public com.smartadserver.android.library.c.h m;
    public SASAdElement n;
    public SASCloseButton o;
    float p;
    boolean q;
    private boolean w;
    private int x;
    private int y;
    private boolean z;
    private static final String r = SASAdView.class.getSimpleName();
    private static boolean s = false;

    /* renamed from: a  reason: collision with root package name */
    public static int f5459a = 6000;
    public static int b = 10000;
    public static boolean c = false;
    private static int t = f5459a;
    private static int u = b;
    private static boolean v = c;
    private static Bitmap G = null;
    private static Drawable H = null;
    private static String U = "http://mobile.smartadserver.com";
    private static boolean V = false;

    /* loaded from: classes3.dex */
    public interface a {
        void adLoadingCompleted(SASAdElement sASAdElement);

        void adLoadingFailed(Exception exc);
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(String str);
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(com.smartadserver.android.library.model.b bVar);
    }

    /* loaded from: classes3.dex */
    public interface d {
        void onStateChanged(i iVar);
    }

    /* loaded from: classes3.dex */
    public interface e {
        void a(int i);
    }

    /* loaded from: classes3.dex */
    public interface g extends a {
        void a(SASAdElement sASAdElement);

        void a(Exception exc);
    }

    public abstract void a(View view);

    public abstract void b(View view);

    private void f() {
        com.smartadserver.android.library.ui.c.a(this);
    }

    private void w() {
        com.smartadserver.android.library.ui.c.b(this);
        post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.1
            @Override // java.lang.Runnable
            public void run() {
                SASAdView.this.updateVisibilityPercentage();
            }
        });
    }

    public void setBackButtonHandlingEnabled(boolean z) {
        this.R = z;
    }

    @Override // android.view.View
    public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
        boolean z = false;
        if (keyEvent.getAction() == 1) {
            if (i2 == 25 || i2 == 24) {
                if (this.h.c == null) {
                    return false;
                }
                this.h.c.c();
                return false;
            } else if (i2 != 4 || !this.R || !l()) {
                return false;
            } else {
                SASAdElement currentAdElement = getCurrentAdElement();
                if (currentAdElement != null && currentAdElement.getSelectedMediationAd() != null) {
                    return false;
                }
                if (this.ab.getVisibility() == 0) {
                    z = true;
                }
                com.smartadserver.android.library.controller.mraid.a mRAIDController = getMRAIDController();
                if (z && !(this instanceof SASInterstitialView)) {
                    this.ab.e();
                    return true;
                } else if (r()) {
                    mRAIDController.close();
                    return true;
                } else {
                    if (this.l != null && this.l.c()) {
                        G();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean g() {
        return s;
    }

    public static void setUseHashedAndroidId(boolean z) {
        s = z;
    }

    public static int getDefaultAdLoadingTimeout() {
        return t;
    }

    public static void setDefaultAdLoadingTimeout(int i2) {
        t = i2;
    }

    public static int getDefaultAdPrefetchTimeout() {
        return u;
    }

    public static void setVideoViewZOrderOnTop(boolean z) {
        v = z;
    }

    public static boolean h() {
        return v;
    }

    public static void setDefaultAdPrefetchTimeout(int i2) {
        u = i2;
    }

    public static String getBaseUrl() {
        return U;
    }

    public static void setBaseUrl(String str) {
        if (str != null) {
            U = str;
        }
    }

    public static boolean i() {
        return V;
    }

    public static void setUnityModeEnabled(boolean z) {
        V = z;
    }

    public static Bitmap getCloseButtonBitmap() {
        return G;
    }

    public static void setCloseButtonBitmap(Bitmap bitmap) {
        G = bitmap;
    }

    public static Drawable getCloseButtonDrawable() {
        return H;
    }

    public static void setCloseButtonDrawable(Drawable drawable) {
        H = drawable;
    }

    public SASAdElement getCurrentAdElement() {
        return this.n;
    }

    public void setCloseOnclick(boolean z) {
        this.an = z;
    }

    public SASAdView(Context context) {
        super(context);
        this.w = false;
        this.x = -10;
        this.y = 5;
        this.z = false;
        this.E = true;
        this.d = -1;
        this.J = null;
        this.K = 200;
        this.L = false;
        this.N = new Object();
        this.O = -1.0d;
        this.P = new ArrayList<>();
        this.Q = new ArrayList<>();
        this.R = true;
        this.S = new ArrayList<>();
        this.T = new ArrayList<>();
        this.ag = -1;
        this.ah = null;
        this.ai = null;
        this.an = true;
        this.ar = null;
        this.q = false;
        this.aw = Integer.MAX_VALUE;
        this.ax = Integer.MAX_VALUE;
        this.ay = false;
        this.az = false;
        this.aA = 0;
        this.aC = new int[2];
        this.aD = new int[2];
        this.aE = new int[2];
        this.aF = -1.0f;
        d(context);
        com.smartadserver.android.library.g.c.a(r, "SASAdview created");
    }

    public SASAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.w = false;
        this.x = -10;
        this.y = 5;
        this.z = false;
        this.E = true;
        this.d = -1;
        this.J = null;
        this.K = 200;
        this.L = false;
        this.N = new Object();
        this.O = -1.0d;
        this.P = new ArrayList<>();
        this.Q = new ArrayList<>();
        this.R = true;
        this.S = new ArrayList<>();
        this.T = new ArrayList<>();
        this.ag = -1;
        this.ah = null;
        this.ai = null;
        this.an = true;
        this.ar = null;
        this.q = false;
        this.aw = Integer.MAX_VALUE;
        this.ax = Integer.MAX_VALUE;
        this.ay = false;
        this.az = false;
        this.aA = 0;
        this.aC = new int[2];
        this.aD = new int[2];
        this.aE = new int[2];
        this.aF = -1.0f;
        d(context);
        com.smartadserver.android.library.g.c.a(r, "SASAdview created");
    }

    public View getCurrentLoaderView() {
        return this.B;
    }

    public int getExpandPolicy() {
        return this.y;
    }

    public void setExpandPolicy(int i2) {
        this.y = i2;
    }

    public void a(int i2, String str, int i3, boolean z, String str2, a aVar) {
        a(i2, str, i3, z, str2, aVar, t);
    }

    public void a(int i2, String str, int i3, boolean z, String str2, a aVar, int i4) {
        a(i2, str, i3, z, str2, aVar, i4, false, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final int i2, final String str, final int i3, final boolean z, final String str2, final a aVar, final int i4, final boolean z2, final boolean z3) {
        synchronized (this.N) {
            if (this.g != null) {
                this.g.post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.12
                    @Override // java.lang.Runnable
                    public void run() {
                        SASAdView.this.b(i2, str, i3, z, str2, aVar, i4, z2, z3);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i2, final String str, final int i3, boolean z, final String str2, final a aVar, final int i4, final boolean z2, boolean z3) {
        JSONObject jSONObject;
        JSONException e2;
        com.smartadserver.android.library.g.c.a(r, "loadAd(" + i2 + ", \"" + str + "\", " + i3 + ", " + str2 + ", " + z + ", " + aVar + ")");
        com.smartadserver.android.library.g.c.a(r, "Supported Mediation SDK " + Arrays.toString(j.a()));
        if (this.h.c()) {
            if (aVar != null) {
                aVar.adLoadingFailed(new SASPendingRequestException("An ad request is currently pending on this SASAdView"));
                return;
            }
            return;
        }
        this.h.a(z2 ? 2 : 1);
        d(!z3);
        this.B = getLoaderView();
        if (this.B != null) {
            a(this.B);
        }
        Location location = this.ao;
        if (location == null) {
            location = com.smartadserver.android.library.g.c.a(getContext());
        }
        if (location == null) {
            jSONObject = null;
        } else {
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("longitude", location.getLongitude());
                    jSONObject.put("latitude", location.getLatitude());
                } catch (JSONException e3) {
                    e2 = e3;
                    e2.printStackTrace();
                    this.h.a(i2, str, i3, str2, z, aVar, i4, jSONObject, z2);
                    if (this.d <= 0) {
                        return;
                    }
                    return;
                }
            } catch (JSONException e4) {
                jSONObject = null;
                e2 = e4;
            }
        }
        this.h.a(i2, str, i3, str2, z, aVar, i4, jSONObject, z2);
        if (this.d <= 0 && this.I == null && !z2) {
            int i5 = this.d * 1000;
            this.I = new Timer();
            this.I.scheduleAtFixedRate(new TimerTask() { // from class: com.smartadserver.android.library.ui.SASAdView.23
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    SASAdView.this.a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.23.1
                        @Override // java.lang.Runnable
                        public void run() {
                            IBinder windowToken = SASAdView.this.getWindowToken();
                            com.smartadserver.android.library.g.c.a(SASAdView.r, "rootView IBinder:" + windowToken);
                            if (windowToken != null && !com.smartadserver.android.library.g.c.j(SASAdView.this.getContext()) && !SASAdView.this.j() && !SASAdView.this.k()) {
                                SASAdView.this.a(i2, str, i3, false, str2, aVar, i4, z2, true);
                            }
                        }
                    });
                }
            }, i5, i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRefreshIntervalImpl(int i2) {
        int i3;
        if (i2 > 0) {
            i3 = Math.max(i2, 20);
        } else {
            i3 = -1;
            if (this.I != null) {
                this.I.cancel();
                this.I = null;
            }
        }
        this.d = i3;
    }

    public void a(final String str) {
        if ("sas:click".equals(str)) {
            str = this.n.getClickUrl();
        }
        if (str == null || str.length() == 0) {
            com.smartadserver.android.library.g.c.a(r, "open(url) failed: url is empty");
        } else if (this.n != null && com.smartadserver.android.library.g.c.e(getContext())) {
            com.smartadserver.android.library.g.c.a(r, "open(" + str + ")");
            String clickPixelUrl = this.n.getClickPixelUrl();
            if (clickPixelUrl != null && !clickPixelUrl.equals("")) {
                this.e.a(clickPixelUrl, true);
            }
            A();
            if (!this.n.isOpenClickInApplication()) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                try {
                    Context context = getContext();
                    if (!(context instanceof Activity)) {
                        intent.setFlags(DriveFile.MODE_READ_ONLY);
                    }
                    context.startActivity(intent);
                    Thread.sleep(1000L);
                } catch (ActivityNotFoundException e2) {
                } catch (InterruptedException e3) {
                }
                if (this.an) {
                    m();
                    return;
                }
                setCloseButtonAppearanceDelay(0);
                getMRAIDController().setExpandUseCustomCloseProperty(false);
                this.o.a(true);
                if (this.h.c != null) {
                    this.h.c.b();
                }
            } else if (this.l != null) {
                a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.33
                    @Override // java.lang.Runnable
                    public void run() {
                        SASAdView.this.setEnableStateChangeEvent(false);
                        SASAdView.this.l.setInAppBrowserMode(true);
                        SASAdView.this.o.setCloseButtonVisibility(8);
                        SASAdView.this.getMRAIDController().expand(str);
                        SASAdView.this.setEnableStateChangeEvent(true);
                        SASAdView.this.h.c.b();
                    }
                });
            }
        } else {
            com.smartadserver.android.library.g.c.a(r, "open(url) failed: no internet connection or adElement is null");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        com.smartadserver.android.library.g.c.a(r, "onAttachedToWindow()");
        super.onAttachedToWindow();
        f();
        this.h.a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        com.smartadserver.android.library.g.c.a(r, "onDetachedFromWindow()");
        super.onDetachedFromWindow();
        this.h.b();
        getMRAIDController().c();
        w();
        if (this.ap != null) {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.ap);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (this.h != null) {
            getMRAIDController().c();
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        com.smartadserver.android.library.g.c.a(r, "onConfigurationChanged");
        super.onConfigurationChanged(configuration);
        if (this.ap == null) {
            this.ap = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.smartadserver.android.library.ui.SASAdView.34
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    SASAdView.this.getViewTreeObserver().removeOnGlobalLayoutListener(SASAdView.this.ap);
                    SASAdView.this.x();
                    SASAdView.this.post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.34.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SASAdView.this.getMRAIDController().a(com.smartadserver.android.library.g.c.g(SASAdView.this.getContext()));
                            if (SASAdView.this.h.c != null) {
                                SASAdView.this.h.c.a();
                            }
                        }
                    });
                }
            };
        } else {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.ap);
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.ap);
    }

    private View getRootContentView() {
        if (getContext() instanceof Activity) {
            return ((Activity) getContext()).getWindow().getDecorView();
        }
        return getRootView();
    }

    public FrameLayout getExpandParentView() {
        if (this.C != null) {
            return this.C;
        }
        View rootContentView = getRootContentView();
        if (rootContentView instanceof FrameLayout) {
            return (FrameLayout) rootContentView;
        }
        if (rootContentView != null) {
            View findViewById = rootContentView.findViewById(16908290);
            if (findViewById instanceof FrameLayout) {
                return (FrameLayout) findViewById;
            }
        }
        return null;
    }

    public boolean j() {
        return "expanded".equals(getMRAIDController().getState());
    }

    public boolean k() {
        return "resized".equals(getMRAIDController().getState());
    }

    public void a(String str, int i2, int i3, boolean z, String str2) {
        a(str, i2, i3, 0, 0, true, true, z, str2, true);
    }

    public void a(String str, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3, String str2, boolean z4) {
        com.smartadserver.android.library.g.c.a(r, "view.expand(" + str + ", w:" + i2 + ", h:" + i3 + ", offX:" + i4 + ", offY:" + i5 + ")");
        boolean z5 = (this.l == null || !this.l.c()) && z3;
        if (getContext() instanceof Activity) {
            if (z5) {
                Activity activity = (Activity) getContext();
                try {
                    ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(activity.getComponentName(), 128);
                    if (activityInfo != null && (activityInfo.configChanges | 128) > 0) {
                        if (this.x == -10) {
                            this.x = activity.getRequestedOrientation();
                            com.smartadserver.android.library.g.c.a(r, "lock rotation, current orientation: " + this.x);
                        }
                        int i6 = com.smartadserver.android.library.g.c.i(getContext());
                        if (!"none".equals(str2)) {
                            if ("portrait".equals(str2)) {
                                i6 = 1;
                            } else if ("landscape".equals(str2)) {
                                i6 = 0;
                            }
                        }
                        activity.setRequestedOrientation(i6);
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                }
            } else {
                H();
            }
        }
        a(new AnonymousClass35(str, i2, i3, i4, i5, z, z2, z4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.smartadserver.android.library.ui.SASAdView$35  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass35 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f5491a;
        final /* synthetic */ int b;
        final /* synthetic */ int c;
        final /* synthetic */ int d;
        final /* synthetic */ int e;
        final /* synthetic */ boolean f;
        final /* synthetic */ boolean g;
        final /* synthetic */ boolean h;

        AnonymousClass35(String str, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3) {
            this.f5491a = str;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = z;
            this.g = z2;
            this.h = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            boolean z = false;
            if (SASAdView.this.n != null) {
                z = SASAdView.this.n.isOpenClickInApplication();
            }
            if ((this.f5491a != null && !SASAdView.this.w && SASAdView.this.l != null && SASAdView.this.l.c()) || (SASAdView.this.w && z)) {
                SASAdView.this.an = true;
            }
            int i10 = this.b == -1 ? -1 : this.b;
            int i11 = this.c == -1 ? -1 : this.c;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i10, i11);
            boolean z2 = SASAdView.this.l == null || SASAdView.this.l.getVisibility() == 8;
            FrameLayout expandParentView = SASAdView.this.getExpandParentView();
            int[] neededPadding = SASAdView.this.getNeededPadding();
            int i12 = neededPadding[0];
            int i13 = neededPadding[1];
            int i14 = neededPadding[2];
            int i15 = neededPadding[3];
            if (this.b != -1 || this.c != -1) {
                new Rect();
                Rect expandParentViewRect = SASAdView.this.getExpandParentViewRect();
                expandParentView.getLocationOnScreen(r0);
                com.smartadserver.android.library.g.c.a(SASAdView.r, "content locationOnScreen: " + r0[0] + "," + r0[1]);
                Rect defaultBounds = SASAdView.this.getDefaultBounds();
                defaultBounds.top += expandParentViewRect.top;
                defaultBounds.left += expandParentViewRect.left;
                int[] iArr = {iArr[0] - expandParentViewRect.left, iArr[1] - expandParentViewRect.top};
                int i16 = this.d;
                int i17 = this.e;
                if (this.f) {
                    i = SASAdView.this.y;
                } else {
                    i = 5;
                }
                if (!this.g) {
                    double d = 1.0d;
                    if (i10 > 0) {
                        d = Math.min(1.0d, (expandParentViewRect.width() - (i12 + i14)) / i10);
                    }
                    double min = i11 > 0 ? Math.min(d, (expandParentViewRect.height() - (i13 + i15)) / i11) : d;
                    if (min < 1.0d) {
                        i9 = i10 > 0 ? (int) (i10 * min) : i10;
                        if (i11 > 0) {
                            i11 = (int) (i11 * min);
                        }
                        SASAdView.this.getMRAIDController().a("Resize properties are wider than max size but offscreen is not allowed => cropping", (String) null);
                        i8 = i11;
                    } else {
                        i8 = i11;
                        i9 = i10;
                    }
                    i3 = i9 > 0 ? Math.min(Math.max(i16, (-(defaultBounds.left - iArr[0])) + i12), ((expandParentViewRect.width() - i14) - i9) - (defaultBounds.left - iArr[0])) : i16;
                    if (i8 > 0) {
                        i5 = Math.min(Math.max(i17, -(defaultBounds.top - ((expandParentViewRect.top + iArr[1]) + i13))), (((expandParentViewRect.height() - i15) + (expandParentViewRect.top + iArr[1])) - i8) - defaultBounds.top);
                        i2 = i8;
                        i4 = i9;
                    } else {
                        i5 = i17;
                        i4 = i9;
                        i2 = i8;
                    }
                } else {
                    i2 = i11;
                    i3 = i16;
                    i4 = i10;
                    i5 = i17;
                }
                layoutParams.width = i4;
                layoutParams.height = i2;
                if ((i & 2) > 0) {
                    layoutParams.bottomMargin = i5 + (expandParentViewRect.bottom - defaultBounds.bottom);
                    i6 = 80;
                } else {
                    layoutParams.topMargin = (i5 + (defaultBounds.top - expandParentViewRect.top)) - iArr[1];
                    i6 = 48;
                }
                if ((i & 4) > 0 || i4 < 0) {
                    i7 = i6 | 3;
                    layoutParams.leftMargin = (i3 + (defaultBounds.left - expandParentViewRect.left)) - iArr[0];
                } else if ((i & 16) > 0) {
                    i7 = i6 | 5;
                    layoutParams.rightMargin = i3 + (expandParentViewRect.right - defaultBounds.right);
                } else {
                    i7 = i6 | 3;
                    layoutParams.leftMargin = i3 + ((defaultBounds.centerX() - (i4 / 2)) - (-expandParentViewRect.left));
                }
                layoutParams.gravity = i7;
                if (z2) {
                    SASAdView.this.ak = layoutParams;
                } else {
                    SASAdView.this.ak.height = layoutParams.height;
                    SASAdView.this.ak.width = layoutParams.width;
                }
            }
            if (!SASAdView.this.w) {
                SASAdView.this.w = SASAdView.this.y();
                com.smartadserver.android.library.g.c.a(SASAdView.r, "moveViewToForeground:" + SASAdView.this.w);
            }
            if (SASAdView.this.w) {
                if (this.h && !(SASAdView.this.getCurrentAdElement() instanceof SASNativeVideoAdElement)) {
                    SASAdView.this.W.setVisibility(0);
                }
                if (z2) {
                    SASAdView.this.al.setLayoutParams(layoutParams);
                }
                SASAdView.this.x();
                ViewGroup.LayoutParams layoutParams2 = SASAdView.this.getLayoutParams();
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(layoutParams2.width, layoutParams2.height);
                if (this.f5491a != null) {
                    if (z2) {
                        if (SASAdView.this.k != null) {
                            SASAdView.this.k.setLayoutParams(layoutParams3);
                            SASAdView.this.l.setVisibility(0);
                        }
                        int i18 = 8;
                        if (SASAdView.this.l == null || !SASAdView.this.l.c()) {
                            i18 = SASAdView.this.getMRAIDController().d() ? 8 : 0;
                        }
                        SASAdView.this.o.setCloseButtonVisibility(i18);
                    }
                    if (SASAdView.this.l != null) {
                        if (!SASAdView.this.l.c()) {
                            try {
                                final URL url = new URL(this.f5491a);
                                new Thread() { // from class: com.smartadserver.android.library.ui.SASAdView.35.1
                                    @Override // java.lang.Thread, java.lang.Runnable
                                    public void run() {
                                        final String h;
                                        String[] strArr = new String[1];
                                        final String a2 = com.smartadserver.android.library.g.b.a(url, strArr);
                                        if (strArr[0] != null) {
                                            h = com.smartadserver.android.library.g.c.h(strArr[0]);
                                        } else {
                                            h = com.smartadserver.android.library.g.c.h(AnonymousClass35.this.f5491a);
                                        }
                                        if (a2 != null && a2.contains("\"mraid.js\"")) {
                                            a2 = a2.replace("\"mraid.js\"", "\"" + com.smartadserver.android.library.controller.mraid.a.b + "\"");
                                        }
                                        SASAdView.this.a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.35.1.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                SASAdView.this.l.a(h, a2, "text/html", "UTF-8", null);
                                            }
                                        });
                                    }
                                }.start();
                            } catch (MalformedURLException e) {
                                SASAdView.this.l.a(this.f5491a);
                            }
                        } else {
                            SASAdView.this.l.a(this.f5491a);
                        }
                    }
                }
                SASAdView.this.requestFocus();
                if (SASAdView.this.ay) {
                    SASAdView.this.setY(SASAdView.this.getY() - SASAdView.this.aA);
                    SASAdView.this.o();
                }
                SASAdView.this.post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.35.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SASAdView.this.getMRAIDController().a(SASAdView.this.getWidth(), SASAdView.this.getHeight());
                    }
                });
            }
        }
    }

    public int[] getNeededPadding() {
        int i2;
        int i3;
        int i4;
        int i5;
        FrameLayout expandParentView = getExpandParentView();
        if (expandParentView == null || expandParentView != getRootContentView()) {
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;
        } else {
            Rect rect = new Rect();
            expandParentView.getWindowVisibleDisplayFrame(rect);
            i5 = rect.top;
            i3 = rect.left;
            i4 = Math.max(0, expandParentView.getHeight() - rect.bottom);
            i2 = Math.max(0, expandParentView.getWidth() - rect.right);
        }
        return new int[]{i3, i5, i2, i4};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (l()) {
            int[] neededPadding = getNeededPadding();
            this.al.setPadding(neededPadding[0], neededPadding[1], neededPadding[2], neededPadding[3]);
            return;
        }
        this.al.setPadding(0, 0, 0, 0);
    }

    public boolean l() {
        if (getContext() instanceof Activity) {
            View decorView = ((Activity) getContext()).getWindow().getDecorView();
            ViewGroup.LayoutParams layoutParams = this.al.getLayoutParams();
            return this.al.getParent() == decorView && layoutParams.width == -1 && layoutParams.height == -1;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getExpandParentViewRect() {
        FrameLayout expandParentView = getExpandParentView();
        Rect rect = new Rect();
        expandParentView.getGlobalVisibleRect(rect);
        rect.right = rect.left + expandParentView.getWidth();
        rect.bottom = rect.top + expandParentView.getHeight();
        rect.top += expandParentView.getPaddingTop();
        rect.bottom += -expandParentView.getPaddingBottom();
        rect.left += expandParentView.getPaddingLeft();
        rect.right = (-expandParentView.getPaddingRight()) + rect.right;
        return rect;
    }

    private Rect c(View view) {
        Rect rect = new Rect();
        int paddingTop = view.getPaddingTop();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        Rect expandParentViewRect = getExpandParentViewRect();
        int i2 = iArr[0] - expandParentViewRect.left;
        int i3 = (iArr[1] - expandParentViewRect.top) + paddingTop;
        rect.set(i2, i3, view.getWidth() + i2, (view.getHeight() + i3) - paddingTop);
        return rect;
    }

    public Rect getCurrentBounds() {
        return c((View) this);
    }

    public Rect getDefaultBounds() {
        if (this.ah.getParent() != null) {
            return c(this.ah);
        }
        return getCurrentBounds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    public boolean y() {
        boolean z;
        LayoutTransition layoutTransition;
        int i2 = 8;
        this.aj = getLayoutParams();
        FrameLayout expandParentView = getExpandParentView();
        if (expandParentView == null) {
            z = false;
        } else {
            this.ag = com.smartadserver.android.library.g.c.a(this);
            if (this.ag > -1) {
                if (getVisibility() != 8) {
                    i2 = 4;
                }
                this.ah.setVisibility(i2);
                this.ah.setY(getY());
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (Build.VERSION.SDK_INT >= 11) {
                    layoutTransition = viewGroup.getLayoutTransition();
                    viewGroup.setLayoutTransition(null);
                } else {
                    layoutTransition = null;
                }
                viewGroup.addView(this.ah, this.ag, this.aj);
                viewGroup.removeView(this);
                if (layoutTransition != null) {
                    viewGroup.setLayoutTransition(layoutTransition);
                }
            }
            expandParentView.addView(this.al);
            this.al.addView(this, new RelativeLayout.LayoutParams(-1, -1));
            z = true;
        }
        if (z) {
            com.smartadserver.android.library.g.c.a(r, "moveViewToForeground succeeded");
        } else {
            com.smartadserver.android.library.g.c.a(r, "moveViewToForeground failed");
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    public void z() {
        LayoutTransition layoutTransition;
        com.smartadserver.android.library.g.c.a(r, "moveViewToBackground");
        FrameLayout expandParentView = getExpandParentView();
        if (expandParentView.indexOfChild(this.al) > -1) {
            this.al.removeAllViews();
            expandParentView.removeView(this.al);
        }
        if (this.ag > -1) {
            ViewGroup viewGroup = (ViewGroup) this.ah.getParent();
            if (viewGroup != null) {
                if (Build.VERSION.SDK_INT >= 11) {
                    layoutTransition = viewGroup.getLayoutTransition();
                    viewGroup.setLayoutTransition(null);
                } else {
                    layoutTransition = null;
                }
                viewGroup.addView(this, this.ag, this.aj);
                viewGroup.removeView(this.ah);
                if (layoutTransition != null) {
                    viewGroup.setLayoutTransition(layoutTransition);
                }
            }
            this.ag = -1;
        }
    }

    public void m() {
        com.smartadserver.android.library.g.c.a(r, "collapse");
        String state = getMRAIDController().getState();
        if ("expanded".equals(state) || "resized".equals(state) || (this.l != null && this.l.c())) {
            getMRAIDController().close();
        }
    }

    public void a() {
        com.smartadserver.android.library.g.c.a(r, "collapseImpl()");
        a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.36
            @Override // java.lang.Runnable
            public void run() {
                if (SASAdView.this.w) {
                    SASAdView.this.F();
                    SASAdView.this.z();
                    if (SASAdView.this.ay) {
                        SASAdView.this.setY(SASAdView.this.getY() + SASAdView.this.aA);
                        SASAdView.this.post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.36.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SASAdView.this.D();
                            }
                        });
                    }
                    SASAdView.this.W.setVisibility(8);
                    SASAdView.this.w = false;
                    SASAdView.this.ak = null;
                    SASAdView.this.H();
                }
                if (SASAdView.this.h.c != null) {
                    SASAdView.this.h.c.b();
                }
                SASAdView.this.post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.36.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SASAdView.this.getMRAIDController().a(SASAdView.this.getWidth(), SASAdView.this.getHeight());
                    }
                });
            }
        });
    }

    public void c() {
        com.smartadserver.android.library.g.c.a(r, "closeImpl()");
        a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.37
            @Override // java.lang.Runnable
            public void run() {
                SASAdView.this.setVisibility(8);
                if (SASAdView.this.h.c != null) {
                    SASAdView.this.h.c.b();
                }
                if (SASAdView.this.k != null) {
                    try {
                        Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(SASAdView.this.k.getChildAt(0), null);
                    } catch (Exception e2) {
                    }
                    SASAdView.this.k.a();
                }
                SASAdView.this.E();
            }
        });
    }

    public void n() {
        getMRAIDController().close();
        if ("default".equals(getMRAIDController().getState())) {
            getMRAIDController().close();
        }
    }

    private void d(Context context) {
        com.smartadserver.android.library.g.c.a(r, "initialize(context)");
        this.e = com.smartadserver.android.library.a.c.a(context.getApplicationContext());
        this.f = new com.smartadserver.android.library.e.a.c(context);
        this.M = new HandlerThread("SASAdViewHandlerThread-" + System.identityHashCode(this));
        this.M.start();
        this.g = new Handler(this.M.getLooper());
        setFocusable(true);
        setFocusableInTouchMode(true);
        c(context);
        b(context);
        this.m = new com.smartadserver.android.library.c.h(getContext(), this) { // from class: com.smartadserver.android.library.ui.SASAdView.38
            @Override // com.smartadserver.android.library.c.h
            protected void a() {
                SASAdView.this.A();
            }
        };
        this.h = new com.smartadserver.android.library.controller.a(this);
        this.D = new Vector<>();
        this.h.a(0);
        this.W = new View(context);
        this.W.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.W.setVisibility(8);
        addView(this.W, 0, new FrameLayout.LayoutParams(-1, -1));
        this.ah = new FrameLayout(getContext());
        this.ai = new FrameLayout(getContext());
        e(context);
        this.ab = new com.smartadserver.android.library.ui.a(context, this);
        this.ab.setVisibility(8);
        addView(this.ab, new FrameLayout.LayoutParams(-1, -1));
        a(context);
        f(context);
        this.al = new RelativeLayout(context);
        this.al.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.o = new SASCloseButton(context);
        this.am = new RelativeLayout(context);
        this.am.addView(this.o, new FrameLayout.LayoutParams(-2, -2));
        addView(this.am, new FrameLayout.LayoutParams(-1, -1));
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.p = displayMetrics.density;
        setStickyModeAnchorView(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        this.z = true;
        u();
    }

    protected void a(Context context) {
        this.at = new LinearLayout(context);
        this.at.setOrientation(1);
        this.at.setVisibility(8);
        this.au = new TextView(context);
        this.au.setTypeface(Typeface.create("sans-serif-light", 1));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.au.setGravity(1);
        this.at.addView(this.au, layoutParams);
        this.as = new FrameLayout(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 1.0f;
        this.at.addView(this.as, layoutParams2);
        addView(this.at, new FrameLayout.LayoutParams(-1, -1));
    }

    private void e(Context context) {
        this.aa = new RelativeLayout(context);
        this.aa.setVisibility(8);
        addView(this.aa, new FrameLayout.LayoutParams(-1, -1));
    }

    private void f(Context context) {
        this.ac = new FrameLayout(context);
        this.ac.setVisibility(8);
        int[] iArr = {-7829368, Color.argb(128, 128, 128, 128)};
        this.ae = new ShapeDrawable();
        int a2 = com.smartadserver.android.library.g.c.a(15, getResources());
        this.ae.getPaint().setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, a2, a2, (float) BitmapDescriptorFactory.HUE_RED, iArr, new float[]{0.5f, 0.5f}, Shader.TileMode.REPEAT));
        this.af = new LinearLayout(context);
        this.af.setOrientation(1);
        final int a3 = com.smartadserver.android.library.g.c.a(35, getResources());
        this.af.setTranslationY(a3);
        final LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        int a4 = com.smartadserver.android.library.g.c.a(1, getResources());
        int a5 = com.smartadserver.android.library.g.c.a(10, getResources());
        float[] fArr = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, a5, a5, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
        RoundRectShape roundRectShape = new RoundRectShape(fArr, null, null);
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setShape(roundRectShape);
        shapeDrawable.getPaint().setColor(-1);
        RoundRectShape roundRectShape2 = new RoundRectShape(fArr, new RectF(BitmapDescriptorFactory.HUE_RED, a4, a4, BitmapDescriptorFactory.HUE_RED), new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, a5 - a4, a5 - a4, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
        ShapeDrawable shapeDrawable2 = new ShapeDrawable();
        shapeDrawable2.setShape(roundRectShape2);
        shapeDrawable2.getPaint().setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable, shapeDrawable2});
        if (Build.VERSION.SDK_INT >= 16) {
            linearLayout.setBackground(layerDrawable);
        } else {
            linearLayout.setBackgroundDrawable(layerDrawable);
        }
        ImageView imageView = new ImageView(context);
        imageView.setImageBitmap(com.smartadserver.android.library.f.a.z);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        imageView.setPadding(com.smartadserver.android.library.g.c.a(3, getResources()), 0, 0, 0);
        linearLayout.addView(imageView, layoutParams);
        this.ad = new TextView(context);
        this.ad.setTextColor(-12303292);
        this.ad.setText("preview");
        this.ad.setTextSize(1, 12.0f);
        this.ad.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
        this.ad.setPadding(com.smartadserver.android.library.g.c.a(10, getResources()), 0, com.smartadserver.android.library.g.c.a(25, getResources()), 0);
        this.ad.setIncludeFontPadding(false);
        linearLayout.addView(this.ad, layoutParams2);
        final ImageView imageView2 = new ImageView(context);
        imageView2.setImageBitmap(com.smartadserver.android.library.f.a.A);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        imageView2.setPadding(0, 0, com.smartadserver.android.library.g.c.a(5, getResources()), 0);
        linearLayout.addView(imageView2, layoutParams3);
        linearLayout.setTranslationY(1.0f);
        final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASAdView.2

            /* renamed from: a  reason: collision with root package name */
            boolean f5471a = false;

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASAdView.this.af.animate().translationYBy(this.f5471a ? a3 : -a3);
                this.f5471a = !this.f5471a;
                imageView2.setImageBitmap(this.f5471a ? com.smartadserver.android.library.f.a.B : com.smartadserver.android.library.f.a.A);
            }
        };
        this.af.addView(linearLayout, new LinearLayout.LayoutParams(-2, com.smartadserver.android.library.g.c.a(this instanceof SASInterstitialView ? 30 : 20, getResources())));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        Button button = new Button(context);
        button.setAllCaps(false);
        button.setText("refresh");
        button.setIncludeFontPadding(false);
        button.setTextSize(1, 13.0f);
        button.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        button.setBackgroundColor(0);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.D);
        bitmapDrawable.setColorFilter(Color.argb(255, 131, 176, 221), PorterDuff.Mode.SRC_IN);
        int a6 = com.smartadserver.android.library.g.c.a(20, getResources());
        bitmapDrawable.setBounds(0, 0, a6, a6);
        button.setCompoundDrawables(bitmapDrawable, null, null, null);
        button.setCompoundDrawablePadding(0);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASAdView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SASAdView.this.ar != null) {
                    SASAdView.this.a(Integer.parseInt(SASAdView.this.ar.siteId), SASAdView.this.ar.pageId, Integer.parseInt(SASAdView.this.ar.formatId), true, SASAdView.this.ar.target, new a() { // from class: com.smartadserver.android.library.ui.SASAdView.3.1
                        @Override // com.smartadserver.android.library.ui.SASAdView.a
                        public void adLoadingCompleted(SASAdElement sASAdElement) {
                            com.smartadserver.android.library.g.c.a(SASAdView.r, "adLoadingCompleted from livepreview");
                        }

                        @Override // com.smartadserver.android.library.ui.SASAdView.a
                        public void adLoadingFailed(Exception exc) {
                            com.smartadserver.android.library.g.c.a(SASAdView.r, "adLoadingFailed from livepreview");
                        }
                    });
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams4.gravity = 17;
        frameLayout.addView(button, layoutParams4);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -1);
        layoutParams5.weight = 1.0f;
        linearLayout2.addView(frameLayout, layoutParams5);
        linearLayout2.setBackgroundColor(-1);
        Button button2 = new Button(context);
        button2.setAllCaps(false);
        button2.setTextSize(1, 13.0f);
        button2.setBackgroundColor(0);
        button2.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        button2.setText("stop");
        button2.setIncludeFontPadding(false);
        BitmapDrawable bitmapDrawable2 = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.C);
        bitmapDrawable2.setBounds(0, 0, a6, a6);
        bitmapDrawable2.setColorFilter(Color.argb(255, 191, 85, 143), PorterDuff.Mode.SRC_IN);
        button2.setCompoundDrawables(bitmapDrawable2, null, null, null);
        button2.setCompoundDrawablePadding(0);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASAdView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASAdView.this.ar.insertionId = -1;
                SASPreviewHandlerActivity.a(SASAdView.this.getContext().getApplicationContext(), SASAdView.this.ar);
                SASAdView.this.B();
                onClickListener.onClick(linearLayout);
                linearLayout.setOnClickListener(null);
                if (SASAdView.this instanceof SASInterstitialView) {
                    SASAdView.this.n();
                }
            }
        });
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams6.gravity = 17;
        frameLayout2.addView(button2, layoutParams6);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -1);
        layoutParams7.weight = 1.0f;
        linearLayout2.addView(frameLayout2, layoutParams7);
        this.af.addView(linearLayout2, new LinearLayout.LayoutParams(-1, a3));
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams8.gravity = 83;
        this.ac.addView(this.af, layoutParams8);
        linearLayout.setOnClickListener(onClickListener);
        addView(this.ac, new FrameLayout.LayoutParams(-1, -1));
    }

    public void a(SASNativeVideoAdElement sASNativeVideoAdElement, long j) throws SASAdDisplayException {
        try {
            this.ab.a(sASNativeVideoAdElement, j);
            a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.5
                @Override // java.lang.Runnable
                public void run() {
                    if (SASAdView.this.k != null) {
                        SASAdView.this.k.setVisibility(8);
                    }
                    SASAdView.this.ab.setVisibility(0);
                    SASAdView.this.setScrollListenerEnabled(true);
                }
            });
        } catch (SASAdDisplayException e2) {
            a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.6
                @Override // java.lang.Runnable
                public void run() {
                    SASAdView.this.E();
                }
            });
            String adFailUrl = sASNativeVideoAdElement.getAdFailUrl();
            if (adFailUrl != null && adFailUrl.length() > 0) {
                com.smartadserver.android.library.a.c.a((Context) null).a(adFailUrl, true);
            }
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setScrollListenerEnabled(boolean z) {
        boolean z2;
        if (!(this instanceof SASInterstitialView)) {
            if (getCurrentAdElement() instanceof SASNativeVideoAdElement) {
                z2 = ((SASNativeVideoAdElement) getCurrentAdElement()).isStickToTopEnabled();
            } else if (getCurrentAdElement() instanceof SASNativeParallaxAdElement) {
                z2 = true;
            }
            if (!(!z && z2)) {
                C();
                c(true);
                return;
            }
            c(false);
            this.av = null;
            return;
        }
        z2 = false;
        if (!(!z && z2)) {
        }
    }

    public void setMediationView(View view) {
        if (this.aa != null) {
            if (view == null || view.getParent() != this.aa) {
                this.aa.removeAllViews();
                this.aa.setVisibility(8);
                if (view != null) {
                    if (view.getLayoutParams() == null) {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                        layoutParams.addRule(13);
                        view.setLayoutParams(layoutParams);
                    }
                    this.aa.addView(view);
                    this.aa.setVisibility(0);
                    this.k.setVisibility(8);
                }
            }
        }
    }

    public int[] getExpandParentViewMaxSize() {
        FrameLayout expandParentView = getExpandParentView();
        int[] neededPadding = getNeededPadding();
        if (expandParentView != null) {
            return new int[]{expandParentView.getWidth() - (neededPadding[0] + neededPadding[2]), expandParentView.getHeight() - (neededPadding[3] + neededPadding[1])};
        }
        return null;
    }

    public synchronized boolean a(SASPreviewHandlerActivity.PreviewConfig previewConfig) {
        final boolean z;
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        z = previewConfig != null && previewConfig.insertionId > 0 && previewConfig.previewUrlExpirationDate > currentTimeMillis && (previewConfig.startTime < 0 || currentTimeMillis - previewConfig.startTime < previewConfig.previewDuration);
        if (!z && this.aq != null) {
            this.aq.cancel();
            this.aq = null;
        }
        post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.7
            @Override // java.lang.Runnable
            public void run() {
                SASAdView.this.ac.setVisibility(z ? 0 : 8);
            }
        });
        if (z) {
            if (previewConfig.startTime < 0) {
                previewConfig.startTime = currentTimeMillis;
            }
            long max = Math.max(0L, Math.min(previewConfig.previewDuration - (currentTimeMillis - previewConfig.startTime), previewConfig.previewUrlExpirationDate - currentTimeMillis));
            post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.8
                @Override // java.lang.Runnable
                public void run() {
                    SASAdView.this.ac.setBackgroundColor(0);
                    SASAdView.this.ac.setClickable(false);
                    SASAdView.this.ad.setText("preview");
                }
            });
            this.aq = new Timer();
            this.aq.schedule(new TimerTask() { // from class: com.smartadserver.android.library.ui.SASAdView.9
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    SASAdView.this.B();
                }
            }, max * 1000);
        }
        this.ar = previewConfig;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.10
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 16) {
                    SASAdView.this.ac.setBackground(SASAdView.this.ae);
                } else {
                    SASAdView.this.ac.setBackgroundDrawable(SASAdView.this.ae);
                }
                SASAdView.this.ac.setClickable(true);
                SASAdView.this.ad.setText("preview removed. Please reload this placement");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class f extends ImageView {

        /* renamed from: a  reason: collision with root package name */
        int f5505a;
        int b;
        double c;
        int d;

        public f(Context context, Bitmap bitmap) {
            super(context);
            this.f5505a = bitmap.getWidth();
            this.b = bitmap.getHeight();
            this.c = this.b / this.f5505a;
            this.d = ((SASNativeParallaxAdElement) SASAdView.this.n).getResizeMode();
            ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
            setScaleType(ImageView.ScaleType.FIT_XY);
            setImageBitmap(bitmap);
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            SASNativeParallaxAdElement sASNativeParallaxAdElement = (SASNativeParallaxAdElement) SASAdView.this.n;
            int[] expandParentViewMaxSize = SASAdView.this.getExpandParentViewMaxSize();
            if (expandParentViewMaxSize != null) {
                i2 = expandParentViewMaxSize[1];
            }
            int size = View.MeasureSpec.getSize(i);
            int round = (int) Math.round(size * this.c);
            if (sASNativeParallaxAdElement.getParallaxMode() == 0) {
                if (this.d == 2) {
                    i3 = size;
                } else if ((round <= i2 && this.d == 0) || (round > i2 && this.d == 1)) {
                    i3 = (int) Math.round(i2 / this.c);
                }
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
            }
            i2 = round;
            i3 = size;
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        }
    }

    private ImageView c(String str) {
        Bitmap f2 = com.smartadserver.android.library.g.c.f(str);
        SASNativeParallaxAdElement sASNativeParallaxAdElement = (SASNativeParallaxAdElement) this.n;
        if (f2 == null) {
            return null;
        }
        f fVar = new f(getContext(), f2);
        fVar.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASAdView.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASAdView.this.a(SASAdView.this.n.getClickUrl());
            }
        });
        return fVar;
    }

    @TargetApi(17)
    private WebView d(final String str) {
        final SASNativeParallaxAdElement sASNativeParallaxAdElement = (SASNativeParallaxAdElement) this.n;
        final WebView webView = new WebView(getContext()) { // from class: com.smartadserver.android.library.ui.SASAdView.13

            /* renamed from: a  reason: collision with root package name */
            int f5464a;
            int b;

            {
                this.f5464a = sASNativeParallaxAdElement.getCreativeWidth();
                this.b = sASNativeParallaxAdElement.getCreativeHeight();
            }

            @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
                if (this.f5464a > 0 && this.b > 0) {
                    i3 = (int) Math.round((View.MeasureSpec.getSize(i2) * this.b) / this.f5464a);
                } else {
                    int[] expandParentViewMaxSize = SASAdView.this.getExpandParentViewMaxSize();
                    if (expandParentViewMaxSize != null) {
                        i3 = expandParentViewMaxSize[1];
                    }
                }
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
            }
        };
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON);
        if (Build.VERSION.SDK_INT >= 17) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        settings.setDomStorageEnabled(true);
        settings.setSupportZoom(false);
        if (Build.VERSION.SDK_INT < 19) {
            settings.setSupportMultipleWindows(true);
        }
        webView.setScrollBarStyle(33554432);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setFocusable(false);
        webView.setFocusableInTouchMode(false);
        webView.setWebViewClient(new WebViewClient() { // from class: com.smartadserver.android.library.ui.SASAdView.14
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str2) {
                com.smartadserver.android.library.g.c.a(SASAdView.r, "shouldOverrideUrlLoading from parallax WebView: " + str2);
                SASAdView.this.a(str2);
                return true;
            }
        });
        Runnable runnable = new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.15
            @Override // java.lang.Runnable
            public void run() {
                try {
                    new URL(str);
                    webView.loadUrl(str);
                } catch (MalformedURLException e2) {
                    webView.loadDataWithBaseURL(SASAdView.this.n.getBaseUrl(), str, "text/html", "UTF-8", null);
                }
            }
        };
        if (sASNativeParallaxAdElement.isJavascriptAPIEnabled()) {
            com.smartadserver.android.library.g.c.a(webView, "sas={};sas.parallax={};sas.parallax.listeners={};sas.parallax.addEventListener=function(event,listener){var handlers=sas.parallax.listeners[event];if(handlers==null){sas.parallax.listeners[event]=[];handlers=sas.parallax.listeners[event]}for(var handler in handlers){if(listener==handler){return}}handlers.push(listener)};sas.parallax.removeEventListener=function(event,listener){var handlers=sas.parallax.listeners[event];if(handlers!=null){var i=0;while(i<handlers.length){if(handlers[i]==listener){handlers.splice(i,1)}else{i++}}}};sas.parallax.fireEvent=function(eventName,eventValue){var handlers=sas.parallax.listeners[eventName];if(handlers!=null){for(var i=0;i<handlers.length;i++){handlers[i](eventValue)}}};sas.parallax.setParallaxWindowRect=function(left,top,w,h){sas.parallax.parallaxWindowRect={x:left,y:top,width:w,height:h};sas.parallax.fireEvent(\"parallaxWindowRectChanged\",sas.parallax.parallaxWindowRect)};sas.parallax.setViewable=function(isViewable){if(isViewable!=sas.parallax.viewable){sas.parallax.viewable=isViewable;sas.parallax.fireEvent(\"viewabilityChanged\",sas.parallax.viewable)}};console.log(\"parallax API enabled\");", runnable);
        } else {
            a(runnable);
        }
        return webView;
    }

    @TargetApi(11)
    public void a(boolean z) {
        if (this.at != null) {
            if (z && (this.n instanceof SASNativeParallaxAdElement) && Build.VERSION.SDK_INT >= 11) {
                SASNativeParallaxAdElement sASNativeParallaxAdElement = (SASNativeParallaxAdElement) this.n;
                String parallaxImageUrl = sASNativeParallaxAdElement.getParallaxImageUrl();
                String parallaxHTMLUrl = sASNativeParallaxAdElement.getParallaxHTMLUrl();
                String parallaxHTMLScript = sASNativeParallaxAdElement.getParallaxHTMLScript();
                View[] viewArr = new View[1];
                if (parallaxImageUrl != null) {
                    viewArr[0] = c(parallaxImageUrl);
                } else if (parallaxHTMLUrl != null) {
                    viewArr[0] = d(parallaxHTMLUrl);
                } else if (parallaxHTMLScript != null) {
                    viewArr[0] = d(parallaxHTMLScript);
                }
                boolean isBorderEnabled = sASNativeParallaxAdElement.isBorderEnabled();
                int borderColor = sASNativeParallaxAdElement.getBorderColor();
                int backgroundColor = sASNativeParallaxAdElement.getBackgroundColor();
                int round = isBorderEnabled ? Math.round(sASNativeParallaxAdElement.getBorderSize() * this.p) : 0;
                String borderText = sASNativeParallaxAdElement.getBorderText();
                int borderFontSize = sASNativeParallaxAdElement.getBorderFontSize();
                int borderFontColor = sASNativeParallaxAdElement.getBorderFontColor();
                if (isBorderEnabled && borderText != null && borderText.trim().length() > 0) {
                    this.au.setVisibility(0);
                    this.au.setText(borderText);
                    this.au.setTextSize(1, borderFontSize);
                    this.au.setTextColor(borderFontColor);
                } else {
                    this.au.setVisibility(8);
                }
                this.at.setBackgroundColor(borderColor);
                int i2 = round / 2;
                this.at.setPadding(0, i2, 0, round);
                ((LinearLayout.LayoutParams) this.as.getLayoutParams()).setMargins(0, round - i2, 0, 0);
                this.as.setBackgroundColor(backgroundColor);
                this.as.removeAllViews();
                for (View view : viewArr) {
                    if (view != null) {
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        layoutParams.gravity = 1;
                        this.as.addView(view, layoutParams);
                    }
                }
                setScrollListenerEnabled(true);
                this.k.setVisibility(8);
                this.at.setVisibility(0);
                return;
            }
            setScrollListenerEnabled(false);
            this.at.setVisibility(8);
            if (this.as != null) {
                int childCount = this.as.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = this.as.getChildAt(i3);
                    if (childAt instanceof WebView) {
                        ((WebView) childAt).loadUrl("about:blank");
                    } else if (childAt instanceof ImageView) {
                        ((ImageView) childAt).setImageDrawable(null);
                    }
                }
            }
            this.as.removeAllViews();
        }
    }

    @TargetApi(11)
    private void C() {
        this.av = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.smartadserver.android.library.ui.SASAdView.16
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                int height;
                if (SASAdView.this.as != null && (SASAdView.this.n instanceof SASNativeParallaxAdElement)) {
                    int[] iArr = new int[2];
                    SASAdView.this.as.getLocationOnScreen(iArr);
                    int[] iArr2 = new int[2];
                    SASAdView.this.getExpandParentView().getLocationOnScreen(iArr2);
                    int[] neededPadding = SASAdView.this.getNeededPadding();
                    int measuredHeight = SASAdView.this.as.getMeasuredHeight();
                    int[] expandParentViewMaxSize = SASAdView.this.getExpandParentViewMaxSize();
                    int i2 = expandParentViewMaxSize != null ? expandParentViewMaxSize[1] : measuredHeight;
                    SASNativeParallaxAdElement sASNativeParallaxAdElement = (SASNativeParallaxAdElement) SASAdView.this.n;
                    int parallaxMode = sASNativeParallaxAdElement.getParallaxMode();
                    int childCount = SASAdView.this.as.getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        View childAt = SASAdView.this.as.getChildAt(i3);
                        int measuredHeight2 = childAt.getMeasuredHeight();
                        int i4 = 0;
                        int i5 = iArr[1] - (iArr2[1] + neededPadding[1]);
                        double d2 = i5 / (i2 - measuredHeight);
                        if (parallaxMode == 0) {
                            i4 = ((i2 - measuredHeight2) / 2) - i5;
                        } else if (parallaxMode == 1) {
                            if (d2 < 0.0d) {
                                i4 = -i5;
                            } else if (d2 > 1.0d) {
                                i4 = (-(measuredHeight2 - measuredHeight)) + (-(i5 - (i2 - measuredHeight)));
                            } else {
                                i4 = -((int) Math.round((measuredHeight2 - measuredHeight) * d2));
                            }
                        } else if (parallaxMode == 2) {
                            i4 = Math.min(0, (-(i5 - (i2 - measuredHeight))) - (measuredHeight2 - measuredHeight));
                        } else if (parallaxMode == 3) {
                            i4 = Math.max(measuredHeight - measuredHeight2, -i5);
                        }
                        childAt.setY(i4);
                        if (childAt instanceof WebView) {
                            childAt.invalidate();
                            if (measuredHeight2 > 0 && sASNativeParallaxAdElement.isJavascriptAPIEnabled()) {
                                com.smartadserver.android.library.g.c.a((WebView) childAt, "sas.parallax.setParallaxWindowRect(0," + (-Math.round(i4 / SASAdView.this.p)) + "," + Math.round(SASAdView.this.as.getMeasuredWidth() / SASAdView.this.p) + "," + Math.round(measuredHeight / SASAdView.this.p) + ");", (Runnable) null);
                            }
                        }
                    }
                } else if ((SASAdView.this.n instanceof SASNativeVideoAdElement) && !SASAdView.this.w) {
                    int i6 = com.smartadserver.android.library.g.c.i(SASAdView.this.getContext());
                    SASAdView.this.aB.getLocationOnScreen(SASAdView.this.aE);
                    SASAdView.this.ab.getLocationOnScreen(SASAdView.this.aC);
                    SASAdView.this.ai.getLocationOnScreen(SASAdView.this.aD);
                    int i7 = SASAdView.this.aC[1];
                    int height2 = SASAdView.this.aC[1] + SASAdView.this.ab.getHeight();
                    int i8 = SASAdView.this.aE[1];
                    int height3 = SASAdView.this.aE[1] + SASAdView.this.aB.getHeight();
                    int i9 = SASAdView.this.aD[1];
                    int height4 = SASAdView.this.aD[1] + SASAdView.this.ai.getHeight();
                    if (SASAdView.this.ab.isShown() && !SASAdView.this.ay) {
                        SASAdView.this.aw = i7 - i8;
                        SASAdView.this.ax = height3 - height2;
                    }
                    SASAdView.this.q = SASAdView.this.aw < 0 || (SASAdView.this.ax < 0 && SASAdView.this.az);
                    if (SASAdView.this.ay || !SASAdView.this.q || i6 != 1) {
                        if (SASAdView.this.ay && ((i9 > i8 && height4 < height3) || i6 == 0)) {
                            SASAdView.this.a(false, false);
                        }
                    } else {
                        SASAdView.this.a(true, false);
                    }
                    if (SASAdView.this.ay && SASAdView.this.aA > 0 && SASAdView.this.aA != (height = SASAdView.this.aB.getHeight() - SASAdView.this.ab.getHeight())) {
                        SASAdView.this.setY((SASAdView.this.getY() - SASAdView.this.aA) + height);
                        SASAdView.this.aA = height;
                    }
                }
            }
        };
    }

    public void setStickyModeAnchorView(ViewGroup viewGroup) {
        if (viewGroup != null) {
            this.aB = viewGroup;
        } else {
            this.aB = (ViewGroup) getRootContentView().findViewById(16908290);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        if (((SASNativeVideoAdElement) getCurrentAdElement()).isStickToTopSkippable()) {
            setCloseButtonAppearanceDelay(0);
            a(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASAdView.17
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ((SASNativeVideoAdElement) SASAdView.this.getCurrentAdElement()).setStickToTopEnabled(false);
                    SASAdView.this.b(true);
                }
            });
        }
    }

    public void b(boolean z) {
        setScrollListenerEnabled(false);
        a(false, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        int height;
        int height2 = this.aC[1] + this.ab.getHeight();
        int height3 = this.aE[1] + this.aB.getHeight();
        int height4 = this.aD[1] + this.ai.getHeight();
        if (z && !this.ay) {
            this.ay = true;
            ViewGroup viewGroup = (ViewGroup) getParent();
            int indexOfChild = viewGroup.indexOfChild(this);
            viewGroup.removeView(this);
            viewGroup.addView(this.ai, indexOfChild, getLayoutParams());
            if (this.ax < 0 && this.az) {
                this.aA = this.aB.getHeight() - this.ab.getHeight();
            } else {
                this.aA = 0;
            }
            setY(getY() + this.aA);
            this.aB.addView(this);
            D();
        } else if (!z && this.ay) {
            o();
            final int y = (int) getY();
            if (height2 == height3) {
                if (this.ai.isShown()) {
                    height = (y + height4) - height3;
                } else {
                    height = this.ab.getHeight() + y;
                }
            } else if (this.ai.isShown()) {
                height = (this.aD[1] + y) - this.aE[1];
            } else {
                height = y - this.ab.getHeight();
            }
            Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: com.smartadserver.android.library.ui.SASAdView.18
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ViewGroup viewGroup2 = (ViewGroup) SASAdView.this.ai.getParent();
                    int indexOfChild2 = viewGroup2.indexOfChild(SASAdView.this.ai);
                    viewGroup2.removeView(SASAdView.this.ai);
                    SASAdView.this.aB.removeView(SASAdView.this);
                    SASAdView.this.setY(y - SASAdView.this.aA);
                    SASAdView.this.aA = 0;
                    SASAdView.this.aw = Integer.MAX_VALUE;
                    SASAdView.this.ax = Integer.MAX_VALUE;
                    viewGroup2.addView(SASAdView.this, indexOfChild2);
                    SASAdView.this.ay = false;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }
            };
            if (z2) {
                ViewPropertyAnimator animate = animate();
                animate.setDuration(200L);
                animate.y(height);
                animate.setListener(animatorListener);
                animate.start();
                return;
            }
            animatorListener.onAnimationEnd(null);
        }
    }

    private void c(boolean z) {
        if (this.av != null) {
            getViewTreeObserver().removeOnScrollChangedListener(this.av);
            if (z) {
                getViewTreeObserver().addOnScrollChangedListener(this.av);
                this.av.onScrollChanged();
            }
        }
    }

    public View getLoaderView() {
        return this.A;
    }

    public void setLoaderView(View view) {
        this.A = view;
    }

    public FrameLayout getExpandParentContainer() {
        return this.C;
    }

    public void setExpandParentContainer(FrameLayout frameLayout) {
        this.C = frameLayout;
        post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.19
            @Override // java.lang.Runnable
            public void run() {
                SASAdView.this.a(false);
                SASAdView.this.a(true);
            }
        });
    }

    private void d(boolean z) {
        getMRAIDController().b();
        if (z && this.I != null) {
            this.I.cancel();
            this.I = null;
        }
        this.z = false;
        this.n = null;
        this.J = null;
        a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.20
            @Override // java.lang.Runnable
            public void run() {
                SASAdView.this.setMediationView(null);
                SASAdView.this.a(false);
                SASAdView.this.E();
                if (SASAdView.this.k != null) {
                    SASAdView.this.k.a();
                    SASAdView.this.k.setVisibility(0);
                    try {
                        Class.forName("android.webkit.WebView").getMethod("onResume", null).invoke(SASAdView.this.k.getChildAt(0), null);
                    } catch (Exception e2) {
                    }
                }
                SASAdView.this.a((SASPreviewHandlerActivity.PreviewConfig) null);
            }
        }, true);
        synchronized (this.Q) {
            this.Q.clear();
        }
        setScrollListenerEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        this.ab.setVisibility(8);
        this.ab.g();
    }

    public void d() {
        synchronized (this.N) {
            if (this.g != null) {
                this.g.post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.21
                    @Override // java.lang.Runnable
                    public void run() {
                        SASAdView.this.f.c();
                    }
                });
            }
        }
        d(true);
    }

    @TargetApi(19)
    public void b(final String str) {
        if (this.k != null && str != null) {
            a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.22
                @Override // java.lang.Runnable
                public void run() {
                    if (Build.VERSION.SDK_INT >= 19) {
                        SASAdView.this.k.a(str, (ValueCallback<String>) null);
                    } else {
                        SASAdView.this.k.a("javascript:" + str);
                    }
                }
            });
        }
    }

    protected void b(final Context context) {
        this.k = new com.smartadserver.android.library.ui.d(context) { // from class: com.smartadserver.android.library.ui.SASAdView.24
            @Override // com.smartadserver.android.library.ui.d
            public void setWebViewClient(WebViewClient webViewClient) {
                if (SASAdView.this.i == null) {
                    SASAdView.this.i = new com.smartadserver.android.library.controller.c();
                    SASAdView.this.i.f5403a = SASAdView.this;
                    super.setWebViewClient(SASAdView.this.i);
                }
                SASAdView.this.i.a(webViewClient);
            }

            @Override // com.smartadserver.android.library.ui.d
            public void setWebChromeClient(WebChromeClient webChromeClient) {
                if (SASAdView.this.j == null) {
                    SASAdView.this.j = new com.smartadserver.android.library.controller.b(context);
                    SASAdView.this.j.f5401a = SASAdView.this;
                    super.setWebChromeClient(SASAdView.this.j);
                }
                SASAdView.this.j.a(webChromeClient);
            }
        };
        this.k.setWebChromeClient(null);
        this.k.setWebViewClient(null);
        this.k.getSettings().setSupportZoom(false);
        this.k.setBackgroundColor(0);
        addView(this.k, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        if (this.k != null) {
            this.l.setInAppBrowserMode(false);
            this.l.a();
            this.l.setVisibility(8);
            this.k.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            getExpandParentView().invalidate();
        }
    }

    protected void c(Context context) {
        this.l = new com.smartadserver.android.library.ui.d(context);
        WebSettings settings = this.l.getSettings();
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        this.l.setCloseButtonOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASAdView.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASAdView.this.G();
            }
        });
        this.l.setVisibility(8);
        addView(this.l, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        if (!this.an && this.l != null && this.l.c()) {
            F();
            if (this.ak != null) {
                this.al.setLayoutParams(this.ak);
                return;
            }
            return;
        }
        m();
    }

    public void a(final Runnable runnable, boolean z) {
        if (com.smartadserver.android.library.g.c.d()) {
            runnable.run();
            return;
        }
        Runnable runnable2 = new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.26
            @Override // java.lang.Runnable
            public void run() {
                runnable.run();
                synchronized (this) {
                    notify();
                }
            }
        };
        synchronized (runnable2) {
            com.smartadserver.android.library.g.c.h().post(runnable2);
            if (z) {
                try {
                    runnable2.wait();
                } catch (InterruptedException e2) {
                }
            }
        }
    }

    public void a(Runnable runnable) {
        a(runnable, false);
    }

    public void o() {
        a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.27
            @Override // java.lang.Runnable
            public void run() {
                SASAdView.this.o.setCloseButtonVisibility(8);
            }
        });
        if (this.k != null) {
            this.k.setCloseButtonOnClickListener(null);
        }
        this.o.setCloseButtonOnClickListener(null);
    }

    public void a(final View.OnClickListener onClickListener) {
        a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.28
            @Override // java.lang.Runnable
            public void run() {
                if (SASAdView.this.n != null) {
                    SASAdView.this.o.setCloseButtonPosition(SASAdView.this.n.getCloseButtonPosition());
                }
                int closeButtonAppearanceDelay = SASAdView.this.getCloseButtonAppearanceDelay();
                SASAdView.this.o.a(-1, -1);
                SASAdView.this.o.a(0, closeButtonAppearanceDelay, SASAdView.this.t());
                if (SASAdView.this.k != null) {
                    SASAdView.this.k.setCloseButtonOnClickListener(onClickListener);
                }
                SASAdView.this.o.setCloseButtonOnClickListener(onClickListener);
            }
        });
    }

    public void b(final View.OnClickListener onClickListener) {
        a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.29
            @Override // java.lang.Runnable
            public void run() {
                if (SASAdView.this.n != null) {
                    SASAdView.this.o.setCloseButtonPosition(SASAdView.this.n.getCloseButtonPosition());
                }
                SASAdView.this.o.a(50, 50);
                SASAdView.this.o.setCloseButtonVisibility(0);
                if (SASAdView.this.k != null) {
                    SASAdView.this.k.setCloseButtonOnClickListener(onClickListener);
                }
                SASAdView.this.o.setCloseButtonOnClickListener(onClickListener);
            }
        });
    }

    public void b() {
        d();
        w();
        if (this.m != null) {
            this.m.c();
        }
        if (this.h != null) {
            this.h.e();
        }
        if (this.f != null) {
            this.f.a((Context) null);
        }
        getMRAIDController().close();
        if (this.k != null) {
            a(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.30
                @Override // java.lang.Runnable
                public void run() {
                    SASAdView.this.k.b();
                    SASAdView.this.l.b();
                }
            });
        }
        if (this.I != null) {
            this.I.cancel();
        }
        synchronized (this.N) {
            this.g = null;
            if (this.g != null) {
                this.M.quit();
            }
            this.M = null;
        }
        this.ab.f();
    }

    public void a(d dVar) {
        synchronized (this.D) {
            if (!this.D.contains(dVar) && dVar != null) {
                this.D.add(dVar);
            }
        }
    }

    public boolean b(d dVar) {
        boolean remove;
        synchronized (this.D) {
            remove = this.D.remove(dVar);
        }
        return remove;
    }

    public void a(int i2) {
        if (this.E) {
            i iVar = (i2 == 1 || i2 == 0 || i2 == 2 || i2 == 3) ? new i(i2) : null;
            if (iVar != null) {
                synchronized (this.D) {
                    Iterator<d> it = this.D.iterator();
                    while (it.hasNext()) {
                        it.next().onStateChanged(iVar);
                    }
                }
            }
        }
    }

    public void setEnableStateChangeEvent(boolean z) {
        this.E = z;
    }

    public boolean p() {
        return this.E;
    }

    public void setLocation(Location location) {
        if (location != null) {
            this.ao = new Location(location);
            getMRAIDController().e();
            return;
        }
        this.ao = null;
    }

    public Location getLocation() {
        if (this.ao == null) {
            return null;
        }
        return new Location(this.ao);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            getMRAIDController().c();
            getMRAIDController().a(getWidth(), getHeight());
        }
        if ((z || (this.n instanceof SASNativeParallaxAdElement)) && this.av != null) {
            this.av.onScrollChanged();
        }
    }

    public boolean q() {
        return this.z;
    }

    public void a(String str, String str2) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(str);
        a(str2, arrayList);
    }

    public void a(String str, ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        sb.append("if (typeof mraid != 'undefined') mraid.fire");
        sb.append(e(str));
        sb.append("Event(");
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                sb.append("\"");
                sb.append(it.next());
                sb.append("\",");
            }
            sb.deleteCharAt(sb.length() - 1);
        }
        sb.append(")");
        b(sb.toString());
    }

    private String e(String str) {
        if (str.length() > 0) {
            return str.substring(0, 1).toUpperCase() + str.substring(1, str.length());
        }
        return str;
    }

    /* loaded from: classes3.dex */
    public class i {
        private int b;

        private i(int i) {
            this.b = i;
        }

        public int a() {
            return this.b;
        }
    }

    public void b(int i2) {
        synchronized (this.S) {
            Iterator<e> it = this.S.iterator();
            while (it.hasNext()) {
                it.next().a(i2);
            }
        }
    }

    public void a(com.smartadserver.android.library.model.b bVar) {
        synchronized (this.T) {
            Iterator<c> it = this.T.iterator();
            while (it.hasNext()) {
                it.next().a(bVar);
            }
        }
    }

    public boolean r() {
        return this.o.getCloseButtonVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        if ((getContext() instanceof Activity) && this.x != -10) {
            com.smartadserver.android.library.g.c.a(r, "restore rotation mode");
            ((Activity) getContext()).setRequestedOrientation(this.x);
            this.x = -10;
        }
    }

    public void setMessageHandler(b bVar) {
        this.F = bVar;
    }

    public b getMessageHandler() {
        return this.F;
    }

    public Bitmap s() {
        h hVar = new h();
        a((Runnable) hVar, true);
        return hVar.b;
    }

    /* loaded from: classes3.dex */
    private class h implements Runnable {
        private Bitmap b;

        private h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                FrameLayout expandParentView = SASAdView.this.getExpandParentView();
                int[] neededPadding = SASAdView.this.getNeededPadding();
                Bitmap createBitmap = Bitmap.createBitmap(expandParentView.getMeasuredWidth() - neededPadding[2], expandParentView.getMeasuredHeight() - (neededPadding[1] + neededPadding[3]), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                canvas.translate(BitmapDescriptorFactory.HUE_RED, -neededPadding[1]);
                int visibility = SASAdView.this.getVisibility();
                View loaderView = SASAdView.this.getLoaderView();
                int i = 0;
                SASAdView.this.setVisibility(4);
                if (loaderView != null) {
                    i = loaderView.getVisibility();
                    loaderView.setVisibility(4);
                }
                expandParentView.draw(canvas);
                SASAdView.this.setVisibility(visibility);
                if (loaderView != null) {
                    loaderView.setVisibility(i);
                }
                this.b = createBitmap;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public com.smartadserver.android.library.controller.mraid.a getMRAIDController() {
        return this.h.f5393a;
    }

    public void setClickableAreas(String str) {
        this.J = str;
    }

    private float getTouchSlopSize() {
        if (this.aF < BitmapDescriptorFactory.HUE_RED) {
            this.aF = getResources().getDisplayMetrics().density * 25.0f;
        }
        return this.aF;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int[] a2;
        boolean z2 = false;
        if (this.n != null && this.n.isTransferTouchEvents()) {
            if (!a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                int i2 = a(motionEvent, this.J)[0];
                z = i2 != 1;
                if (i2 == 2) {
                    final String str = "(function(e){function t(e){var t=[];var n=document.getElementsByTagName('*');for(var r=0;r<n.length;r++){if(n[r].getAttribute(e)){t.push(n[r])}}return t}function s(e){var t=document.createEvent('MouseEvents');t.initMouseEvent('click',true,true,window,1,0,0,0,0,false,false,false,false,0,null);e.dispatchEvent(t)}var n=t('data-sas-touch-mode');var r=[];for(i=0;i<n.length;i++){r.push(n[i])}if(parseInt(r[e].getAttribute('data-sas-touch-mode'))==2){s(r[e])}})(" + a2[1] + ")";
                    postDelayed(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.31
                        @Override // java.lang.Runnable
                        public void run() {
                            SASAdView.this.b(str);
                        }
                    }, 50L);
                }
            } else {
                z = false;
            }
            z2 = z;
        } else if ((this instanceof SASInterstitialView) && (getCurrentAdElement() instanceof SASNativeVideoAdElement)) {
            switch (motionEvent.getAction()) {
                case 0:
                    this.aJ = getCurrentAdElement().isSwipeToClose() && !((SASNativeVideoAdElement) getCurrentAdElement()).isVideo360Mode() && r();
                    this.aH = true;
                    this.aI = false;
                    this.aG = getY() - motionEvent.getRawY();
                    break;
                case 1:
                    if (this.aH) {
                        if (this.aJ) {
                            final float f2 = getNeededPadding()[1];
                            if (Math.abs(motionEvent.getRawY() + this.aG) / getHeight() > 0.3f) {
                                animate().y(motionEvent.getRawY() + this.aG > BitmapDescriptorFactory.HUE_RED ? getHeight() : -getHeight()).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).withEndAction(new Runnable() { // from class: com.smartadserver.android.library.ui.SASAdView.32
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SASAdView.this.animate().y(f2).alpha(1.0f).setDuration(0L).start();
                                        SASAdView.this.getMRAIDController().close();
                                    }
                                }).start();
                            } else {
                                animate().y(f2).alpha(1.0f).setDuration(200L).start();
                            }
                        }
                        z2 = this.aI;
                        break;
                    }
                    break;
                case 2:
                    if (this.aH) {
                        if (Math.abs(motionEvent.getRawY() + this.aG) > getTouchSlopSize()) {
                            this.aI = true;
                        }
                        float abs = Math.abs(motionEvent.getRawY() + this.aG) / getHeight();
                        float f3 = 1.0f - (abs / ((1.0f - abs) + 1.0f));
                        if (this.aJ) {
                            animate().y(motionEvent.getRawY() + this.aG).alpha(f3).setDuration(0L).start();
                            break;
                        }
                    }
                    break;
            }
        }
        com.smartadserver.android.library.g.c.a(r, "onInterceptTouchEvent (" + z2 + ") x:" + motionEvent.getX() + " y:" + motionEvent.getY());
        return z2;
    }

    private int[] a(MotionEvent motionEvent, String str) {
        int[] iArr = {0, -1};
        if (str != null && str.length() > 0) {
            String[] split = str.split(";");
            Rect[] rectArr = new Rect[split.length];
            int[] iArr2 = new int[split.length];
            for (int i2 = 0; i2 < rectArr.length; i2++) {
                String[] split2 = split[i2].split(",");
                iArr2[i2] = Integer.parseInt(split2[0]);
                rectArr[i2] = Rect.unflattenFromString(split2[1]);
            }
            if (rectArr != null) {
                int x = (int) ((motionEvent.getX() - 0) / this.p);
                int y = (int) ((motionEvent.getY() - 0) / this.p);
                int i3 = 0;
                while (true) {
                    if (i3 >= rectArr.length) {
                        break;
                    }
                    Rect rect = rectArr[i3];
                    if (rect == null || !rect.contains(x, y)) {
                        i3++;
                    } else {
                        iArr[0] = iArr2[i3];
                        iArr[1] = i3;
                        break;
                    }
                }
            }
        }
        return iArr;
    }

    public long getLastCallTimestamp() {
        return this.f.a();
    }

    public int getCloseButtonAppearanceDelay() {
        return this.K;
    }

    public void setCloseButtonAppearanceDelay(int i2) {
        this.K = Math.max(i2, 200);
    }

    public void setDisplayCloseAppearanceCountDown(boolean z) {
        this.L = z;
    }

    public boolean t() {
        return this.L;
    }

    @Override // android.view.View
    public boolean post(Runnable runnable) {
        return com.smartadserver.android.library.g.c.h().post(runnable);
    }

    @Override // android.view.View
    public boolean postDelayed(Runnable runnable, long j) {
        return com.smartadserver.android.library.g.c.h().postDelayed(runnable, j);
    }

    public double getVisibilityPercentage() {
        return this.O;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double e() {
        if (!isShown()) {
            return 0.0d;
        }
        Rect rect = new Rect();
        if (!getGlobalVisibleRect(rect)) {
            return 0.0d;
        }
        Rect currentBounds = getCurrentBounds();
        return Math.abs(rect.height() * rect.width()) / Math.abs(currentBounds.height() * currentBounds.width());
    }

    @Override // com.smartadserver.android.library.ui.c.a
    public void updateVisibilityPercentage() {
        boolean z = false;
        this.O = e();
        com.smartadserver.android.library.ui.c.a(this.Q, this.O, false);
        if (this.O > 0.5d) {
            z = true;
        }
        getMRAIDController().b(z);
        this.o.a(z);
        if (this.ab != null) {
            this.ab.setViewable(z);
        }
        f("sas.parallax.setViewable(" + z + ");");
    }

    private void f(String str) {
        if (this.as != null && (this.n instanceof SASNativeParallaxAdElement) && ((SASNativeParallaxAdElement) this.n).isJavascriptAPIEnabled()) {
            int childCount = this.as.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.as.getChildAt(i2);
                if (childAt instanceof WebView) {
                    com.smartadserver.android.library.g.c.a((WebView) childAt, str, (Runnable) null);
                }
            }
        }
    }

    public void a(String[] strArr) {
        synchronized (this.P) {
            this.P.addAll(Arrays.asList(strArr));
            I();
        }
    }

    private void I() {
        synchronized (this.P) {
            if (this.P.size() > 0) {
                Iterator<String> it = this.P.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (next.length() > 0) {
                        this.e.a(next, true);
                    }
                }
                this.P.clear();
            }
        }
    }

    public void a(com.smartadserver.android.library.model.d[] dVarArr) {
        synchronized (this.Q) {
            this.Q.addAll(Arrays.asList(dVarArr));
        }
    }

    public void u() {
        com.smartadserver.android.library.ui.c.a(this.Q, 1.0d, true);
    }

    public boolean a(int i2, int i3) {
        if (this.o.getCloseButtonVisibility() != 0) {
            return false;
        }
        Rect rect = new Rect();
        this.o.getHitRect(rect);
        return rect.contains(i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int c(int i2) {
        int i3;
        int i4;
        if (this.n == null) {
            return -1;
        }
        int portraitWidth = this.n.getPortraitWidth();
        int portraitHeight = this.n.getPortraitHeight();
        if (com.smartadserver.android.library.g.c.i(getContext()) == 0) {
            int landscapeWidth = this.n.getLandscapeWidth();
            i3 = this.n.getLandscapeHeight();
            if (landscapeWidth > 0) {
                i4 = landscapeWidth;
                if (i4 > 0) {
                    return -1;
                }
                double d2 = i3 / i4;
                if (i2 < 0) {
                    return -1;
                }
                return (int) Math.round(i2 * d2);
            }
        }
        i3 = portraitHeight;
        i4 = portraitWidth;
        if (i4 > 0) {
        }
    }

    public int getOptimalHeight() {
        int i2;
        if (getWindowToken() != null) {
            i2 = getMeasuredWidth();
        } else {
            i2 = getLayoutParams().width;
            if (i2 == -1) {
                Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                if (Build.VERSION.SDK_INT >= 17) {
                    defaultDisplay.getRealMetrics(displayMetrics);
                } else {
                    defaultDisplay.getMetrics(displayMetrics);
                }
                i2 = displayMetrics.widthPixels;
            }
        }
        return c(i2);
    }

    public View getExpandPlaceholderView() {
        return this.ah;
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (this.ai.getParent() != null) {
            ViewGroup.LayoutParams layoutParams2 = this.ai.getLayoutParams();
            layoutParams2.width = layoutParams.width;
            layoutParams2.height = layoutParams.height;
            this.ai.setLayoutParams(layoutParams2);
        }
    }
}
