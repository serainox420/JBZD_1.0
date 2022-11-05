package android.support.v7.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.app.OverlayListView;
import android.support.v7.b.b;
import android.support.v7.media.g;
import android.support.v7.mediarouter.R;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.facebook.common.util.UriUtil;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* compiled from: MediaRouteControllerDialog.java */
/* loaded from: classes.dex */
public class p extends android.support.v7.app.c {
    static final boolean b = Log.isLoggable("MediaRouteCtrlDialog", 3);
    static final int c = (int) TimeUnit.SECONDS.toMillis(30);
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    int E;
    final AccessibilityManager F;
    Runnable G;
    private final d H;
    private boolean I;
    private boolean J;
    private int K;
    private View L;
    private Button M;
    private Button N;
    private ImageButton O;
    private ImageButton P;
    private MediaRouteExpandCollapseButton Q;
    private FrameLayout R;
    private LinearLayout S;
    private FrameLayout T;
    private ImageView U;
    private TextView V;
    private TextView W;
    private TextView X;
    private boolean Y;
    private LinearLayout Z;
    private RelativeLayout aa;
    private LinearLayout ab;
    private View ac;
    private List<g.C0043g> ad;
    private Set<g.C0043g> ae;
    private int af;
    private int ag;
    private int ah;
    private final int ai;
    private int aj;
    private int ak;
    private Interpolator al;
    private Interpolator am;
    private Interpolator an;
    private Interpolator ao;
    final android.support.v7.media.g d;
    final g.C0043g e;
    Context f;
    FrameLayout g;
    OverlayListView h;
    f i;
    Set<g.C0043g> j;
    Set<g.C0043g> k;
    SeekBar l;
    e m;
    g.C0043g n;
    Map<g.C0043g, SeekBar> o;
    MediaControllerCompat p;
    c q;
    PlaybackStateCompat r;
    MediaDescriptionCompat s;
    b t;
    Bitmap u;
    Uri v;
    boolean w;
    Bitmap x;
    int y;
    boolean z;

    public p(Context context) {
        this(context, 0);
    }

