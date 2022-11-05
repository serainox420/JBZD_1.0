package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.flurry.sdk.gv;
import com.mopub.mobileads.resource.DrawableConstants;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class gr extends gv {
    private static final String b = gr.class.getSimpleName();
    private static final int c = lw.b(16);
    private static final int d = lw.b(0);
    private static final int e = lw.b(5);
    private static final int f = lw.b(35);

    /* renamed from: a  reason: collision with root package name */
    ImageButton f2738a;
    private RelativeLayout g;
    private gv.b h;
    private ImageButton i;
    private ImageButton j;
    private hn k;
    private int l;
    private int m;

    public gr(Context context, gv.b bVar) {
        super(context);
        this.l = 0;
        this.m = 0;
        if (context == null) {
            return;
        }
        this.h = bVar;
        km.a(3, b, "Update initLayout Video: " + context.toString());
        this.g = new RelativeLayout(context);
        this.g.setBackgroundColor(0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.g.setLayoutParams(layoutParams);
        hi hiVar = new hi();
        hiVar.g();
        Bitmap bitmap = hiVar.f2801a;
        this.f2738a = new ImageButton(context);
        this.f2738a.setPadding(0, 0, 0, 0);
        this.f2738a.setImageBitmap(bitmap);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        gradientDrawable.setShape(1);
        gradientDrawable.setAlpha(178);
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2738a.setBackground(gradientDrawable);
        } else {
            this.f2738a.setBackgroundDrawable(gradientDrawable);
        }
        this.f2738a.setVisibility(4);
        this.f2738a.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gr.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (gr.this.h != null) {
                    gr.this.h.n();
                }
            }
        });
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(11);
        layoutParams2.addRule(10);
        layoutParams2.setMargins(e, e, e, e);
        this.g.addView(this.f2738a, layoutParams2);
        this.k = new hn(context, f, f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(12);
        layoutParams3.addRule(9);
        layoutParams3.setMargins(d, d, d, d);
        this.k.f2805a.setVisibility(0);
        this.g.addView(this.k.f2805a, layoutParams3);
        Bitmap bitmap2 = hiVar.c;
        this.j = new ImageButton(context);
        this.j.setPadding(0, 0, 0, 0);
        this.j.setBackgroundColor(0);
        this.j.setImageBitmap(bitmap2);
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gr.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (gr.this.h != null) {
                    gr.this.h.o();
                }
            }
        });
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(11);
        layoutParams4.addRule(12);
        layoutParams4.setMargins(c, c, c, c);
        this.j.setVisibility(0);
        this.g.addView(this.j, layoutParams4);
        Bitmap bitmap3 = hiVar.b;
        this.i = new ImageButton(context);
        this.i.setPadding(0, 0, 0, 0);
        this.i.setBackgroundColor(0);
        this.i.setImageBitmap(bitmap3);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gr.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (gr.this.h != null) {
                    gr.this.i.setVisibility(4);
                    gr.this.h.p();
                }
            }
        });
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(13);
        layoutParams5.setMargins(c, c, c, c);
        this.i.setVisibility(0);
        show(0);
        this.g.addView(this.i, layoutParams5);
        this.g.setFocusableInTouchMode(true);
        this.g.setOnKeyListener(new View.OnKeyListener() { // from class: com.flurry.sdk.gr.1
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                    if (gr.this.h == null || !gr.this.f2738a.isShown()) {
                        return true;
                    }
                    gr.this.h.n();
                    return true;
                }
                return false;
            }
        });
    }

    @Override // com.flurry.sdk.gv
    public final void a() {
    }

    @Override // com.flurry.sdk.gv
    public final void a(int i) {
        if (this.m != i) {
            km.a(3, b, "Update UI with visible flag: \n CloseButton: " + (i & 1) + " \n Play Button: " + (i & 8) + " \n MoreInfo: " + (i & 4) + " \n Timer: " + (i & 2));
            this.m = i;
            c(i);
        }
    }

    @Override // android.widget.MediaController
    public final void setAnchorView(View view) {
        super.setAnchorView(view);
        if (this.g == null) {
            km.a(3, b, "Layout is null in setAnchorView.");
            return;
        }
        removeAllViews();
        addView(this.g);
    }

    private void c(int i) {
        if (this.g == null) {
            km.a(5, b, "Layout is null in updateControlVisibility.");
            return;
        }
        setCloseButtonVisibility(i);
        setTimerVisibility(i);
        setPlayButtonVisibility(i);
        setMoreInfoButtonVisibility(i);
    }

    @Override // com.flurry.sdk.gv
    public final void b() {
        if (this.g == null) {
            km.a(3, b, "Layout is null in screenSizeChanged.");
        } else {
            c(this.m);
        }
    }

    @Override // com.flurry.sdk.gv
    public final void a(float f2, float f3) {
        if (this.k == null) {
            km.a(3, b, "Cannot update timer. View is null.");
            return;
        }
        this.l = ((int) f3) / 1000;
        final int i = (((int) f2) / 1000) - this.l;
        final hn hnVar = this.k;
        final int i2 = (int) f2;
        hnVar.b = 360.0f / (i2 / 1000);
        jy.a().a(new Runnable() { // from class: com.flurry.sdk.hn.1
            @Override // java.lang.Runnable
            public final void run() {
                hn.a(hnVar, i2);
            }
        });
        final hn hnVar2 = this.k;
        if (hnVar2.f2805a == null) {
            return;
        }
        jy.a().a(new Runnable() { // from class: com.flurry.sdk.hn.2
            @Override // java.lang.Runnable
            public final void run() {
                hn.a(hnVar2, i);
            }
        });
        jy.a().a(new Runnable() { // from class: com.flurry.sdk.hn.3
            @Override // java.lang.Runnable
            public final void run() {
                hnVar2.f2805a.setText(String.valueOf(i));
            }
        });
    }

    private void setCloseButtonVisibility(int i) {
        if ((i & 1) > 0) {
            this.f2738a.setVisibility(0);
        } else {
            this.f2738a.setVisibility(4);
        }
    }

    private void setTimerVisibility(int i) {
        if ((i & 2) > 0) {
            this.k.f2805a.setVisibility(0);
        } else {
            this.k.f2805a.setVisibility(4);
        }
    }

    private void setMoreInfoButtonVisibility(int i) {
        if ((i & 4) > 0) {
            this.j.setVisibility(0);
        } else {
            this.j.setVisibility(4);
        }
    }

    private void setPlayButtonVisibility(int i) {
        if ((i & 8) > 0) {
            this.i.setVisibility(0);
        } else {
            this.i.setVisibility(4);
        }
    }

    private int getWidthDimensions() {
        return lw.c().widthPixels;
    }

    private int getHeightDimensions() {
        return lw.c().heightPixels;
    }

    @Override // com.flurry.sdk.gv
    public final void c() {
    }

    @Override // com.flurry.sdk.gv
    public final void d() {
    }

    @Override // com.flurry.sdk.gv
    public final void e() {
    }

    @Override // com.flurry.sdk.gv
    public final void f() {
    }

    @Override // com.flurry.sdk.gv
    public final void g() {
    }

    @Override // com.flurry.sdk.gv
    public final void h() {
    }

    @Override // com.flurry.sdk.gv
    public final void i() {
    }

    @Override // com.flurry.sdk.gv
    public final void j() {
    }

    @Override // com.flurry.sdk.gv
    public final void k() {
        if (this.g != null) {
            km.a(5, b, "Reset video view.");
            a(0);
            this.g.removeAllViews();
            removeAllViews();
            this.g = null;
        }
    }

    @Override // android.widget.MediaController
    public void show() {
        super.show(0);
        km.a(5, b, "Show called.");
    }

    @Override // android.widget.MediaController
    public void show(int i) {
        km.a(5, b, "Override show(0).");
        super.show(0);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c(this.m);
    }

    @Override // android.widget.MediaController, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        km.a(5, b, "Override dispatchKeyEvent");
        boolean z = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (keyCode == 79 || keyCode == 85 || keyCode == 62 || keyCode == 126 || keyCode == 86 || keyCode == 127) {
            return true;
        }
        if (keyCode == 25 || keyCode == 24 || keyCode == 164 || keyCode == 27) {
            show(0);
            return super.dispatchKeyEvent(keyEvent);
        } else if (keyEvent.getKeyCode() == 4 && z) {
            if (this.h != null && this.f2738a.isShown()) {
                this.h.n();
            }
            show(0);
            return true;
        } else {
            show(0);
            return super.dispatchKeyEvent(keyEvent);
        }
    }
}
