package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.flurry.sdk.gv;
import java.util.List;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class gt extends gv {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2748a = gt.class.getSimpleName();
    private RelativeLayout b;
    private gv.b c;
    private int d;
    private int e;
    private Context f;
    private List<de> g;

    public gt(Context context, gv.b bVar, List<de> list) {
        super(context);
        this.d = 0;
        this.e = 0;
        this.f = context;
        this.c = bVar;
        this.g = list;
    }

    @Override // android.widget.MediaController
    public void show() {
        if (getWindowToken() != null) {
            super.show(0);
        }
    }

    @Override // android.widget.MediaController
    public void show(int i) {
        if (getWindowToken() != null) {
            super.show(i);
        }
    }

    @Override // android.widget.MediaController, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                show(0);
                return true;
            case 1:
                show(50000);
                return true;
            case 2:
            default:
                return true;
            case 3:
                hide();
                return true;
        }
    }

    @Override // com.flurry.sdk.gv
    public final void a() {
        this.d = 0;
        this.e = 0;
    }

    @Override // android.widget.MediaController
    public final void setAnchorView(View view) {
        super.setAnchorView(view);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.d, this.e);
        removeAllViews();
        Context context = this.f;
        gv.b bVar = this.c;
        if (context != null) {
            this.c = bVar;
            this.b = new RelativeLayout(context);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(this.d, this.e);
            this.b.setBackgroundColor(0);
            this.b.setLayoutParams(layoutParams2);
        }
        addView(this.b, layoutParams);
    }

    @Override // com.flurry.sdk.gv
    public final void a(int i) {
    }

    @Override // com.flurry.sdk.gv
    public final void b() {
    }

    @Override // com.flurry.sdk.gv
    public final void a(float f, float f2) {
    }

    @Override // com.flurry.sdk.gv
    public final void k() {
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
}