    public p(Context context, int i) {
        super(t.a(context, t.d(context, i)), i);
        this.Y = true;
        this.G = new Runnable() { // from class: android.support.v7.app.p.1
            @Override // java.lang.Runnable
            public void run() {
                p.this.d();
            }
        };
        this.f = getContext();
        this.q = new c();
        this.d = android.support.v7.media.g.a(this.f);
        this.H = new d();
        this.e = this.d.c();
        a(this.d.d());
        this.ai = this.f.getResources().getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_padding_top);
        this.F = (AccessibilityManager) this.f.getSystemService("accessibility");
        if (Build.VERSION.SDK_INT >= 21) {
            this.am = AnimationUtils.loadInterpolator(context, R.interpolator.mr_linear_out_slow_in);
            this.an = AnimationUtils.loadInterpolator(context, R.interpolator.mr_fast_out_slow_in);
        }
        this.ao = new AccelerateDecelerateInterpolator();
    }

    private g.f h() {
        if (this.e instanceof g.f) {
            return (g.f) this.e;
        }
        return null;
    }

    public View a(Bundle bundle) {
        return null;
    }

    private void a(MediaSessionCompat.Token token) {
        PlaybackStateCompat playbackStateCompat = null;
        if (this.p != null) {
            this.p.b(this.q);
            this.p = null;
        }
        if (token != null && this.J) {
            try {
                this.p = new MediaControllerCompat(this.f, token);
            } catch (RemoteException e2) {
                Log.e("MediaRouteCtrlDialog", "Error creating media controller in setMediaSession.", e2);
            }
            if (this.p != null) {
                this.p.a(this.q);
            }
            MediaMetadataCompat c2 = this.p == null ? null : this.p.c();
            this.s = c2 == null ? null : c2.a();
            if (this.p != null) {
                playbackStateCompat = this.p.b();
            }
            this.r = playbackStateCompat;
            f();
            a(false);
        }
    }

    @Override // android.support.v7.app.c, android.support.v7.app.k, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawableResource(17170445);
        setContentView(R.layout.mr_controller_material_dialog_b);
        findViewById(16908315).setVisibility(8);
        a aVar = new a();
        this.R = (FrameLayout) findViewById(R.id.mr_expandable_area);
        this.R.setOnClickListener(new View.OnClickListener() { // from class: android.support.v7.app.p.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.this.dismiss();
            }
        });
        this.S = (LinearLayout) findViewById(R.id.mr_dialog_area);
        this.S.setOnClickListener(new View.OnClickListener() { // from class: android.support.v7.app.p.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        int b2 = t.b(this.f);
        this.M = (Button) findViewById(16908314);
        this.M.setText(R.string.mr_controller_disconnect);
        this.M.setTextColor(b2);
        this.M.setOnClickListener(aVar);
        this.N = (Button) findViewById(16908313);
        this.N.setText(R.string.mr_controller_stop_casting);
        this.N.setTextColor(b2);
        this.N.setOnClickListener(aVar);
        this.X = (TextView) findViewById(R.id.mr_name);
        this.P = (ImageButton) findViewById(R.id.mr_close);
        this.P.setOnClickListener(aVar);
        this.T = (FrameLayout) findViewById(R.id.mr_custom_control);
        this.g = (FrameLayout) findViewById(R.id.mr_default_control);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: android.support.v7.app.p.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PendingIntent d2;
                if (p.this.p != null && (d2 = p.this.p.d()) != null) {
                    try {
                        d2.send();
                        p.this.dismiss();
                    } catch (PendingIntent.CanceledException e2) {
                        Log.e("MediaRouteCtrlDialog", d2 + " was not sent, it had been canceled.");
                    }
                }
            }
        };
        this.U = (ImageView) findViewById(R.id.mr_art);
        this.U.setOnClickListener(onClickListener);
        findViewById(R.id.mr_control_title_container).setOnClickListener(onClickListener);
        this.Z = (LinearLayout) findViewById(R.id.mr_media_main_control);
        this.ac = findViewById(R.id.mr_control_divider);
        this.aa = (RelativeLayout) findViewById(R.id.mr_playback_control);
        this.V = (TextView) findViewById(R.id.mr_control_title);
        this.W = (TextView) findViewById(R.id.mr_control_subtitle);
        this.O = (ImageButton) findViewById(R.id.mr_control_playback_ctrl);
        this.O.setOnClickListener(aVar);
        this.ab = (LinearLayout) findViewById(R.id.mr_volume_control);
        this.ab.setVisibility(8);
        this.l = (SeekBar) findViewById(R.id.mr_volume_slider);
        this.l.setTag(this.e);
        this.m = new e();
        this.l.setOnSeekBarChangeListener(this.m);
        this.h = (OverlayListView) findViewById(R.id.mr_volume_group_list);
        this.ad = new ArrayList();
        this.i = new f(this.h.getContext(), this.ad);
        this.h.setAdapter((ListAdapter) this.i);
        this.k = new HashSet();
        t.a(this.f, this.Z, this.h, h() != null);
        t.a(this.f, (MediaRouteVolumeSlider) this.l, this.Z);
        this.o = new HashMap();
        this.o.put(this.e, this.l);
        this.Q = (MediaRouteExpandCollapseButton) findViewById(R.id.mr_group_expand_collapse);
        this.Q.setOnClickListener(new View.OnClickListener() { // from class: android.support.v7.app.p.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.this.B = !p.this.B;
                if (p.this.B) {
                    p.this.h.setVisibility(0);
                }
                p.this.c();
                p.this.b(true);
            }
        });
        c();
        this.E = this.f.getResources().getInteger(R.integer.mr_controller_volume_group_list_animation_duration_ms);
        this.aj = this.f.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_in_duration_ms);
        this.ak = this.f.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_out_duration_ms);
        this.L = a(bundle);
        if (this.L != null) {
            this.T.addView(this.L);
            this.T.setVisibility(0);
        }
        this.I = true;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        int a2 = s.a(this.f);
        getWindow().setLayout(a2, -2);
        View decorView = getWindow().getDecorView();
        this.K = (a2 - decorView.getPaddingLeft()) - decorView.getPaddingRight();
        Resources resources = this.f.getResources();
        this.af = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_icon_size);
        this.ag = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_height);
        this.ah = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_max_height);
        this.u = null;
        this.v = null;
        f();
        a(false);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.J = true;
        this.d.a(android.support.v7.media.f.b, this.H, 2);
        a(this.d.d());
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.d.a(this.H);
        a((MediaSessionCompat.Token) null);
        this.J = false;
        super.onDetachedFromWindow();
    }

    @Override // android.support.v7.app.c, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 25 || i == 24) {
            this.e.b(i == 25 ? -1 : 1);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.support.v7.app.c, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 25 || i == 24) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    void a(boolean z) {
        int i = 0;
        if (this.n != null) {
            this.z = true;
            this.A |= z;
            return;
        }
        this.z = false;
        this.A = false;
        if (!this.e.j() || this.e.o()) {
            dismiss();
        } else if (this.I) {
            this.X.setText(this.e.d());
            Button button = this.M;
            if (!this.e.s()) {
                i = 8;
            }
            button.setVisibility(i);
            if (this.L == null && this.w) {
                if (a(this.x)) {
                    Log.w("MediaRouteCtrlDialog", "Can't set artwork image with recycled bitmap: " + this.x);
                } else {
                    this.U.setImageBitmap(this.x);
                    this.U.setBackgroundColor(this.y);
                }
                g();
            }
            j();
            l();
            b(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Bitmap bitmap) {
        return bitmap != null && bitmap.isRecycled();
    }

    private boolean i() {
        return this.L == null && !(this.s == null && this.r == null);
    }

    private int f(boolean z) {
        if (z || this.ab.getVisibility() == 0) {
            int paddingTop = 0 + this.Z.getPaddingTop() + this.Z.getPaddingBottom();
            if (z) {
                paddingTop += this.aa.getMeasuredHeight();
            }
            if (this.ab.getVisibility() == 0) {
                paddingTop += this.ab.getMeasuredHeight();
            }
            if (z && this.ab.getVisibility() == 0) {
                return paddingTop + this.ac.getMeasuredHeight();
            }
            return paddingTop;
        }
        return 0;
    }

    private void g(boolean z) {
        int i = 8;
        this.ac.setVisibility((this.ab.getVisibility() != 0 || !z) ? 8 : 0);
        LinearLayout linearLayout = this.Z;
        if (this.ab.getVisibility() != 8 || z) {
            i = 0;
        }
        linearLayout.setVisibility(i);
    }

    void b(final boolean z) {
        this.g.requestLayout();
        this.g.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.app.p.9
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                p.this.g.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                if (p.this.C) {
                    p.this.D = true;
                } else {
                    p.this.c(z);
                }
            }
        });
    }

    void c(boolean z) {
        int i;
        int i2;
        int i3;
        Bitmap bitmap;
        boolean z2 = true;
        int b2 = b(this.Z);
        a(this.Z, -1);
        g(i());
        View decorView = getWindow().getDecorView();
        decorView.measure(View.MeasureSpec.makeMeasureSpec(getWindow().getAttributes().width, 1073741824), 0);
        a(this.Z, b2);
        if (this.L != null || !(this.U.getDrawable() instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) this.U.getDrawable()).getBitmap()) == null) {
            i = 0;
        } else {
            int a2 = a(bitmap.getWidth(), bitmap.getHeight());
            this.U.setScaleType(bitmap.getWidth() >= bitmap.getHeight() ? ImageView.ScaleType.FIT_XY : ImageView.ScaleType.FIT_CENTER);
            i = a2;
        }
        int f2 = f(i());
        int size = this.ad.size();
        int size2 = h() == null ? 0 : this.ag * h().a().size();
        if (size > 0) {
            size2 += this.ai;
        }
        int min = Math.min(size2, this.ah);
        if (!this.B) {
            min = 0;
        }
        int max = Math.max(i, min) + f2;
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        int height = rect.height() - (this.S.getMeasuredHeight() - this.g.getMeasuredHeight());
        if (this.L == null && i > 0 && max <= height) {
            this.U.setVisibility(0);
            a(this.U, i);
            i3 = i;
            i2 = max;
        } else {
            if (b(this.h) + this.Z.getMeasuredHeight() >= this.g.getMeasuredHeight()) {
                this.U.setVisibility(8);
            }
            i2 = min + f2;
            i3 = 0;
        }
        if (i() && i2 <= height) {
            this.aa.setVisibility(0);
        } else {
            this.aa.setVisibility(8);
        }
        g(this.aa.getVisibility() == 0);
        if (this.aa.getVisibility() != 0) {
            z2 = false;
        }
        int f3 = f(z2);
        int max2 = Math.max(i3, min) + f3;
        if (max2 > height) {
            min -= max2 - height;
            max2 = height;
        }
        this.Z.clearAnimation();
        this.h.clearAnimation();
        this.g.clearAnimation();
        if (z) {
            b(this.Z, f3);
            b(this.h, min);
            b(this.g, max2);
        } else {
            a(this.Z, f3);
            a(this.h, min);
            a(this.g, max2);
        }
        a(this.R, rect.height());
        h(z);
    }

    void a(View view) {
        a((LinearLayout) view.findViewById(R.id.volume_item_container), this.ag);
        View findViewById = view.findViewById(R.id.mr_volume_item_icon);
        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
        layoutParams.width = this.af;
        layoutParams.height = this.af;
        findViewById.setLayoutParams(layoutParams);
    }

    private void b(final View view, final int i) {
        final int b2 = b(view);
        Animation animation = new Animation() { // from class: android.support.v7.app.p.10
            @Override // android.view.animation.Animation
            protected void applyTransformation(float f2, Transformation transformation) {
                p.a(view, b2 - ((int) ((b2 - i) * f2)));
            }
        };
        animation.setDuration(this.E);
        if (Build.VERSION.SDK_INT >= 21) {
            animation.setInterpolator(this.al);
        }
        view.startAnimation(animation);
    }

    void c() {
        if (Build.VERSION.SDK_INT >= 21) {
            this.al = this.B ? this.am : this.an;
        } else {
            this.al = this.ao;
        }
    }

    private void j() {
        int i = 8;
        if (a(this.e)) {
            if (this.ab.getVisibility() == 8) {
                this.ab.setVisibility(0);
                this.l.setMax(this.e.r());
                this.l.setProgress(this.e.q());
                MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = this.Q;
                if (h() != null) {
                    i = 0;
                }
                mediaRouteExpandCollapseButton.setVisibility(i);
                return;
            }
            return;
        }
        this.ab.setVisibility(8);
    }

    private void h(boolean z) {
        List<g.C0043g> a2 = h() == null ? null : h().a();
        if (a2 == null) {
            this.ad.clear();
            this.i.notifyDataSetChanged();
        } else if (s.a(this.ad, a2)) {
            this.i.notifyDataSetChanged();
        } else {
            HashMap a3 = z ? s.a(this.h, this.i) : null;
            HashMap a4 = z ? s.a(this.f, this.h, this.i) : null;
            this.j = s.b(this.ad, a2);
            this.ae = s.c(this.ad, a2);
            this.ad.addAll(0, this.j);
            this.ad.removeAll(this.ae);
            this.i.notifyDataSetChanged();
            if (z && this.B && this.j.size() + this.ae.size() > 0) {
                b(a3, a4);
                return;
            }
            this.j = null;
            this.ae = null;
        }
    }

    private void b(final Map<g.C0043g, Rect> map, final Map<g.C0043g, BitmapDrawable> map2) {
        this.h.setEnabled(false);
        this.h.requestLayout();
        this.C = true;
        this.h.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.app.p.11
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                p.this.h.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                p.this.a(map, map2);
            }
        });
    }

    void a(Map<g.C0043g, Rect> map, Map<g.C0043g, BitmapDrawable> map2) {
        OverlayListView.a a2;
        if (this.j != null && this.ae != null) {
            int size = this.j.size() - this.ae.size();
            boolean z = false;
            Animation.AnimationListener animationListener = new Animation.AnimationListener() { // from class: android.support.v7.app.p.12
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    p.this.h.a();
                    p.this.h.postDelayed(p.this.G, p.this.E);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            };
            int firstVisiblePosition = this.h.getFirstVisiblePosition();
            int i = 0;
            while (true) {
                int i2 = i;
                boolean z2 = z;
                if (i2 >= this.h.getChildCount()) {
                    break;
                }
                View childAt = this.h.getChildAt(i2);
                g.C0043g item = this.i.getItem(firstVisiblePosition + i2);
                Rect rect = map.get(item);
                int top = childAt.getTop();
                int i3 = rect != null ? rect.top : (this.ag * size) + top;
                AnimationSet animationSet = new AnimationSet(true);
                if (this.j != null && this.j.contains(item)) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED);
                    alphaAnimation.setDuration(this.aj);
                    animationSet.addAnimation(alphaAnimation);
                    i3 = top;
                }
                TranslateAnimation translateAnimation = new TranslateAnimation(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i3 - top, BitmapDescriptorFactory.HUE_RED);
                translateAnimation.setDuration(this.E);
                animationSet.addAnimation(translateAnimation);
                animationSet.setFillAfter(true);
                animationSet.setFillEnabled(true);
                animationSet.setInterpolator(this.al);
                if (!z2) {
                    z = true;
                    animationSet.setAnimationListener(animationListener);
                } else {
                    z = z2;
                }
                childAt.clearAnimation();
                childAt.startAnimation(animationSet);
                map.remove(item);
                map2.remove(item);
                i = i2 + 1;
            }
            for (Map.Entry<g.C0043g, BitmapDrawable> entry : map2.entrySet()) {
                final g.C0043g key = entry.getKey();
                BitmapDrawable value = entry.getValue();
                Rect rect2 = map.get(key);
                if (this.ae.contains(key)) {
                    a2 = new OverlayListView.a(value, rect2).a(1.0f, BitmapDescriptorFactory.HUE_RED).a(this.ak).a(this.al);
                } else {
                    a2 = new OverlayListView.a(value, rect2).a(this.ag * size).a(this.E).a(this.al).a(new OverlayListView.a.InterfaceC0035a() { // from class: android.support.v7.app.p.2
                        @Override // android.support.v7.app.OverlayListView.a.InterfaceC0035a
                        public void a() {
                            p.this.k.remove(key);
                            p.this.i.notifyDataSetChanged();
                        }
                    });
                    this.k.add(key);
                }
                this.h.a(a2);
            }
        }
    }

    void d() {
        e(true);
        this.h.requestLayout();
        this.h.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.app.p.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                p.this.h.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                p.this.e();
            }
        });
    }

    void e() {
        if (this.j != null && this.j.size() != 0) {
            k();
        } else {
            d(true);
        }
    }

    void d(boolean z) {
        this.j = null;
        this.ae = null;
        this.C = false;
        if (this.D) {
            this.D = false;
            b(z);
        }
        this.h.setEnabled(true);
    }

    private void k() {
        Animation.AnimationListener animationListener = new Animation.AnimationListener() { // from class: android.support.v7.app.p.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                p.this.d(true);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        };
        int firstVisiblePosition = this.h.getFirstVisiblePosition();
        boolean z = false;
        for (int i = 0; i < this.h.getChildCount(); i++) {
            View childAt = this.h.getChildAt(i);
            if (this.j.contains(this.i.getItem(firstVisiblePosition + i))) {
                AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                alphaAnimation.setDuration(this.aj);
                alphaAnimation.setFillEnabled(true);
                alphaAnimation.setFillAfter(true);
                if (!z) {
                    alphaAnimation.setAnimationListener(animationListener);
                    z = true;
                }
                childAt.clearAnimation();
                childAt.startAnimation(alphaAnimation);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(boolean z) {
        int firstVisiblePosition = this.h.getFirstVisiblePosition();
        for (int i = 0; i < this.h.getChildCount(); i++) {
            View childAt = this.h.getChildAt(i);
            g.C0043g item = this.i.getItem(firstVisiblePosition + i);
            if (!z || this.j == null || !this.j.contains(item)) {
                ((LinearLayout) childAt.findViewById(R.id.volume_item_container)).setVisibility(0);
                AnimationSet animationSet = new AnimationSet(true);
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 1.0f);
                alphaAnimation.setDuration(0L);
                animationSet.addAnimation(alphaAnimation);
                new TranslateAnimation(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED).setDuration(0L);
                animationSet.setFillAfter(true);
                animationSet.setFillEnabled(true);
                childAt.clearAnimation();
                childAt.startAnimation(animationSet);
            }
        }
        this.h.b();
        if (!z) {
            d(false);
        }
    }

    private void l() {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        int i2;
        CharSequence charSequence = null;
        boolean z4 = true;
        int i3 = 0;
        if (i()) {
            CharSequence a2 = this.s == null ? null : this.s.a();
            boolean z5 = !TextUtils.isEmpty(a2);
            if (this.s != null) {
                charSequence = this.s.b();
            }
            boolean z6 = !TextUtils.isEmpty(charSequence);
            if (this.e.t() != -1) {
                this.V.setText(R.string.mr_controller_casting_screen);
                z = false;
                z2 = true;
            } else if (this.r == null || this.r.a() == 0) {
                this.V.setText(R.string.mr_controller_no_media_selected);
                z = false;
                z2 = true;
            } else if (!z5 && !z6) {
                this.V.setText(R.string.mr_controller_no_info_available);
                z = false;
                z2 = true;
            } else {
                if (z5) {
                    this.V.setText(a2);
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z6) {
                    this.W.setText(charSequence);
                    z2 = z3;
                    z = true;
                } else {
                    z2 = z3;
                    z = false;
                }
            }
            this.V.setVisibility(z2 ? 0 : 8);
            this.W.setVisibility(z ? 0 : 8);
            if (this.r != null) {
                boolean z7 = this.r.a() == 6 || this.r.a() == 3;
                Context context = this.O.getContext();
                if (z7 && n()) {
                    i2 = R.attr.mediaRoutePauseDrawable;
                    i = R.string.mr_controller_pause;
                } else if (z7 && o()) {
                    i2 = R.attr.mediaRouteStopDrawable;
                    i = R.string.mr_controller_stop;
                } else if (z7 || !m()) {
                    i = 0;
                    i2 = 0;
                    z4 = false;
                } else {
                    i2 = R.attr.mediaRoutePlayDrawable;
                    i = R.string.mr_controller_play;
                }
                ImageButton imageButton = this.O;
                if (!z4) {
                    i3 = 8;
                }
                imageButton.setVisibility(i3);
                if (z4) {
                    this.O.setImageResource(t.b(context, i2));
                    this.O.setContentDescription(context.getResources().getText(i));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m() {
        return (this.r.d() & 516) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        return (this.r.d() & 514) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        return (this.r.d() & 1) != 0;
    }

    boolean a(g.C0043g c0043g) {
        return this.Y && c0043g.p() == 1;
    }

    private static int b(View view) {
        return view.getLayoutParams().height;
    }

    static void a(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    private static boolean a(Uri uri, Uri uri2) {
        if (uri == null || !uri.equals(uri2)) {
            return uri == null && uri2 == null;
        }
        return true;
    }

    int a(int i, int i2) {
        return i >= i2 ? (int) (((this.K * i2) / i) + 0.5f) : (int) (((this.K * 9.0f) / 16.0f) + 0.5f);
    }

    void f() {
        if (this.L == null && p()) {
            if (this.t != null) {
                this.t.cancel(true);
            }
            this.t = new b(this);
            this.t.execute(new Void[0]);
        }
    }

    void g() {
        this.w = false;
        this.x = null;
        this.y = 0;
    }

    private boolean p() {
        Uri uri = null;
        Bitmap c2 = this.s == null ? null : this.s.c();
        if (this.s != null) {
            uri = this.s.d();
        }
        Bitmap a2 = this.t == null ? this.u : this.t.a();
        Uri b2 = this.t == null ? this.v : this.t.b();
        if (a2 != c2) {
            return true;
        }
        return a2 == null && !a(b2, uri);
    }

    /* compiled from: MediaRouteControllerDialog.java */
    /* loaded from: classes.dex */
    private final class d extends g.a {
        d() {
        }

        @Override // android.support.v7.media.g.a
        public void onRouteUnselected(android.support.v7.media.g gVar, g.C0043g c0043g) {
            p.this.a(false);
        }

        @Override // android.support.v7.media.g.a
        public void onRouteChanged(android.support.v7.media.g gVar, g.C0043g c0043g) {
            p.this.a(true);
        }

        @Override // android.support.v7.media.g.a
        public void onRouteVolumeChanged(android.support.v7.media.g gVar, g.C0043g c0043g) {
            SeekBar seekBar = p.this.o.get(c0043g);
            int q = c0043g.q();
            if (p.b) {
                Log.d("MediaRouteCtrlDialog", "onRouteVolumeChanged(), route.getVolume:" + q);
            }
            if (seekBar != null && p.this.n != c0043g) {
                seekBar.setProgress(q);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaRouteControllerDialog.java */
    /* loaded from: classes.dex */
    public final class c extends MediaControllerCompat.a {
        c() {
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a() {
            if (p.this.p != null) {
                p.this.p.b(p.this.q);
                p.this.p = null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(PlaybackStateCompat playbackStateCompat) {
            p.this.r = playbackStateCompat;
            p.this.a(false);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(MediaMetadataCompat mediaMetadataCompat) {
            p.this.s = mediaMetadataCompat == null ? null : mediaMetadataCompat.a();
            p.this.f();
            p.this.a(false);
        }
    }

    /* compiled from: MediaRouteControllerDialog.java */
    /* loaded from: classes.dex */
    private final class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i;
            int i2 = 1;
            int id = view.getId();
            if (id == 16908313 || id == 16908314) {
                if (p.this.e.j()) {
                    android.support.v7.media.g gVar = p.this.d;
                    if (id == 16908313) {
                        i2 = 2;
                    }
                    gVar.a(i2);
                }
                p.this.dismiss();
            } else if (id == R.id.mr_control_playback_ctrl) {
                if (p.this.p != null && p.this.r != null) {
                    if (p.this.r.a() != 3) {
                        i2 = 0;
                    }
                    if (i2 != 0 && p.this.n()) {
                        p.this.p.a().b();
                        i = R.string.mr_controller_pause;
                    } else if (i2 != 0 && p.this.o()) {
                        p.this.p.a().c();
                        i = R.string.mr_controller_stop;
                    } else if (i2 != 0 || !p.this.m()) {
                        i = 0;
                    } else {
                        p.this.p.a().a();
                        i = R.string.mr_controller_play;
                    }
                    if (p.this.F != null && p.this.F.isEnabled() && i != 0) {
                        AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
                        obtain.setPackageName(p.this.f.getPackageName());
                        obtain.setClassName(getClass().getName());
                        obtain.getText().add(p.this.f.getString(i));
                        p.this.F.sendAccessibilityEvent(obtain);
                    }
                }
            } else if (id == R.id.mr_close) {
                p.this.dismiss();
            }
        }
    }

    /* compiled from: MediaRouteControllerDialog.java */
    /* loaded from: classes.dex */
    private class e implements SeekBar.OnSeekBarChangeListener {
        private final Runnable b = new Runnable() { // from class: android.support.v7.app.p.e.1
            @Override // java.lang.Runnable
            public void run() {
                if (p.this.n != null) {
                    p.this.n = null;
                    if (p.this.z) {
                        p.this.a(p.this.A);
                    }
                }
            }
        };

        e() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            if (p.this.n != null) {
                p.this.l.removeCallbacks(this.b);
            }
            p.this.n = (g.C0043g) seekBar.getTag();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            p.this.l.postDelayed(this.b, 500L);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                g.C0043g c0043g = (g.C0043g) seekBar.getTag();
                if (p.b) {
                    Log.d("MediaRouteCtrlDialog", "onProgressChanged(): calling MediaRouter.RouteInfo.requestSetVolume(" + i + ")");
                }
                c0043g.a(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaRouteControllerDialog.java */
    /* loaded from: classes.dex */
    public class f extends ArrayAdapter<g.C0043g> {

        /* renamed from: a  reason: collision with root package name */
        final float f610a;

        public f(Context context, List<g.C0043g> list) {
            super(context, 0, list);
            this.f610a = t.a(context);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2 = 0;
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mr_controller_volume_item, viewGroup, false);
            } else {
                p.this.a(view);
            }
            g.C0043g item = getItem(i);
            if (item != null) {
                boolean g = item.g();
                TextView textView = (TextView) view.findViewById(R.id.mr_name);
                textView.setEnabled(g);
                textView.setText(item.d());
                MediaRouteVolumeSlider mediaRouteVolumeSlider = (MediaRouteVolumeSlider) view.findViewById(R.id.mr_volume_slider);
                t.a(viewGroup.getContext(), mediaRouteVolumeSlider, p.this.h);
                mediaRouteVolumeSlider.setTag(item);
                p.this.o.put(item, mediaRouteVolumeSlider);
                mediaRouteVolumeSlider.a(!g);
                mediaRouteVolumeSlider.setEnabled(g);
                if (g) {
                    if (p.this.a(item)) {
                        mediaRouteVolumeSlider.setMax(item.r());
                        mediaRouteVolumeSlider.setProgress(item.q());
                        mediaRouteVolumeSlider.setOnSeekBarChangeListener(p.this.m);
                    } else {
                        mediaRouteVolumeSlider.setMax(100);
                        mediaRouteVolumeSlider.setProgress(100);
                        mediaRouteVolumeSlider.setEnabled(false);
                    }
                }
                ((ImageView) view.findViewById(R.id.mr_volume_item_icon)).setAlpha(g ? 255 : (int) (255.0f * this.f610a));
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.volume_item_container);
                if (p.this.k.contains(item)) {
                    i2 = 4;
                }
                linearLayout.setVisibility(i2);
                if (p.this.j != null && p.this.j.contains(item)) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED);
                    alphaAnimation.setDuration(0L);
                    alphaAnimation.setFillEnabled(true);
                    alphaAnimation.setFillAfter(true);
                    view.clearAnimation();
                    view.startAnimation(alphaAnimation);
                }
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaRouteControllerDialog.java */
    /* loaded from: classes.dex */
    public class b extends AsyncTask<Void, Void, Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f606a;
        private final Bitmap b;
        private final Uri c;
        private int d;
        private long e;

        b(p pVar) {
            Uri uri = null;
            this.f606a = pVar;
            Bitmap c = pVar.s == null ? null : pVar.s.c();
            if (pVar.a(c)) {
                Log.w("MediaRouteCtrlDialog", "Can't fetch the given art bitmap because it's already recycled.");
                c = null;
            }
            this.b = c;
            this.c = pVar.s != null ? pVar.s.d() : uri;
        }

        public Bitmap a() {
            return this.b;
        }

        public Uri b() {
            return this.c;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.e = SystemClock.uptimeMillis();
            this.f606a.g();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0113  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0012  */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Bitmap doInBackground(Void... voidArr) {
            InputStream inputStream;
            Bitmap bitmap;
            InputStream inputStream2 = null;
            if (this.b != null) {
                bitmap = this.b;
            } else {
                try {
                    if (this.c != null) {
                        try {
                            inputStream = a(this.c);
                            try {
                                if (inputStream == null) {
                                    Log.w("MediaRouteCtrlDialog", "Unable to open: " + this.c);
                                    if (inputStream == null) {
                                        return null;
                                    }
                                    try {
                                        inputStream.close();
                                        return null;
                                    } catch (IOException e) {
                                        return null;
                                    }
                                }
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inJustDecodeBounds = true;
                                BitmapFactory.decodeStream(inputStream, null, options);
                                if (options.outWidth == 0 || options.outHeight == 0) {
                                    if (inputStream == null) {
                                        return null;
                                    }
                                    try {
                                        inputStream.close();
                                        return null;
                                    } catch (IOException e2) {
                                        return null;
                                    }
                                }
                                try {
                                    inputStream.reset();
                                } catch (IOException e3) {
                                    inputStream.close();
                                    inputStream = a(this.c);
                                    if (inputStream == null) {
                                        Log.w("MediaRouteCtrlDialog", "Unable to open: " + this.c);
                                        if (inputStream == null) {
                                            return null;
                                        }
                                        try {
                                            inputStream.close();
                                            return null;
                                        } catch (IOException e4) {
                                            return null;
                                        }
                                    }
                                }
                                options.inJustDecodeBounds = false;
                                options.inSampleSize = Math.max(1, Integer.highestOneBit(options.outHeight / this.f606a.a(options.outWidth, options.outHeight)));
                                if (isCancelled()) {
                                    if (inputStream == null) {
                                        return null;
                                    }
                                    try {
                                        inputStream.close();
                                        return null;
                                    } catch (IOException e5) {
                                        return null;
                                    }
                                }
                                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                        bitmap = decodeStream;
                                    } catch (IOException e6) {
                                        bitmap = decodeStream;
                                    }
                                } else {
                                    bitmap = decodeStream;
                                }
                            } catch (IOException e7) {
                                e = e7;
                                Log.w("MediaRouteCtrlDialog", "Unable to open: " + this.c, e);
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                        bitmap = null;
                                    } catch (IOException e8) {
                                        bitmap = null;
                                    }
                                    if (this.f606a.a(bitmap)) {
                                    }
                                }
                                bitmap = null;
                                if (this.f606a.a(bitmap)) {
                                }
                            }
                        } catch (IOException e9) {
                            e = e9;
                            inputStream = null;
                        } catch (Throwable th) {
                            th = th;
                            if (0 != 0) {
                                try {
                                    inputStream2.close();
                                } catch (IOException e10) {
                                }
                            }
                            throw th;
                        }
                    }
                    bitmap = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (this.f606a.a(bitmap)) {
                Log.w("MediaRouteCtrlDialog", "Can't use recycled bitmap: " + bitmap);
                return null;
            }
            if (bitmap != null && bitmap.getWidth() < bitmap.getHeight()) {
                android.support.v7.b.b a2 = new b.a(bitmap).a(1).a();
                this.d = a2.a().isEmpty() ? 0 : a2.a().get(0).a();
            }
            return bitmap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(Bitmap bitmap) {
            boolean z = true;
            this.f606a.t = null;
            if (this.f606a.u != this.b || this.f606a.v != this.c) {
                this.f606a.u = this.b;
                this.f606a.x = bitmap;
                this.f606a.v = this.c;
                this.f606a.y = this.d;
                this.f606a.w = true;
                p pVar = this.f606a;
                if (SystemClock.uptimeMillis() - this.e <= 120) {
                    z = false;
                }
                pVar.a(z);
            }
        }

        private InputStream a(Uri uri) throws IOException {
            InputStream openInputStream;
            String lowerCase = uri.getScheme().toLowerCase();
            if ("android.resource".equals(lowerCase) || "content".equals(lowerCase) || UriUtil.LOCAL_FILE_SCHEME.equals(lowerCase)) {
                openInputStream = this.f606a.f.getContentResolver().openInputStream(uri);
            } else {
                URLConnection openConnection = new URL(uri.toString()).openConnection();
                openConnection.setConnectTimeout(p.c);
                openConnection.setReadTimeout(p.c);
                openInputStream = openConnection.getInputStream();
            }
            if (openInputStream == null) {
                return null;
            }
            return new BufferedInputStream(openInputStream);
        }
    }
}
