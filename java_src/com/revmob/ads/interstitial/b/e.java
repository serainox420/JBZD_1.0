package com.revmob.ads.interstitial.b;

import android.app.Activity;
import android.graphics.Canvas;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
/* loaded from: classes3.dex */
public final class e extends RelativeLayout implements g {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f4765a;
    private com.revmob.ads.interstitial.a.b b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;

    public e(Activity activity, com.revmob.ads.interstitial.a.b bVar, a aVar, boolean z, int i) {
        super(activity);
        this.c = false;
        this.d = 0;
        this.e = 28;
        this.h = -999;
        this.i = -999;
        this.j = 0;
        this.k = 0;
        this.b = bVar;
        this.c = z;
        this.d = i > this.e ? this.e : i;
        if (!z) {
            addView(a(aVar), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f = displayMetrics.widthPixels;
        this.g = displayMetrics.heightPixels;
        this.k = 0;
        this.j = 0;
        setWillNotDraw(false);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f, this.g);
        setGravity(48);
        layoutParams.leftMargin = 0;
        layoutParams.topMargin = 0;
        addView(a(aVar), layoutParams);
    }

    private View a(a aVar) {
        this.f4765a = new ImageView(getContext());
        e();
        this.f4765a.setOnClickListener(new f(this, aVar));
        return this.f4765a;
    }

    public final void a(int i, int i2) {
        if (this.c) {
            if (this.h == -999) {
                this.h = i;
            }
            if (this.i == -999) {
                this.i = i2;
            }
            int i3 = i - this.h;
            if (i3 >= 0) {
                this.k = Math.max(0 - this.d, 0 - Math.abs(i3));
            } else {
                this.k = Math.min(this.d + 0, Math.abs(i3));
            }
            int i4 = i2 - this.i;
            if (i4 >= 0) {
                this.j = Math.max(0 - this.d, 0 - Math.abs(i4));
            } else {
                this.j = Math.min(this.d + 0, Math.abs(i4));
            }
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                invalidate();
            } else {
                postInvalidate();
            }
        }
    }

    @Override // com.revmob.ads.interstitial.b.g
    public final void e() {
        if (this.f4765a != null) {
            this.f4765a.setImageBitmap(this.b.a(getResources().getConfiguration().orientation));
            if (this.b.h() || this.b.R() == 1) {
                this.f4765a.setScaleType(ImageView.ScaleType.FIT_XY);
            } else {
                this.f4765a.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
        }
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        if (this.c) {
            canvas.translate(this.k, this.j);
        }
        super.onDraw(canvas);
    }
}
