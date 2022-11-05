package com.apprupt.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.apprupt.sdk.CvMediator;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.mediation.AdWrapper;
import com.apprupt.sdk.mediation.Adapter;
import com.apprupt.sdk.mediation.InlineAdWrapper;
import com.apprupt.sdk.mediation.Mediator;
import com.apprupt.sdk.mediation.Size;
import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class AdView extends RelativeLayout {
    private static volatile int y = 0;
    private final Logger.log A;
    private final Timeout B;

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f1681a;
    private final Logger.log b;
    private CvMediator c;
    private boolean d;
    private int e;
    private HwaStatus f;
    private String g;
    private String h;
    private String i;
    private int j;
    private CvAnimationType k;
    private boolean l;
    private InlineAdWrapper m;
    private Listener n;
    private Timer o;
    private boolean p;
    private boolean q;
    private boolean r;
    private final Placeholder s;
    private Timer t;
    private boolean u;
    private final int[] v;
    private boolean w;
    private final ArrayList<Runnable> x;
    private final int z;

    /* loaded from: classes.dex */
    public class Dimensions {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum HwaStatus {
        CHECK,
        FORCE_TRUE,
        FORCE_FALSE
    }

    /* loaded from: classes.dex */
    public interface Listener {
        void onAdLoaded(AdView adView);

        void onAdLoadingFailure(String str, AdView adView);

        void onFirstTap(AdView adView);
    }

    public AdView(Context context) {
        this(context, null, true, true);
    }

    public AdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, true, true);
    }

    AdView(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        super(new CvContext(context), attributeSet);
        this.f1681a = false;
        this.b = Logger.a("AdView");
        this.c = null;
        this.d = true;
        this.e = 75;
        this.f = HwaStatus.CHECK;
        this.g = null;
        this.h = "";
        this.i = "";
        this.j = 0;
        this.k = null;
        this.l = true;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = true;
        this.q = false;
        this.r = true;
        this.t = null;
        this.u = false;
        this.v = new int[]{-9999, -9999};
        this.w = false;
        this.x = new ArrayList<>();
        int i = y;
        y = i + 1;
        this.z = i;
        this.A = Logger.a("Lifecycle.AdView" + this.z);
        this.B = new Timeout(new Runnable() { // from class: com.apprupt.sdk.AdView.1
            @Override // java.lang.Runnable
            public void run() {
                if (AdView.this.c != null) {
                    AdView.this.a(new Runnable() { // from class: com.apprupt.sdk.AdView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Listener listener = AdView.this.n;
                            if (listener != null) {
                                listener.onAdLoadingFailure("Timeout", AdView.this);
                            }
                        }
                    });
                }
            }
        });
        c();
        if (isInEditMode()) {
            this.s = null;
            a(attributeSet);
            return;
        }
        setAttributes(attributeSet);
        setDescendantFocusability(393216);
        setFocusable(false);
        setFocusableInTouchMode(false);
        setBackgroundColor(0);
        this.s = new Placeholder();
        this.s.b(this.e);
        if (z2) {
            this.m = this.s;
            addView(this.m.c());
        }
        if (this.p && this.g != null && Integer.valueOf(this.g).intValue() > 0) {
            a();
        }
    }

    @TargetApi(11)
    private void c() {
        if (Build.VERSION.SDK_INT >= 11 && Build.VERSION.SDK_INT < 16) {
            setLayerType(1, null);
        }
    }

    private void setAttributes(AttributeSet attributeSet) {
        if (attributeSet != null) {
            setAdSpaceId(attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res-auto", "ad_space_id", 0));
            setKeywords(attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "keywords"));
            setCategories(attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "categories"));
            this.d = attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "placeholder_view_visible", this.d);
            setPlaceholderSize(attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res-auto", "placeholder_size", this.e));
            setCleanOnDisappear(attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "clean_on_disappear", this.q));
            setRefreshInterval(attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res-auto", "refresh_interval", 0));
            this.p = attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "load_immediately", this.p);
            setVisibilityTrackingEnabled(attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "visibility_tracking", this.r));
            String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "animation_type");
            if (attributeValue != null && attributeValue.length() > 0) {
                if (attributeValue.equals("none")) {
                    this.k = CvAnimationType.NONE;
                } else if (attributeValue.equals("fade")) {
                    this.k = CvAnimationType.FADE;
                } else if (attributeValue.equals("left_right")) {
                    this.k = CvAnimationType.LEFT_RIGHT;
                } else if (attributeValue.equals("right_left")) {
                    this.k = CvAnimationType.RIGHT_LEFT;
                } else if (attributeValue.equals("top_bottom")) {
                    this.k = CvAnimationType.TOP_BOTTOM;
                } else if (attributeValue.equals("bottom_top")) {
                    this.k = CvAnimationType.BOTTOM_TOP;
                } else {
                    throw new IllegalArgumentException("Unknown animation type: " + attributeValue);
                }
            }
        }
    }

    private void a(AttributeSet attributeSet) {
        if (attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "placeholder_view_visible", this.d) || attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "preview_in_edit_mode", true)) {
            String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "background_color");
            if (attributeValue == null) {
                attributeValue = "yellow";
            }
            setBackgroundColor(Color.parseColor(attributeValue));
            float attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res-auto", "placeholder_size", this.e);
            int attributeIntValue2 = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res-auto", "ad_space_id", 0);
            String format = attributeIntValue2 > 0 ? String.format("AdView #%d", Integer.valueOf(attributeIntValue2)) : "AdView";
            Context context = getContext();
            RelativeLayout relativeLayout = new RelativeLayout(context);
            relativeLayout.setBackgroundColor(-256);
            float f = context.getApplicationContext().getResources().getDisplayMetrics().densityDpi / 160.0f;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (320.0f * f), (int) (attributeIntValue * f));
            layoutParams.addRule(13);
            relativeLayout.setLayoutParams(layoutParams);
            addView(relativeLayout);
            TextView textView = new TextView(context);
            textView.setText(format);
            textView.setTextSize(10.0f);
            textView.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            if (Build.VERSION.SDK_INT >= 17) {
                textView.setTextAlignment(4);
            }
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(13);
            textView.setLayoutParams(layoutParams2);
            relativeLayout.addView(textView);
        }
    }

    public void setPlaceholderSize(int i) {
        if (i <= 0) {
            i = 50;
        }
        this.e = i;
    }

    public void setCleanOnDisappear(boolean z) {
        this.q = z;
    }

    public void setLoadImmediately(boolean z) {
        this.p = z;
    }

    public void setVisibilityTrackingEnabled(boolean z) {
        this.r = z;
    }

    public void setAdSpaceId(int i) {
        synchronized (this) {
            this.g = i <= 0 ? null : String.valueOf(i);
        }
    }

    public int getAdSpaceId() {
        int intValue;
        synchronized (this) {
            intValue = (this.g == null || this.g.length() <= 0) ? 0 : Integer.valueOf(this.g).intValue();
        }
        return intValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.t != null) {
            this.t.cancel();
            this.t.purge();
            this.t = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A.a("Attached to window");
        CvViewHelper.a(new AnonymousClass2(), true);
    }

    /* renamed from: com.apprupt.sdk.AdView$2  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdView.this.u = true;
            AdView.this.d();
            AdView.this.t = new Timer();
            AdView.this.t.scheduleAtFixedRate(new TimerTask() { // from class: com.apprupt.sdk.AdView.2.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.e();
                        }
                    }, true);
                }
            }, 0L, 300L);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A.a("Detached from window");
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.3
            @Override // java.lang.Runnable
            public void run() {
                AdView.this.u = false;
                AdView.this.d();
                AdView.this.e();
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0064, code lost:
        if (r8.v[1] > com.apprupt.sdk.CvViewHelper.f1906a.y) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006a, code lost:
        if (android.graphics.Rect.intersects(r4, r5) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        if (r3 != 0) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void e() {
        boolean z = true;
        if (this.u && isShown()) {
            int i = this.v[0];
            int i2 = this.v[1];
            int width = getWidth();
            int height = getHeight();
            getLocationOnScreen(this.v);
            CvViewHelper.b(getContext());
            Rect rect = new Rect(0, 0, CvViewHelper.f1906a.x, CvViewHelper.f1906a.y);
            Rect rect2 = new Rect(this.v[0], this.v[1], width, height);
            if (width != 0) {
            }
            if (this.v[0] >= 0) {
                if (this.v[0] <= CvViewHelper.f1906a.x) {
                    if (this.v[1] >= 0) {
                    }
                }
            }
        }
        z = false;
        if (this.w != z) {
            this.w = z;
            if (z) {
                while (this.x.size() > 0) {
                    this.x.remove(0).run();
                }
                if (!this.r || !this.p || this.c != null) {
                    return;
                }
                if ((this.m == null || this.m.equals(this.s)) && this.g != null) {
                    a();
                }
            } else if (this.q && this.m != null && !this.m.a()) {
                a(new Runnable() { // from class: com.apprupt.sdk.AdView.4
                    @Override // java.lang.Runnable
                    public void run() {
                        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (AdView.this.d) {
                                    AdView.this.m = AdView.this.s;
                                    AdView.this.addView(AdView.this.m.c());
                                }
                            }
                        }, true);
                    }
                });
            }
        }
    }

    public void setCategories(String str) {
        if (str == null) {
            str = "";
        }
        this.h = str;
    }

    public void setKeywords(String str) {
        if (str == null) {
            str = "";
        }
        this.i = str;
    }

    public void setAnimationType(CvAnimationType cvAnimationType) {
        this.k = cvAnimationType;
    }

    public void setRefreshInterval(int i) {
        if (i <= 0) {
            i = i < 0 ? -1 : 0;
        } else if (i < 10) {
            i = 10;
        }
        this.j = i;
    }

    public String getCategories() {
        try {
            return URLEncoder.encode(this.h, AudienceNetworkActivity.WEBVIEW_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    public String getKeywords() {
        try {
            return URLEncoder.encode(this.i, AudienceNetworkActivity.WEBVIEW_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    private CvAnimationType getAnimationType() {
        return this.k == null ? CvSDK.e() : this.k;
    }

    private int getRefreshInterval() {
        return this.j == -1 ? CvSDK.f() * 1000 : this.j * 1000;
    }

    void setHwaStatus(HwaStatus hwaStatus) {
        synchronized (this) {
            this.f = hwaStatus;
        }
    }

    private boolean f() {
        synchronized (this) {
            if (this.f == HwaStatus.FORCE_TRUE) {
                return true;
            }
            if (this.f != HwaStatus.FORCE_FALSE) {
                return CvViewHelper.a(this);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CvContentOptions getContentOptions() {
        boolean f = f();
        return new CvContentOptions(this.g, getKeywords(), getCategories(), false, CvAdColony.b().a(this.g, f), f);
    }

    public void setListener(final Listener listener) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.5
            @Override // java.lang.Runnable
            public void run() {
                AdView.this.n = listener;
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apprupt.sdk.AdView$6  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass6 implements Runnable {
        AnonymousClass6() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AdView.this.m == null || !AdView.this.m.a()) {
                if (AdView.this.c == null) {
                    AdView.this.g();
                    AdView.this.f1681a = false;
                    AdView.this.B.a(15000L);
                    AdView.this.c = CvSDK.c.a(((CvContext) AdView.this.getContext()).getBaseContext(), AdView.this.getContentOptions(), new CvMediator.Completion() { // from class: com.apprupt.sdk.AdView.6.1
                        @Override // com.apprupt.sdk.CvMediator.Completion
                        public void a(final String str) {
                            AdView.this.B.a();
                            AdView.this.A.a("Ad loading error:", str);
                            CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.6.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdView.this.a(str);
                                }
                            }, true);
                        }

                        @Override // com.apprupt.sdk.CvMediator.Completion
                        public void a(final AdWrapper adWrapper) {
                            AdView.this.B.a();
                            AdView.this.A.a("Ad loaded");
                            CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.6.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdView.this.a((InlineAdWrapper) adWrapper);
                                }
                            }, true);
                        }
                    }, new InlineAdWrapper.Listener() { // from class: com.apprupt.sdk.AdView.6.2
                        @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                        public void a() {
                            AdView.this.a(new Runnable() { // from class: com.apprupt.sdk.AdView.6.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdView.this.a();
                                }
                            });
                        }

                        @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                        public void b() {
                            AdView.this.b();
                        }

                        @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                        public void c() {
                            if (AdView.this.n != null) {
                                AdView.this.n.onFirstTap(AdView.this);
                            }
                        }
                    });
                } else if (AdView.this.n != null) {
                    AdView.this.n.onAdLoadingFailure("Ad loading in progress.", AdView.this);
                }
            } else if (AdView.this.n != null) {
                AdView.this.n.onAdLoadingFailure("Currently displayed ad is busy - AdView loading canceled", AdView.this);
            }
        }
    }

    public void a() {
        this.A.a("Load ad");
        CvViewHelper.a(new AnonymousClass6(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.n != null) {
            this.n.onAdLoadingFailure(str, this);
        }
        this.c = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apprupt.sdk.AdView$7  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass7 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InlineAdWrapper f1702a;

        AnonymousClass7(InlineAdWrapper inlineAdWrapper) {
            this.f1702a = inlineAdWrapper;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdView.this.B.a(15000L);
            this.f1702a.a(new Runnable() { // from class: com.apprupt.sdk.AdView.7.1
                @Override // java.lang.Runnable
                public void run() {
                    AdView.this.B.a();
                    CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.7.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AnonymousClass7.this.f1702a.e()) {
                                AdView.this.a(AnonymousClass7.this.f1702a.f());
                            } else {
                                AdView.this.b(AnonymousClass7.this.f1702a);
                            }
                        }
                    }, true);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(InlineAdWrapper inlineAdWrapper) {
        if (this.m != null) {
            this.m.b();
        }
        AnonymousClass7 anonymousClass7 = new AnonymousClass7(inlineAdWrapper);
        if (this.w || !this.r) {
            anonymousClass7.run();
        } else {
            this.x.add(anonymousClass7);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(InlineAdWrapper inlineAdWrapper) {
        CvAnimationType animationType = getAnimationType();
        if (this.m != null) {
            Animation b = animationType.b();
            final View c = this.m.c();
            final InlineAdWrapper inlineAdWrapper2 = this.m;
            if (b != null) {
                new Handler().postDelayed(new Runnable() { // from class: com.apprupt.sdk.AdView.8
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            AdView.this.removeView(c);
                            inlineAdWrapper2.b();
                        } catch (Exception e) {
                        }
                    }
                }, b.getDuration());
                c.setAnimation(b);
                c.startAnimation(b);
            } else {
                try {
                    removeView(c);
                    inlineAdWrapper2.b();
                } catch (Exception e) {
                }
            }
        }
        this.m = inlineAdWrapper;
        Animation a2 = animationType.a();
        View c2 = inlineAdWrapper.c();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        c2.setLayoutParams(layoutParams);
        addView(c2);
        if (a2 == null) {
            i();
            return;
        }
        new Handler().postDelayed(new Runnable() { // from class: com.apprupt.sdk.AdView.9
            @Override // java.lang.Runnable
            public void run() {
                AdView.this.i();
            }
        }, a2.getDuration());
        c2.setAnimation(a2);
        c2.startAnimation(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (AdView.this.o != null) {
                        AdView.this.o.cancel();
                        AdView.this.o.purge();
                        AdView.this.o = null;
                    }
                } catch (Exception e) {
                }
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        long refreshInterval = getRefreshInterval();
        if (refreshInterval > 0) {
            CvViewHelper.a(new AnonymousClass11(refreshInterval), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apprupt.sdk.AdView$11  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass11 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f1685a;

        AnonymousClass11(long j) {
            this.f1685a = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdView.this.g();
            AdView.this.o = new Timer();
            AdView.this.o.schedule(new TimerTask() { // from class: com.apprupt.sdk.AdView.11.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.11.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.o = null;
                            if (!AdView.this.f1681a && AdView.this.c == null) {
                                if (AdView.this.m != null && AdView.this.m.a()) {
                                    AdView.this.h();
                                } else {
                                    AdView.this.a();
                                }
                            }
                        }
                    }, true);
                }
            }, this.f1685a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.c = null;
        if (this.n != null) {
            this.n.onAdLoaded(this);
        }
        h();
    }

    public void b() {
        a((Runnable) null);
        this.f1681a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Runnable runnable) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.AdView.12
            @Override // java.lang.Runnable
            public void run() {
                AdView.this.g();
                try {
                    if (AdView.this.c != null) {
                        AdView.this.c.f();
                    }
                    AdView.this.c = null;
                    if (AdView.this.m != null) {
                        AdView.this.removeView(AdView.this.m.c());
                        AdView.this.m.b();
                    }
                } catch (Exception e) {
                }
                if (runnable != null) {
                    runnable.run();
                }
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PlaceholderView extends View {

        /* renamed from: a  reason: collision with root package name */
        public Size f1709a;

        public PlaceholderView(Context context) {
            super(context);
            this.f1709a = new Size(4, 320, 50);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            Size.Computed a2 = this.f1709a.a(getContext(), View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2), false);
            setMeasuredDimension(a2.f1998a, a2.b);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = a2.f1998a;
            layoutParams.height = a2.b;
            setLayoutParams(layoutParams);
            super.onMeasure(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class Placeholder implements InlineAdWrapper {
        private final PlaceholderView b;
        private Size c;

        private Placeholder() {
            this.b = new PlaceholderView(AdView.this.getContext());
            a(new Size(4, 320, 50));
        }

        @Override // com.apprupt.sdk.mediation.InlineAdWrapper
        public boolean a() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i) {
            a(new Size(this.c.f1997a, this.c.b, i));
        }

        private void a(Size size) {
            this.c = size;
            this.b.f1709a = size;
        }

        @Override // com.apprupt.sdk.mediation.InlineAdWrapper
        public void a(Runnable runnable) {
            runnable.run();
        }

        @Override // com.apprupt.sdk.mediation.InlineAdWrapper
        public void b() {
        }

        @Override // com.apprupt.sdk.mediation.InlineAdWrapper
        public View c() {
            return this.b;
        }

        @Override // com.apprupt.sdk.mediation.InlineAdWrapper
        public InlineAdWrapper.Listener d() {
            return null;
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper
        public boolean e() {
            return false;
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper
        public String f() {
            return null;
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper
        public boolean g() {
            return false;
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper
        public String h() {
            return null;
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper
        public Adapter i() {
            return null;
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper
        public void a(boolean z) {
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper
        public void a(int i) {
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper
        public boolean j() {
            return false;
        }

        @Override // com.apprupt.sdk.mediation.AdWrapper
        public void a(Mediator mediator) {
        }
    }
}
