package com.smartadserver.android.library.ui;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Vector;
/* loaded from: classes3.dex */
public class SASNativeVideoControlsLayer extends RelativeLayout {
    private static HashMap<String, String> h = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    Typeface f5513a;
    private Button b;
    private Button c;
    private boolean d;
    private boolean e;
    private boolean f;
    private Vector<a> g;
    private FrameLayout i;
    private LinearLayout j;
    private Button k;
    private Rect l;
    private Rect m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private Button t;
    private b u;
    private ImageView v;
    private boolean w;
    private ImageView x;
    private boolean y;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i, int i2);
    }

    static {
        h.put("sas_native_video_close_button_label", "CLOSE");
        h.put("sas_native_video_info_button_label", "INFO");
        h.put("sas_native_video_replay_button_label", "REPLAY");
        h.put("sas_native_video_pause_button_label", "PAUSE");
        h.put("sas_native_video_more_info_button_label", "MORE INFO");
        h.put("sas_native_video_download_button_label", "INSTALL NOW");
        h.put("sas_native_video_watch_button_label", "WATCH MORE");
    }

    public void setOpenActionEnabled(boolean z) {
        this.d = z;
        g();
    }

    private void g() {
        com.smartadserver.android.library.g.c.h().post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.1
            @Override // java.lang.Runnable
            public void run() {
                int i = 0;
                SASNativeVideoControlsLayer.this.t.setVisibility(SASNativeVideoControlsLayer.this.d ? 0 : 8);
                boolean z = !SASNativeVideoControlsLayer.this.w && SASNativeVideoControlsLayer.this.d && SASNativeVideoControlsLayer.this.f && !SASNativeVideoControlsLayer.this.f();
                Button button = SASNativeVideoControlsLayer.this.c;
                if (!z) {
                    i = 8;
                }
                button.setVisibility(i);
            }
        });
    }

    public void setInterstitialMode(boolean z) {
        this.w = z;
        setFullscreenMode(this.f);
        if (z) {
            a(false);
            setPlaying(d());
            this.v.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SASNativeVideoControlsLayer.this.a(3);
                }
            });
            this.x.setVisibility(0);
            return;
        }
        this.v.setOnClickListener(null);
        this.v.setClickable(false);
        this.x.setVisibility(8);
    }

    public ImageView getBigPlayButton() {
        return this.v;
    }

    public void a() {
        this.u.a();
    }

    public SASNativeVideoControlsLayer(Context context) {
        super(context);
        this.e = false;
        this.f = false;
        this.f5513a = Typeface.create("sans-serif-light", 0);
        this.l = new Rect();
        this.m = new Rect();
        this.n = com.smartadserver.android.library.g.c.a(16, getResources());
        this.o = com.smartadserver.android.library.g.c.a(30, getResources());
        this.p = -1;
        this.q = -1;
        this.r = -1;
        this.s = com.smartadserver.android.library.g.c.a(5, getResources());
        this.y = false;
        a(context);
    }

    public SASNativeVideoControlsLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f = false;
        this.f5513a = Typeface.create("sans-serif-light", 0);
        this.l = new Rect();
        this.m = new Rect();
        this.n = com.smartadserver.android.library.g.c.a(16, getResources());
        this.o = com.smartadserver.android.library.g.c.a(30, getResources());
        this.p = -1;
        this.q = -1;
        this.r = -1;
        this.s = com.smartadserver.android.library.g.c.a(5, getResources());
        this.y = false;
        a(context);
    }

    public SASNativeVideoControlsLayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f = false;
        this.f5513a = Typeface.create("sans-serif-light", 0);
        this.l = new Rect();
        this.m = new Rect();
        this.n = com.smartadserver.android.library.g.c.a(16, getResources());
        this.o = com.smartadserver.android.library.g.c.a(30, getResources());
        this.p = -1;
        this.q = -1;
        this.r = -1;
        this.s = com.smartadserver.android.library.g.c.a(5, getResources());
        this.y = false;
        a(context);
    }

    public void setFullscreenMode(boolean z) {
        this.f = z;
        if (z && !this.w) {
            this.b.setVisibility(0);
        } else {
            this.b.setVisibility(4);
        }
        g();
        setPlaying(d());
    }

    public boolean b() {
        return this.f;
    }

    public void c() {
        a(this.u.getVisibility() != 0 || !this.e);
    }

    public void a(boolean z) {
        this.u.a(z && this.f && !f());
    }

    public void setPlaying(final boolean z) {
        this.e = z;
        final boolean z2 = !z && (!this.f || this.w) && !f();
        Runnable runnable = new Runnable() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.4
            @Override // java.lang.Runnable
            public void run() {
                SASNativeVideoControlsLayer.this.v.setVisibility(z2 ? 0 : 8);
                SASNativeVideoControlsLayer.this.u.b(z);
            }
        };
        if (com.smartadserver.android.library.g.c.d()) {
            runnable.run();
        } else {
            com.smartadserver.android.library.g.c.h().post(runnable);
        }
    }

    public boolean d() {
        return this.e;
    }

    public void a(a aVar) {
        if (!this.g.contains(aVar)) {
            this.g.add(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        Iterator<a> it = this.g.iterator();
        while (it.hasNext()) {
            it.next().a(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        a(i, -1);
    }

    private void a(Context context) {
        this.g = new Vector<>();
        b(context);
    }

    public void setCurrentPosition(int i) {
        this.u.a(i, true);
    }

    public void setVideoDuration(int i) {
        this.u.a(i);
    }

    public void setReplayEnabled(boolean z) {
        this.k.setVisibility(z ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b extends LinearLayout {
        private ImageButton b;
        private SeekBar c;
        private TextView d;
        private TextView e;
        private Timer f;
        private TimerTask g;
        private Animation h;
        private Drawable i;
        private Drawable j;

        public b(Context context) {
            super(context);
            this.h = AnimationUtils.loadAnimation(getContext().getApplicationContext(), 17432576);
            setOrientation(0);
            setGravity(16);
            setVisibility(8);
            this.f = new Timer("SASNativeVideoControlsVisibility");
            this.i = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.p);
            this.j = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.r);
            this.b = new ImageButton(context);
            this.b.setBackgroundColor(0);
            this.b.setImageDrawable(this.i);
            int a2 = com.smartadserver.android.library.g.c.a(35, getResources());
            this.b.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.b.setLayoutParams(new ViewGroup.LayoutParams(a2, a2));
            int a3 = com.smartadserver.android.library.g.c.a(10, getResources());
            this.b.setPadding(a3, a3, a3, a3);
            this.h.setDuration(200L);
            this.b.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (SASNativeVideoControlsLayer.this.e) {
                        SASNativeVideoControlsLayer.this.a(4);
                        return;
                    }
                    SASNativeVideoControlsLayer.this.a(3);
                    b.this.a(true);
                }
            });
            addView(this.b);
            int a4 = com.smartadserver.android.library.g.c.a(7, getResources());
            this.d = new TextView(context);
            this.d.setTypeface(SASNativeVideoControlsLayer.this.f5513a);
            this.d.setTextColor(-1);
            this.d.setTextSize(1, 12.0f);
            this.d.setText("-:--");
            this.d.setPadding(a4, 0, a4, 0);
            addView(this.d);
            this.c = new SeekBar(context);
            Drawable progressDrawable = this.c.getProgressDrawable();
            if (Build.VERSION.SDK_INT >= 14) {
                progressDrawable.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
                ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
                shapeDrawable.getPaint().setColor(-1);
                int a5 = com.smartadserver.android.library.g.c.a(12, getResources());
                shapeDrawable.setIntrinsicHeight(a5);
                shapeDrawable.setIntrinsicWidth(a5);
                this.c.setThumb(shapeDrawable);
            }
            this.c.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.b.2
                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                    b.this.a(i, false);
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStartTrackingTouch(SeekBar seekBar) {
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStopTrackingTouch(SeekBar seekBar) {
                    SASNativeVideoControlsLayer.this.a(7, seekBar.getProgress());
                }
            });
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
            int a6 = com.smartadserver.android.library.g.c.a(10, getResources());
            this.c.setPadding(a4, a6, a4, a6);
            addView(this.c, layoutParams);
            this.e = new TextView(context);
            this.e.setTextColor(-1);
            this.e.setText("-:--");
            this.e.setTextSize(1, 12.0f);
            this.e.setTypeface(SASNativeVideoControlsLayer.this.f5513a);
            this.e.setPadding(a4, 0, 0, 0);
            addView(this.e);
        }

        public synchronized void a(boolean z) {
            boolean z2 = true;
            synchronized (this) {
                boolean z3 = !SASNativeVideoControlsLayer.this.w && z;
                if (this.g != null) {
                    this.g.cancel();
                    this.g = null;
                }
                if (getVisibility() != 0) {
                    z2 = false;
                }
                if (z3 && !z2) {
                    this.h.setStartTime(-1L);
                    setAnimation(this.h);
                    setVisibility(0);
                } else if (!z3 && z2) {
                    setAnimation(null);
                    setVisibility(4);
                }
                if (z3) {
                    this.g = new TimerTask() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.b.3
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            synchronized (this) {
                                com.smartadserver.android.library.g.c.h().post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.b.3.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (SASNativeVideoControlsLayer.this.e) {
                                            b.this.a(false);
                                        }
                                        b.this.g = null;
                                    }
                                });
                            }
                        }
                    };
                    this.f.schedule(this.g, 4000L);
                }
            }
        }

        public void b(boolean z) {
            if (SASNativeVideoControlsLayer.this.e) {
                this.b.setImageDrawable(this.j);
            } else {
                this.b.setImageDrawable(this.i);
            }
        }

        public void a(final int i, final boolean z) {
            int max = this.c.getMax();
            int i2 = max - i;
            int i3 = i / 1000;
            final String formatElapsedTime = DateUtils.formatElapsedTime(i3);
            if (formatElapsedTime.startsWith("00")) {
                formatElapsedTime = formatElapsedTime.substring(1);
            }
            String formatElapsedTime2 = DateUtils.formatElapsedTime((max / 1000) - i3);
            if (formatElapsedTime2.startsWith("00")) {
                formatElapsedTime2 = formatElapsedTime2.substring(1);
            }
            final String concat = "-".concat(formatElapsedTime2);
            com.smartadserver.android.library.g.c.h().post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.b.4
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        b.this.c.setProgress(i);
                    }
                    b.this.d.setText(formatElapsedTime);
                    b.this.e.setText(concat);
                }
            });
        }

        public void a(int i) {
            this.c.setMax(i);
        }

        public void a() {
            this.f.cancel();
        }
    }

    private void b(Context context) {
        this.u = new b(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        int a2 = com.smartadserver.android.library.g.c.a(8, getResources());
        layoutParams.setMargins(a2, 0, a2, 0);
        addView(this.u, layoutParams);
        this.b = new Button(context);
        this.b.setVisibility(4);
        this.b.setTypeface(this.f5513a);
        this.b.setTextColor(-1);
        this.b.setBackgroundColor(0);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.o);
        int a3 = com.smartadserver.android.library.g.c.a(15, getResources());
        int a4 = com.smartadserver.android.library.g.c.a(12, getResources());
        bitmapDrawable.setBounds(0, 0, a3, a3);
        this.b.setCompoundDrawables(bitmapDrawable, null, null, null);
        this.b.setCompoundDrawablePadding(com.smartadserver.android.library.g.c.a(12, getResources()));
        this.b.setText(com.smartadserver.android.library.g.c.a("sas_native_video_close_button_label", h.get("sas_native_video_close_button_label"), getContext()));
        this.b.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASNativeVideoControlsLayer.this.a(0);
            }
        });
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(9);
        layoutParams2.addRule(10);
        int a5 = com.smartadserver.android.library.g.c.a(8, getResources());
        this.b.setPadding(a5, a5, a5, a5);
        addView(this.b, layoutParams2);
        this.c = new Button(context);
        this.c.setTypeface(this.f5513a);
        this.c.setTextColor(-1);
        this.c.setBackgroundColor(0);
        BitmapDrawable bitmapDrawable2 = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.n);
        bitmapDrawable2.setBounds(0, 0, a3, a3);
        this.c.setCompoundDrawables(null, null, bitmapDrawable2, null);
        this.c.setCompoundDrawablePadding(a4);
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASNativeVideoControlsLayer.this.a(1);
            }
        });
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(11);
        layoutParams3.addRule(10);
        this.c.setPadding(a5, a5, a5, a5);
        addView(this.c, layoutParams3);
        this.i = new FrameLayout(context);
        ViewGroup.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
        this.i.setBackgroundColor(Color.argb((int) DrawableConstants.CtaButton.WIDTH_DIPS, 0, 0, 0));
        this.i.setClickable(true);
        addView(this.i, 0, layoutParams4);
        this.j = new LinearLayout(context) { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.7
            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                boolean z = false;
                SASNativeVideoControlsLayer.this.t.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                SASNativeVideoControlsLayer.this.k.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                int max = Math.max(SASNativeVideoControlsLayer.this.t.getMeasuredHeight(), SASNativeVideoControlsLayer.this.k.getMeasuredHeight());
                if (getMeasuredHeight() - max < 0) {
                    i2 = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
                }
                super.onMeasure(i, i2);
                SASNativeVideoControlsLayer sASNativeVideoControlsLayer = SASNativeVideoControlsLayer.this;
                if (SASNativeVideoControlsLayer.this.i.getMeasuredHeight() >= SASNativeVideoControlsLayer.this.p) {
                    z = true;
                }
                sASNativeVideoControlsLayer.b(z);
            }
        };
        this.j.setOrientation(0);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = 17;
        this.i.addView(this.j, layoutParams5);
        this.k = new Button(context);
        String a6 = com.smartadserver.android.library.g.c.a("sas_native_video_replay_button_label", h.get("sas_native_video_replay_button_label"), getContext());
        this.k.setText(a6);
        this.k.setBackgroundColor(0);
        this.k.setTypeface(this.f5513a);
        this.k.setTextColor(-1);
        this.k.setTextSize(0, this.n);
        Paint paint = new Paint();
        paint.setTypeface(this.f5513a);
        paint.setTextSize(this.n);
        paint.getTextBounds(a6, 0, a6.length(), this.l);
        BitmapDrawable bitmapDrawable3 = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.q);
        bitmapDrawable3.setBounds(0, 0, this.o, this.o);
        this.k.setCompoundDrawables(null, bitmapDrawable3, null, null);
        this.k.setCompoundDrawablePadding(a4);
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASNativeVideoControlsLayer.this.a(5);
            }
        });
        this.j.addView(this.k);
        this.t = new Button(context);
        this.t.setSingleLine();
        this.t.setTypeface(this.f5513a);
        this.t.setTextColor(-1);
        this.t.setBackgroundColor(0);
        this.t.setTextSize(0, this.n);
        a(0, "");
        this.t.setCompoundDrawablePadding(a4);
        this.t.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASNativeVideoControlsLayer.this.a(6);
            }
        });
        this.j.addView(this.t);
        this.v = new ImageView(context);
        this.v.setImageBitmap(com.smartadserver.android.library.f.a.s);
        int a7 = com.smartadserver.android.library.g.c.a(66, getResources());
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(a7, a7);
        layoutParams6.addRule(13);
        this.v.setVisibility(8);
        this.v.setLayoutParams(layoutParams6);
        this.x = new ImageView(context);
        setMuted(this.y);
        int a8 = com.smartadserver.android.library.g.c.a(40, getResources());
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(a8, a8);
        layoutParams7.addRule(12);
        layoutParams7.addRule(11);
        layoutParams7.setMargins(0, 0, a2, a2);
        this.x.setVisibility(8);
        this.x.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASNativeVideoControlsLayer.this.setMuted(!SASNativeVideoControlsLayer.this.y);
                SASNativeVideoControlsLayer.this.a(8);
            }
        });
        setActionLayerVisible(false);
        addView(this.x, layoutParams7);
    }

    public void setMuted(boolean z) {
        this.y = z;
        if (this.y) {
            this.x.setImageBitmap(com.smartadserver.android.library.f.a.f);
        } else {
            this.x.setImageBitmap(com.smartadserver.android.library.f.a.g);
        }
    }

    public boolean e() {
        return this.y;
    }

    public void setActionLayerVisible(boolean z) {
        int i = 8;
        this.i.setVisibility(z ? 0 : 8);
        g();
        if (this.w) {
            ImageView imageView = this.x;
            if (!z) {
                i = 0;
            }
            imageView.setVisibility(i);
        }
        if (z) {
            a(false);
        }
    }

    public void setSwipeListenerOnActionLayer(View.OnTouchListener onTouchListener) {
        this.i.setOnTouchListener(onTouchListener);
    }

    public boolean f() {
        return this.i.getVisibility() == 0;
    }

    public void a(int i, final String str) {
        final BitmapDrawable bitmapDrawable;
        switch (i) {
            case 1:
                str = com.smartadserver.android.library.g.c.a("sas_native_video_watch_button_label", h.get("sas_native_video_watch_button_label"), getContext());
                bitmapDrawable = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.t);
                break;
            case 2:
                str = com.smartadserver.android.library.g.c.a("sas_native_video_download_button_label", h.get("sas_native_video_download_button_label"), getContext());
                bitmapDrawable = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.u);
                break;
            case 3:
                bitmapDrawable = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.v);
                break;
            default:
                str = com.smartadserver.android.library.g.c.a("sas_native_video_more_info_button_label", h.get("sas_native_video_more_info_button_label"), getContext());
                bitmapDrawable = new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.v);
                break;
        }
        bitmapDrawable.setBounds(0, 0, this.o, this.o);
        com.smartadserver.android.library.g.c.h().post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASNativeVideoControlsLayer.2
            @Override // java.lang.Runnable
            public void run() {
                SASNativeVideoControlsLayer.this.t.setText(str);
                SASNativeVideoControlsLayer.this.c.setText(str);
                SASNativeVideoControlsLayer.this.k.setMaxWidth(Integer.MAX_VALUE);
                SASNativeVideoControlsLayer.this.t.setMaxWidth(Integer.MAX_VALUE);
                SASNativeVideoControlsLayer.this.k.setMinWidth(0);
                SASNativeVideoControlsLayer.this.t.setMinWidth(0);
                SASNativeVideoControlsLayer.this.t.setCompoundDrawables(null, bitmapDrawable, null, null);
                SASNativeVideoControlsLayer.this.t.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                SASNativeVideoControlsLayer.this.k.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                SASNativeVideoControlsLayer.this.p = Math.max(SASNativeVideoControlsLayer.this.t.getMeasuredHeight(), SASNativeVideoControlsLayer.this.k.getMeasuredHeight());
                SASNativeVideoControlsLayer.this.q = Math.max(SASNativeVideoControlsLayer.this.t.getMeasuredWidth(), SASNativeVideoControlsLayer.this.k.getMeasuredWidth());
                SASNativeVideoControlsLayer.this.k.setMinWidth(0);
                SASNativeVideoControlsLayer.this.k.setTextSize(BitmapDescriptorFactory.HUE_RED);
                SASNativeVideoControlsLayer.this.k.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                SASNativeVideoControlsLayer.this.r = SASNativeVideoControlsLayer.this.k.getMeasuredWidth();
                SASNativeVideoControlsLayer.this.b(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        int i;
        this.t.setPadding(this.s, this.s * 2, this.s, 0);
        this.k.setPadding(this.s, this.s * 2, this.s, 0);
        if (z) {
            Paint paint = new Paint();
            paint.setTypeface(this.f5513a);
            paint.setTextSize(this.n);
            String charSequence = this.t.getText().toString();
            paint.getTextBounds(charSequence, 0, charSequence.length(), this.m);
            this.t.setTextSize(0, this.n);
            this.k.setTextSize(0, this.n);
            i = this.q;
        } else {
            this.t.setTextSize(BitmapDescriptorFactory.HUE_RED);
            this.k.setTextSize(BitmapDescriptorFactory.HUE_RED);
            i = this.r;
        }
        this.t.setMinWidth(i);
        this.k.setMinWidth(i);
        this.t.setMaxWidth(i);
        this.k.setMaxWidth(i);
        if (i * 2 > this.i.getMeasuredWidth()) {
            this.t.setVisibility(8);
        } else if (this.d) {
            this.t.setVisibility(0);
        }
    }
}
