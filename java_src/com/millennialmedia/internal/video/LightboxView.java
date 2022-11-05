package com.millennialmedia.internal.video;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.millennialmedia.MMLog;
import com.millennialmedia.R;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.adcontrollers.LightboxController;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.MMVideoView;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes3.dex */
public class LightboxView extends RelativeLayout implements View.OnTouchListener, MMVideoView.MMVideoViewListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4225a = LightboxView.class.getSimpleName();
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private volatile int E;
    private volatile boolean F;
    private volatile boolean G;
    private volatile boolean H;
    private FrameLayout b;
    private MMWebView c;
    private ImageView d;
    private MMVideoView e;
    private ImageView f;
    private ImageView g;
    private LightboxController.LightboxAd h;
    private LightboxViewListener i;
    private float j;
    private float k;
    private float l;
    private float m;
    private WindowManager n;
    private int o;
    private int p;
    private int q;
    private int r;
    private float s;
    private int t;
    private int u;
    private ViewUtils.ViewabilityWatcher v;
    private boolean w;
    private ThreadUtils.ScheduledRunnable x;
    private boolean y;
    private boolean z;

    /* loaded from: classes3.dex */
    public interface LightboxViewListener {
        void onAdLeftApplication();

        void onClicked();

        void onCollapsed();

        void onExpanded();

        void onFailed();

        void onPrepared();

        void onReadyToStart();
    }

    /* loaded from: classes3.dex */
    static class MMVideoViewViewabilityListener implements ViewUtils.ViewabilityListener {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<LightboxView> f4244a;

        MMVideoViewViewabilityListener(LightboxView lightboxView) {
            this.f4244a = new WeakReference<>(lightboxView);
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(View view, boolean z) {
            LightboxView lightboxView = this.f4244a.get();
            if (lightboxView != null && !lightboxView.G) {
                if (z) {
                    lightboxView.e.start();
                } else {
                    lightboxView.e.pause();
                }
            }
        }
    }

    public LightboxView(Context context, final LightboxController.LightboxAd lightboxAd, LightboxViewListener lightboxViewListener) {
        super(context);
        this.w = false;
        this.x = null;
        this.y = false;
        this.z = false;
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = 0;
        this.F = false;
        this.G = false;
        this.H = false;
        this.n = (WindowManager) context.getSystemService("window");
        getDisplaySize();
        Resources resources = getResources();
        this.o = resources.getDimensionPixelSize(R.dimen.mmadsdk_lightbox_width);
        this.p = resources.getDimensionPixelSize(R.dimen.mmadsdk_lightbox_height);
        this.r = resources.getDimensionPixelSize(R.dimen.mmadsdk_lightbox_bottom_margin);
        this.q = resources.getDimensionPixelSize(R.dimen.mmadsdk_lightbox_right_margin);
        this.t = resources.getDimensionPixelSize(R.dimen.mmadsdk_lightbox_top_margin);
        this.u = resources.getDimensionPixelSize(R.dimen.mmadsdk_lightbox_fullscreen_companion_top_margin);
        setBackgroundColor(resources.getColor(17170445));
        setOnTouchListener(this);
        this.i = lightboxViewListener;
        this.h = lightboxAd;
        this.e = new MMVideoView(context, false, true, null, this);
        this.e.setId(R.id.mmadsdk_light_box_video_view);
        this.e.setVideoURI(Uri.parse(lightboxAd.video.uri));
        this.e.setBackgroundColor(resources.getColor(17170444));
        this.g = new ImageView(context);
        this.g.setVisibility(8);
        this.g.setBackgroundColor(0);
        this.g.setImageDrawable(getResources().getDrawable(R.drawable.mmadsdk_lightbox_down));
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.LightboxView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LightboxView.this.b();
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.mmadsdk_lightbox_minimize_button_width), getResources().getDimensionPixelSize(R.dimen.mmadsdk_lightbox_minimize_button_height));
        layoutParams.topMargin = getResources().getDimensionPixelSize(R.dimen.mmadsdk_lightbox_minimize_button_top_margin);
        layoutParams.rightMargin = getResources().getDimensionPixelSize(R.dimen.mmadsdk_lightbox_minimize_button_right_margin);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        this.e.addView(this.g, layoutParams);
        this.f = new ImageView(context);
        this.f.setVisibility(8);
        this.f.setBackgroundColor(0);
        this.f.setImageDrawable(getResources().getDrawable(R.drawable.mmadsdk_lightbox_replay));
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.LightboxView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LightboxView.this.G = false;
                LightboxView.this.f.setVisibility(8);
                LightboxView.this.e.restart();
                if (LightboxView.this.E == 4) {
                    LightboxView.this.a(0L, 500L);
                }
            }
        });
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.mmadsdk_lightbox_replay_button_width), getResources().getDimensionPixelSize(R.dimen.mmadsdk_lightbox_replay_button_height));
        layoutParams2.addRule(13);
        this.e.addView(this.f, layoutParams2);
        this.v = new ViewUtils.ViewabilityWatcher(this.e, new MMVideoViewViewabilityListener(this));
        this.b = new FrameLayout(context);
        this.d = new ImageView(context);
        this.d.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.d.setBackgroundColor(getResources().getColor(R.color.mmadsdk_lightbox_curtain_background));
        if (!Utils.isEmpty(lightboxAd.fullscreen.imageUri)) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.3
                @Override // java.lang.Runnable
                public void run() {
                    final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(lightboxAd.fullscreen.imageUri);
                    if (bitmapFromGetRequest.code == 200) {
                        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                LightboxView.this.d.setImageBitmap(bitmapFromGetRequest.bitmap);
                            }
                        });
                    }
                }
            });
        }
        this.b.addView(this.d);
        this.c = new MMWebView(context, MMWebView.MMWebViewOptions.getDefault(), a(lightboxViewListener));
        this.c.setContent(lightboxAd.fullscreen.webContent);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.topMargin = this.u;
        layoutParams3.addRule(3, R.id.mmadsdk_light_box_video_view);
        this.b.setVisibility(8);
        ViewUtils.attachView(this, this.b, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
        if (!this.w) {
            layoutParams4.addRule(10);
        }
        ViewUtils.attachView(this, this.e, layoutParams4);
    }

    public void start() {
        this.e.start();
    }

    public boolean isPrepared() {
        return this.F;
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPrepared(MMVideoView mMVideoView) {
        this.F = true;
        this.i.onPrepared();
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onReadyToStart(MMVideoView mMVideoView) {
        this.i.onReadyToStart();
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStart(MMVideoView mMVideoView) {
        if (!this.y) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4225a, "LightboxView firing start event");
            }
            this.y = true;
            a(this.h.video.trackingEvents.get(LightboxController.TrackableEvent.start));
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStop(MMVideoView mMVideoView) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPause(MMVideoView mMVideoView) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onComplete(MMVideoView mMVideoView) {
        this.G = true;
        if (!this.C) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4225a, "LightboxView firing complete event");
            }
            this.C = true;
            a(this.h.video.trackingEvents.get(LightboxController.TrackableEvent.complete));
        }
        if (this.x != null) {
            this.x.cancel();
            this.x = null;
        }
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.4
            @Override // java.lang.Runnable
            public void run() {
                if (LightboxView.this.E == 4) {
                    LightboxView.this.g.setVisibility(0);
                    LightboxView.this.g.setAlpha(1.0f);
                }
                LightboxView.this.f.setVisibility(0);
            }
        });
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public synchronized void onProgress(MMVideoView mMVideoView, int i) {
        int duration = mMVideoView.getDuration() / 4;
        if (!this.z && i >= duration) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4225a, "LightboxView firing q1 event");
            }
            this.z = true;
            a(this.h.video.trackingEvents.get(LightboxController.TrackableEvent.firstQuartile));
        }
        if (!this.A && i >= duration * 2) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4225a, "LightboxView firing midpoint event");
            }
            this.A = true;
            a(this.h.video.trackingEvents.get(LightboxController.TrackableEvent.midpoint));
        }
        if (!this.B && i >= duration * 3) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4225a, "LightboxView firing q3 event");
            }
            this.B = true;
            a(this.h.video.trackingEvents.get(LightboxController.TrackableEvent.thirdQuartile));
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onSeek(MMVideoView mMVideoView) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onMuted(MMVideoView mMVideoView) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onUnmuted(MMVideoView mMVideoView) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onError(MMVideoView mMVideoView) {
        this.i.onFailed();
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onBufferingUpdate(MMVideoView mMVideoView, int i) {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        float f;
        int i;
        int i2;
        int i3;
        int i4;
        float f2;
        int i5;
        int i6;
        int i7;
        int i8;
        if (this.H) {
            return true;
        }
        if (motionEvent.getActionMasked() == 0) {
            this.l = motionEvent.getRawX();
            this.m = motionEvent.getRawY();
            return true;
        } else if (motionEvent.getActionMasked() == 2) {
            Point displaySize = getDisplaySize();
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            double sqrt = Math.sqrt((int) (Math.pow(this.l - rawX, 2.0d) + Math.pow(this.m - rawY, 2.0d)));
            Point defaultPosition = getDefaultPosition();
            if (sqrt > 50.0d && (this.E == 0 || this.E == 4)) {
                if (this.E == 0) {
                    this.j = defaultPosition.x;
                    this.k = defaultPosition.y;
                } else {
                    this.j = BitmapDescriptorFactory.HUE_RED;
                    this.k = BitmapDescriptorFactory.HUE_RED;
                }
                if (Math.abs(this.l - rawX) > Math.abs(this.m - rawY) && this.E != 4) {
                    this.E = 1;
                } else if (rawY < this.m && this.E != 4) {
                    this.E = 2;
                    this.d.setAlpha(1.0f);
                    this.d.setVisibility(0);
                    if (this.c.getParent() != null) {
                        this.b.removeView(this.c);
                    }
                    this.s = (displaySize.y - getHeight()) / (this.m * 0.9f);
                    if (!this.w) {
                        this.e.getLayoutParams().height = -2;
                    }
                    setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    getLayoutParams().width = -1;
                } else if (rawY > this.m) {
                    this.E = 3;
                    this.d.setAlpha(1.0f);
                    this.d.setVisibility(0);
                    this.b.removeView(this.c);
                    setBackgroundColor(getResources().getColor(17170445));
                    this.s = (getHeight() - this.p) / ((displaySize.y - this.m) * 0.9f);
                    if (!this.w) {
                        this.e.getLayoutParams().height = -2;
                    }
                    setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    getLayoutParams().width = -1;
                }
            }
            if (this.E != 0) {
                if (this.E == 1) {
                    float f3 = this.j - (this.l - rawX);
                    if (getWidth() + f3 > displaySize.x) {
                        f3 = displaySize.x - getWidth();
                    }
                    setTranslationX(f3);
                } else if (this.E == 2) {
                    float f4 = (this.m - rawY) * this.s;
                    float f5 = this.k - f4;
                    int i9 = (int) (f4 + this.p + this.r);
                    float f6 = (i9 - this.p) / (displaySize.y - this.p);
                    int i10 = this.o + ((int) ((displaySize.x - this.o) * f6));
                    int i11 = (displaySize.x - i10) - (this.q - ((int) (this.q * f6)));
                    int min = Math.min((int) (this.t * f6), this.t);
                    int max = Math.max(0, this.u - ((int) (f6 * this.u)));
                    if (i10 <= this.o || i9 <= this.p || i11 >= defaultPosition.x || f5 >= defaultPosition.y) {
                        min = 0;
                        int i12 = this.u;
                        int i13 = this.o;
                        int i14 = this.p;
                        float f7 = defaultPosition.y;
                        int i15 = defaultPosition.x;
                        this.b.setVisibility(8);
                        f2 = f7;
                        i5 = i14;
                        i6 = i13;
                        i7 = i15;
                        i8 = i12;
                    } else if (i10 >= displaySize.x || i9 >= displaySize.y || i11 <= 0 || f5 <= BitmapDescriptorFactory.HUE_RED) {
                        int i16 = displaySize.x;
                        int i17 = displaySize.y;
                        min = this.t;
                        f2 = 0.0f;
                        i5 = i17;
                        i6 = i16;
                        i7 = 0;
                        i8 = 0;
                    } else {
                        f2 = f5;
                        i5 = i9;
                        i6 = i10;
                        i7 = i11;
                        i8 = max;
                    }
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.e.getLayoutParams();
                    layoutParams.topMargin = min;
                    ((RelativeLayout.LayoutParams) this.b.getLayoutParams()).topMargin = i8;
                    if (this.b.getVisibility() != 0 && !this.w) {
                        this.b.setVisibility(0);
                    }
                    this.e.setTranslationX(i7);
                    setTranslationY(f2);
                    layoutParams.width = i6;
                    setHeight(i5);
                    requestLayout();
                    invalidate();
                } else if (this.E == 3) {
                    float f8 = (this.m - rawY) * this.s;
                    float f9 = this.k - f8;
                    int i18 = (int) (f8 + displaySize.y);
                    float f10 = (i18 - this.p) / (displaySize.y - this.p);
                    int i19 = this.o + ((int) ((displaySize.x - this.o) * f10));
                    int i20 = (displaySize.x - i19) - (this.q - ((int) (this.q * f10)));
                    int i21 = (int) (this.t * f10);
                    int max2 = Math.max(0, (int) ((1.0f - f10) * this.u));
                    if (i19 <= this.o || i18 <= this.p || i20 >= defaultPosition.x || f9 >= defaultPosition.y) {
                        i21 = 0;
                        int i22 = this.u;
                        int i23 = this.o;
                        int i24 = this.p;
                        float f11 = defaultPosition.y;
                        int i25 = defaultPosition.x;
                        this.b.setVisibility(8);
                        f = f11;
                        i = i24;
                        i2 = i23;
                        i3 = i25;
                        i4 = i22;
                    } else if (i19 >= displaySize.x || i18 >= displaySize.y || i20 <= 0 || f9 <= BitmapDescriptorFactory.HUE_RED) {
                        int i26 = displaySize.x;
                        int i27 = displaySize.y;
                        i21 = this.t;
                        f = 0.0f;
                        i = i27;
                        i2 = i26;
                        i3 = 0;
                        i4 = 0;
                    } else {
                        f = f9;
                        i = i18;
                        i2 = i19;
                        i3 = i20;
                        i4 = max2;
                    }
                    if (this.g.getVisibility() == 0) {
                        this.g.setVisibility(8);
                    }
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.e.getLayoutParams();
                    layoutParams2.topMargin = i21;
                    ((RelativeLayout.LayoutParams) this.b.getLayoutParams()).topMargin = i4;
                    this.e.setTranslationX(i3);
                    setTranslationY(f);
                    layoutParams2.width = i2;
                    setHeight(i);
                    requestLayout();
                    invalidate();
                }
            }
            return true;
        } else {
            if (motionEvent.getActionMasked() == 1) {
                Point displaySize2 = getDisplaySize();
                if (this.E == 2) {
                    if (getHeight() >= displaySize2.y / 4) {
                        b(displaySize2);
                    } else {
                        b();
                    }
                    return true;
                } else if (this.E == 3) {
                    if (getHeight() <= displaySize2.y * 0.75d) {
                        b();
                    } else {
                        b(displaySize2);
                    }
                    return true;
                } else if (this.E == 1) {
                    if (getTranslationX() < (displaySize2.x - getWidth()) / 2) {
                        animateToGone(true);
                    } else {
                        a(displaySize2);
                    }
                    return true;
                } else if (this.E == 0) {
                    if (motionEvent.getEventTime() - motionEvent.getDownTime() <= 200 && view == this) {
                        if (!this.w) {
                            this.d.setVisibility(0);
                        }
                        b(displaySize2);
                        return true;
                    }
                } else if (this.E == 4 && motionEvent.getEventTime() - motionEvent.getDownTime() <= 200) {
                    a(2500L, 500L);
                    return true;
                }
            }
            return false;
        }
    }

    public void animateToGone(final boolean z) {
        Point displaySize = getDisplaySize();
        Animation animation = new Animation() { // from class: com.millennialmedia.internal.video.LightboxView.5

            /* renamed from: a  reason: collision with root package name */
            int f4239a;
            float b;
            float c;

            @Override // android.view.animation.Animation
            public void initialize(int i, int i2, int i3, int i4) {
                this.f4239a = i;
                this.b = LightboxView.this.getTranslationX();
                this.c = this.b + i;
            }

            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                LightboxView.this.setTranslationX(f == 1.0f ? this.f4239a * (-1) : this.b - (this.c * f));
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return false;
            }
        };
        animation.setDuration(displaySize.x / getContext().getResources().getDisplayMetrics().density);
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.millennialmedia.internal.video.LightboxView.6
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                LightboxView.this.e.stop();
                if (z) {
                    LightboxView.this.a(LightboxView.this.h.video.trackingEvents.get(LightboxController.TrackableEvent.videoClose));
                }
                ViewUtils.removeFromParent(LightboxView.this);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }
        });
        startAnimation(animation);
    }

    private void a(Point point) {
        this.H = true;
        this.E = 0;
        final Point defaultPosition = getDefaultPosition();
        Animation animation = new Animation() { // from class: com.millennialmedia.internal.video.LightboxView.7

            /* renamed from: a  reason: collision with root package name */
            int f4241a;
            float b;
            float c;

            @Override // android.view.animation.Animation
            public void initialize(int i, int i2, int i3, int i4) {
                this.f4241a = i;
                this.b = LightboxView.this.getTranslationX();
                this.c = defaultPosition.x - this.b;
            }

            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                LightboxView.this.setTranslationX(f == 1.0f ? defaultPosition.x : this.b + (this.c * f));
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return false;
            }
        };
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.millennialmedia.internal.video.LightboxView.8
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                LightboxView.this.H = false;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }
        });
        animation.setDuration(point.x / getContext().getResources().getDisplayMetrics().density);
        startAnimation(animation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        final boolean z = true;
        this.H = true;
        final Point displaySize = getDisplaySize();
        if (this.E != 2) {
            z = false;
        }
        this.E = 0;
        this.g.setVisibility(8);
        setBackgroundColor(getResources().getColor(17170445));
        if (this.c.getParent() != null) {
            this.b.removeView(this.c);
        }
        this.d.setVisibility(0);
        this.d.setAlpha(1.0f);
        if (!this.w) {
            this.b.setVisibility(0);
        }
        final Point defaultPosition = getDefaultPosition();
        Animation animation = new Animation() { // from class: com.millennialmedia.internal.video.LightboxView.9

            /* renamed from: a  reason: collision with root package name */
            int f4243a;
            int b;
            int c;
            int d;

            @Override // android.view.animation.Animation
            public void initialize(int i, int i2, int i3, int i4) {
                this.b = i2;
                this.f4243a = i2 - LightboxView.this.p;
                this.c = i;
                this.d = i - LightboxView.this.o;
            }

            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                int i;
                int i2;
                if (f == 1.0f) {
                    i = LightboxView.this.p;
                } else {
                    i = (int) (this.b - (this.f4243a * f));
                }
                float f2 = (i - LightboxView.this.p) / (displaySize.y - LightboxView.this.p);
                int i3 = f == 1.0f ? LightboxView.this.o : (int) (LightboxView.this.o + (this.d * f2));
                int i4 = f == 1.0f ? 0 : (int) (LightboxView.this.t * f2);
                int i5 = f == 1.0f ? LightboxView.this.u : LightboxView.this.u - ((int) (LightboxView.this.u * f2));
                int max = f == 1.0f ? defaultPosition.x : Math.max(0, (displaySize.x - i3) - (LightboxView.this.q - ((int) (LightboxView.this.q * f2))));
                int max2 = f == 1.0f ? defaultPosition.y : Math.max(0, (displaySize.y - i) - (LightboxView.this.r - ((int) (f2 * LightboxView.this.r))));
                if (i3 <= LightboxView.this.o || i <= LightboxView.this.p || max >= defaultPosition.x || max2 >= defaultPosition.y) {
                    int i6 = LightboxView.this.u;
                    int i7 = LightboxView.this.o;
                    int i8 = LightboxView.this.p;
                    max2 = defaultPosition.y;
                    int i9 = defaultPosition.x;
                    LightboxView.this.b.setVisibility(8);
                    i3 = i7;
                    i2 = i8;
                    i4 = 0;
                    i5 = i6;
                    max = i9;
                } else {
                    i2 = i;
                }
                if (f == 1.0f) {
                    LightboxView.this.setTranslationX(defaultPosition.x);
                    LightboxView.this.setTranslationY(defaultPosition.y);
                    LightboxView.this.getLayoutParams().width = LightboxView.this.o;
                    ((RelativeLayout.LayoutParams) LightboxView.this.b.getLayoutParams()).topMargin = LightboxView.this.u;
                    LightboxView.this.setHeight(i2);
                    ((RelativeLayout.LayoutParams) LightboxView.this.e.getLayoutParams()).topMargin = 0;
                    LightboxView.this.e.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    LightboxView.this.e.getLayoutParams().height = -1;
                    LightboxView.this.e.getLayoutParams().width = -1;
                } else {
                    ((RelativeLayout.LayoutParams) LightboxView.this.b.getLayoutParams()).topMargin = i5;
                    LightboxView.this.setHeight(i2);
                    ((RelativeLayout.LayoutParams) LightboxView.this.e.getLayoutParams()).topMargin = i4;
                    LightboxView.this.e.getLayoutParams().width = i3;
                    LightboxView.this.setTranslationY(max2);
                    LightboxView.this.e.setTranslationX(max);
                }
                LightboxView.this.requestLayout();
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }
        };
        animation.setDuration(displaySize.y / (getContext().getResources().getDisplayMetrics().density / 2.0f));
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.millennialmedia.internal.video.LightboxView.10
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                LightboxView.this.b.setVisibility(8);
                LightboxView.this.e.mute();
                if (!z) {
                    LightboxView.this.i.onCollapsed();
                    LightboxView.this.a(LightboxView.this.h.video.trackingEvents.get(LightboxController.TrackableEvent.videoCollapse));
                }
                LightboxView.this.H = false;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }
        });
        startAnimation(animation);
    }

    private void b(final Point point) {
        this.H = true;
        final boolean z = this.E == 3;
        this.E = 4;
        setBackgroundColor(getResources().getColor(17170445));
        if (!this.D && !this.w) {
            this.D = true;
            a(this.h.fullscreen.trackingEvents);
        }
        getLayoutParams().width = -1;
        if (!this.w) {
            this.e.getLayoutParams().height = -2;
        }
        setTranslationX(BitmapDescriptorFactory.HUE_RED);
        if (!this.w) {
            this.b.setVisibility(0);
        }
        Animation animation = new Animation() { // from class: com.millennialmedia.internal.video.LightboxView.11

            /* renamed from: a  reason: collision with root package name */
            int f4228a;
            int b;

            @Override // android.view.animation.Animation
            public void initialize(int i, int i2, int i3, int i4) {
                this.b = i2;
                this.f4228a = i4 - i2;
            }

            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                int i;
                int i2;
                int i3;
                int i4;
                int i5 = 0;
                int i6 = f == 1.0f ? point.y : (int) (this.b + (this.f4228a * f));
                float f2 = (i6 - LightboxView.this.p) / (point.y - LightboxView.this.p);
                int i7 = f == 1.0f ? point.x : (int) (LightboxView.this.o + ((point.x - LightboxView.this.o) * f2));
                int i8 = f == 1.0f ? LightboxView.this.t : (int) (LightboxView.this.t * f2);
                int i9 = f == 1.0f ? 0 : LightboxView.this.u - ((int) (LightboxView.this.u * f2));
                int max = f == 1.0f ? 0 : Math.max(0, (point.x - i7) - (LightboxView.this.q - ((int) (LightboxView.this.q * f2))));
                int max2 = f == 1.0f ? 0 : Math.max(0, (point.y - i6) - (LightboxView.this.r - ((int) (f2 * LightboxView.this.r))));
                if (i7 >= point.x || i6 >= point.y || max <= 0 || max2 <= 0) {
                    int i10 = point.x;
                    int i11 = point.y;
                    i = LightboxView.this.t;
                    i2 = i10;
                    i3 = i11;
                    i4 = 0;
                    max2 = 0;
                } else {
                    i5 = max;
                    i4 = i9;
                    i = i8;
                    i2 = i7;
                    i3 = i6;
                }
                ((RelativeLayout.LayoutParams) LightboxView.this.b.getLayoutParams()).topMargin = i4;
                LightboxView.this.setHeight(i3);
                ((RelativeLayout.LayoutParams) LightboxView.this.e.getLayoutParams()).topMargin = i;
                LightboxView.this.e.getLayoutParams().width = i2;
                LightboxView.this.setTranslationY(max2);
                LightboxView.this.e.setTranslationX(i5);
                LightboxView.this.requestLayout();
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }
        };
        animation.setDuration(point.y / (getContext().getResources().getDisplayMetrics().density / 2.0f));
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.millennialmedia.internal.video.LightboxView.12
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                LightboxView.this.setBackgroundColor(LightboxView.this.getResources().getColor(17170444));
                LightboxView.this.e.unmute();
                if (!z) {
                    LightboxView.this.i.onClicked();
                    LightboxView.this.i.onExpanded();
                    LightboxView.this.a(LightboxView.this.h.video.trackingEvents.get(LightboxController.TrackableEvent.videoExpand));
                }
                LightboxView.this.c();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }
        });
        startAnimation(animation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.d.setAlpha(1.0f);
        this.c.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (this.c.getParent() == null) {
            this.b.addView(this.c, 0);
        }
        this.d.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(1000L).setListener(new Animator.AnimatorListener() { // from class: com.millennialmedia.internal.video.LightboxView.13
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LightboxView.this.d.setVisibility(8);
                LightboxView.this.a(2500L, 500L);
                LightboxView.this.H = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        }).start();
        this.c.animate().alpha(1.0f).setDuration(1000L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final List<LightboxController.TrackingEvent> list) {
        if (list != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.14
                @Override // java.lang.Runnable
                public void run() {
                    for (LightboxController.TrackingEvent trackingEvent : list) {
                        if (trackingEvent != null && !Utils.isEmpty(trackingEvent.uri)) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(LightboxView.f4225a, "Firing tracking url = " + trackingEvent.uri);
                            }
                            HttpUtils.getContentFromGetRequest(trackingEvent.uri);
                        }
                    }
                }
            });
        }
    }

    public Point getDefaultPosition() {
        Point displaySize = getDisplaySize();
        return new Point((displaySize.x - this.q) - this.o, (displaySize.y - this.r) - this.p);
    }

    public Point getDefaultDimensions() {
        return new Point(this.o, this.p);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Point displaySize = getDisplaySize();
        this.w = displaySize.x > displaySize.y;
        if (!this.w) {
            ((RelativeLayout.LayoutParams) this.e.getLayoutParams()).addRule(10);
        }
        this.v.startWatching();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.v.stopWatching();
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHeight(int i) {
        Point displaySize = getDisplaySize();
        getLayoutParams().height = Math.max(this.p, Math.min(i, displaySize.y));
    }

    private Point getDisplaySize() {
        Point point = new Point();
        this.n.getDefaultDisplay().getSize(point);
        return point;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, final long j2) {
        if (this.x != null) {
            this.x.cancel();
        }
        this.g.setVisibility(0);
        this.g.setAlpha(1.0f);
        this.x = ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.15
            @Override // java.lang.Runnable
            public void run() {
                if (!LightboxView.this.G) {
                    LightboxView.this.g.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(j2).setListener(new Animator.AnimatorListener() { // from class: com.millennialmedia.internal.video.LightboxView.15.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            LightboxView.this.x = null;
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }
                    }).start();
                }
            }
        }, j);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        clearAnimation();
        Point displaySize = getDisplaySize();
        if (this.w && configuration.orientation == 1) {
            this.w = false;
            if (this.E == 3 || this.E == 4) {
                c(displaySize);
            } else if (this.E == 1) {
                ViewUtils.removeFromParent(this);
            } else {
                d();
            }
        } else if (!this.w && configuration.orientation == 2) {
            this.w = true;
            if (this.E == 3 || this.E == 4) {
                d(displaySize);
            } else if (this.E == 1) {
                ViewUtils.removeFromParent(this);
            } else {
                d();
            }
        }
    }

    private void c(Point point) {
        this.H = true;
        this.E = 4;
        ViewUtils.removeFromParent(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(point.x, -2);
        layoutParams.topMargin = this.t;
        this.e.setLayoutParams(layoutParams);
        setTranslationX(BitmapDescriptorFactory.HUE_RED);
        setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.e.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        ((RelativeLayout.LayoutParams) this.b.getLayoutParams()).topMargin = 0;
        this.b.setVisibility(0);
        setHeight(point.y);
        getLayoutParams().width = -1;
        if (!this.D) {
            this.D = true;
            a(this.h.fullscreen.trackingEvents);
        }
        setBackgroundColor(getResources().getColor(17170444));
        ViewUtils.attachView(ViewUtils.getDecorView(this), this);
        this.e.unmute();
        c();
    }

    private void d(Point point) {
        this.H = true;
        this.E = 4;
        ViewUtils.removeFromParent(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(point.x, -1);
        layoutParams.topMargin = this.t;
        setTranslationX(BitmapDescriptorFactory.HUE_RED);
        setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.e.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        ((RelativeLayout.LayoutParams) this.b.getLayoutParams()).topMargin = 0;
        setHeight(point.y);
        this.e.setLayoutParams(layoutParams);
        getLayoutParams().width = -1;
        this.b.setVisibility(8);
        setBackgroundColor(getResources().getColor(17170444));
        ViewUtils.attachView(ViewUtils.getDecorView(this), this);
        this.e.unmute();
        c();
    }

    private void d() {
        this.H = true;
        this.E = 0;
        this.e.mute();
        ViewUtils.removeFromParent(this);
        Point defaultPosition = getDefaultPosition();
        setTranslationX(defaultPosition.x);
        setTranslationY(defaultPosition.y);
        this.e.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        setHeight(this.p);
        getLayoutParams().width = this.o;
        this.e.getLayoutParams().height = -1;
        this.e.getLayoutParams().width = -1;
        setBackgroundColor(getResources().getColor(17170445));
        this.b.setVisibility(8);
        ((RelativeLayout.LayoutParams) this.b.getLayoutParams()).topMargin = this.u;
        ((RelativeLayout.LayoutParams) this.e.getLayoutParams()).topMargin = 0;
        ViewUtils.attachView(ViewUtils.getDecorView(this), this);
        this.H = false;
    }

    private MMWebView.MMWebViewListener a(final LightboxViewListener lightboxViewListener) {
        return new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.video.LightboxView.16
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onReady() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                lightboxViewListener.onClicked();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
                lightboxViewListener.onAdLeftApplication();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void showCloseIndicator(boolean z) {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void setOrientation(int i) {
            }
        };
    }
}
