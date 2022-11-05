package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
/* loaded from: classes.dex */
public class s extends View {
    private final int A;

    /* renamed from: a  reason: collision with root package name */
    protected Paint f1566a;
    protected Paint b;
    private Paint c;
    private Paint d;
    private RectF e;
    private float f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private float l;
    private int m;
    private String n;
    private String o;
    private float p;
    private String q;
    private float r;
    private final float s;
    private final int t;
    private final int u;
    private final int v;
    private final int w;
    private final int x;
    private final float y;
    private final float z;

    public s(Context context) {
        this(context, null);
    }

    public s(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public s(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new RectF();
        this.i = 0;
        this.n = "";
        this.o = "";
        this.q = "";
        this.t = Color.rgb(66, 145, 241);
        this.u = Color.rgb(66, 145, 241);
        this.v = Color.rgb(66, 145, 241);
        this.w = 0;
        this.x = 100;
        this.y = t.b(getResources(), 14.0f);
        this.A = (int) t.a(getResources(), 100.0f);
        this.s = t.a(getResources(), 4.0f);
        this.z = t.b(getResources(), 18.0f);
        b();
        a();
    }

    private int e(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int i2 = this.A;
        return mode == Integer.MIN_VALUE ? Math.min(i2, size) : i2;
    }

    private float o() {
        return (d() / this.j) * 360.0f;
    }

    protected void a() {
        this.f1566a = new TextPaint();
        this.f1566a.setColor(this.g);
        this.f1566a.setTextSize(this.f);
        this.f1566a.setAntiAlias(true);
        this.b = new TextPaint();
        this.b.setColor(this.h);
        this.b.setTextSize(this.p);
        this.b.setAntiAlias(true);
        this.c = new Paint();
        this.c.setColor(this.k);
        this.c.setStyle(Paint.Style.STROKE);
        this.c.setAntiAlias(true);
        this.c.setStrokeWidth(this.l);
        this.d = new Paint();
        this.d.setColor(this.m);
        this.d.setAntiAlias(true);
    }

    public void a(float f) {
        this.l = f;
        invalidate();
    }

    public void a(int i) {
        this.i = i;
        if (this.i > e()) {
            this.i %= e();
        }
        invalidate();
    }

    protected void b() {
        this.k = this.t;
        this.g = this.u;
        this.f = this.y;
        b(100);
        a(0);
        this.l = this.s;
        this.m = 0;
        this.p = this.z;
        this.h = this.v;
    }

    public void b(float f) {
        this.f = f;
        invalidate();
    }

    public void b(int i) {
        if (i > 0) {
            this.j = i;
            invalidate();
        }
    }

    public float c() {
        return this.l;
    }

    public void c(int i) {
        this.g = i;
        invalidate();
    }

    public int d() {
        return this.i;
    }

    public void d(int i) {
        this.k = i;
        invalidate();
    }

    public int e() {
        return this.j;
    }

    public float f() {
        return this.f;
    }

    public int g() {
        return this.g;
    }

    public int h() {
        return this.k;
    }

    public String i() {
        return this.o;
    }

    @Override // android.view.View
    public void invalidate() {
        a();
        super.invalidate();
    }

    public String j() {
        return this.n;
    }

    public int k() {
        return this.m;
    }

    public String l() {
        return this.q;
    }

    public float m() {
        return this.p;
    }

    public int n() {
        return this.h;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.l;
        this.e.set(f, f, getWidth() - f, getHeight() - f);
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, ((getWidth() - this.l) + this.l) / 2.0f, this.d);
        canvas.drawArc(this.e, 270.0f, -o(), false, this.c);
        String str = this.n + this.i + this.o;
        if (!TextUtils.isEmpty(str)) {
            canvas.drawText(str, (getWidth() - this.f1566a.measureText(str)) / 2.0f, (getWidth() - (this.f1566a.descent() + this.f1566a.ascent())) / 2.0f, this.f1566a);
        }
        if (!TextUtils.isEmpty(l())) {
            this.b.setTextSize(this.p);
            canvas.drawText(l(), (getWidth() - this.b.measureText(l())) / 2.0f, (getHeight() - this.r) - ((this.f1566a.descent() + this.f1566a.ascent()) / 2.0f), this.b);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(e(i), e(i2));
        this.r = getHeight() - ((getHeight() * 3) / 4);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        this.g = bundle.getInt("text_color");
        this.f = bundle.getFloat("text_size");
        this.p = bundle.getFloat("inner_bottom_text_size");
        this.q = bundle.getString("inner_bottom_text");
        this.h = bundle.getInt("inner_bottom_text_color");
        this.k = bundle.getInt("finished_stroke_color");
        this.l = bundle.getFloat("finished_stroke_width");
        this.m = bundle.getInt("inner_background_color");
        a();
        b(bundle.getInt("max"));
        a(bundle.getInt(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PROGRESS));
        this.n = bundle.getString("prefix");
        this.o = bundle.getString("suffix");
        super.onRestoreInstanceState(bundle.getParcelable("saved_instance"));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("saved_instance", super.onSaveInstanceState());
        bundle.putInt("text_color", g());
        bundle.putFloat("text_size", f());
        bundle.putFloat("inner_bottom_text_size", m());
        bundle.putFloat("inner_bottom_text_color", n());
        bundle.putString("inner_bottom_text", l());
        bundle.putInt("inner_bottom_text_color", n());
        bundle.putInt("finished_stroke_color", h());
        bundle.putInt("max", e());
        bundle.putInt(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PROGRESS, d());
        bundle.putString("suffix", i());
        bundle.putString("prefix", j());
        bundle.putFloat("finished_stroke_width", c());
        bundle.putInt("inner_background_color", k());
        return bundle;
    }
}
