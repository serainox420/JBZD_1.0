package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.design.R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: ShadowDrawableWrapper.java */
/* loaded from: classes.dex */
class m extends android.support.v7.b.a.a {

    /* renamed from: a  reason: collision with root package name */
    static final double f124a = Math.cos(Math.toRadians(45.0d));
    final Paint b;
    final Paint c;
    final RectF d;
    float e;
    Path f;
    float g;
    float h;
    float i;
    float j;
    private boolean k;
    private final int l;
    private final int m;
    private final int n;
    private boolean o;
    private float p;
    private boolean q;

    public m(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.k = true;
        this.o = true;
        this.q = false;
        this.l = android.support.v4.content.b.c(context, R.color.design_fab_shadow_start_color);
        this.m = android.support.v4.content.b.c(context, R.color.design_fab_shadow_mid_color);
        this.n = android.support.v4.content.b.c(context, R.color.design_fab_shadow_end_color);
        this.b = new Paint(5);
        this.b.setStyle(Paint.Style.FILL);
        this.e = Math.round(f);
        this.d = new RectF();
        this.c = new Paint(this.b);
        this.c.setAntiAlias(false);
        a(f2, f3);
    }

    private static int c(float f) {
        int round = Math.round(f);
        return round % 2 == 1 ? round - 1 : round;
    }

    public void a(boolean z) {
        this.o = z;
        invalidateSelf();
    }

    @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.b.setAlpha(i);
        this.c.setAlpha(i);
    }

    @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.k = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f, float f2) {
        if (f < BitmapDescriptorFactory.HUE_RED || f2 < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float c = c(f);
        float c2 = c(f2);
        if (c > c2) {
            if (!this.q) {
                this.q = true;
            }
            c = c2;
        }
        if (this.j != c || this.h != c2) {
            this.j = c;
            this.h = c2;
            this.i = Math.round(c * 1.5f);
            this.g = c2;
            this.k = true;
            invalidateSelf();
        }
    }

    @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(a(this.h, this.e, this.o));
        int ceil2 = (int) Math.ceil(b(this.h, this.e, this.o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public static float a(float f, float f2, boolean z) {
        return z ? (float) ((1.5f * f) + ((1.0d - f124a) * f2)) : 1.5f * f;
    }

    public static float b(float f, float f2, boolean z) {
        if (z) {
            return (float) (f + ((1.0d - f124a) * f2));
        }
        return f;
    }

    @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.k) {
            a(getBounds());
            this.k = false;
        }
        a(canvas);
        super.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f) {
        if (this.p != f) {
            this.p = f;
            invalidateSelf();
        }
    }

    private void a(Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(this.p, this.d.centerX(), this.d.centerY());
        float f = (-this.e) - this.i;
        float f2 = this.e;
        boolean z = this.d.width() - (2.0f * f2) > BitmapDescriptorFactory.HUE_RED;
        boolean z2 = this.d.height() - (2.0f * f2) > BitmapDescriptorFactory.HUE_RED;
        float f3 = this.j - (this.j * 0.25f);
        float f4 = f2 / ((this.j - (this.j * 0.5f)) + f2);
        float f5 = f2 / (f3 + f2);
        float f6 = f2 / (f2 + (this.j - (this.j * 1.0f)));
        int save2 = canvas.save();
        canvas.translate(this.d.left + f2, this.d.top + f2);
        canvas.scale(f4, f5);
        canvas.drawPath(this.f, this.b);
        if (z) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, this.d.width() - (2.0f * f2), -this.e, this.c);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.d.right - f2, this.d.bottom - f2);
        canvas.scale(f4, f6);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f, this.b);
        if (z) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, this.d.width() - (2.0f * f2), this.i + (-this.e), this.c);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.d.left + f2, this.d.bottom - f2);
        canvas.scale(f4, f6);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f, this.b);
        if (z2) {
            canvas.scale(1.0f / f6, 1.0f);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, this.d.height() - (2.0f * f2), -this.e, this.c);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        canvas.translate(this.d.right - f2, this.d.top + f2);
        canvas.scale(f4, f5);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f, this.b);
        if (z2) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, this.d.height() - (2.0f * f2), -this.e, this.c);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(save);
    }

    private void c() {
        RectF rectF = new RectF(-this.e, -this.e, this.e, this.e);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(-this.i, -this.i);
        if (this.f == null) {
            this.f = new Path();
        } else {
            this.f.reset();
        }
        this.f.setFillType(Path.FillType.EVEN_ODD);
        this.f.moveTo(-this.e, BitmapDescriptorFactory.HUE_RED);
        this.f.rLineTo(-this.i, BitmapDescriptorFactory.HUE_RED);
        this.f.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f.arcTo(rectF, 270.0f, -90.0f, false);
        this.f.close();
        float f = -rectF2.top;
        if (f > BitmapDescriptorFactory.HUE_RED) {
            float f2 = this.e / f;
            this.b.setShader(new RadialGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, f, new int[]{0, this.l, this.m, this.n}, new float[]{BitmapDescriptorFactory.HUE_RED, f2, f2 + ((1.0f - f2) / 2.0f), 1.0f}, Shader.TileMode.CLAMP));
        }
        this.c.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, rectF.top, (float) BitmapDescriptorFactory.HUE_RED, rectF2.top, new int[]{this.l, this.m, this.n}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.c.setAntiAlias(false);
    }

    private void a(Rect rect) {
        float f = this.h * 1.5f;
        this.d.set(rect.left + this.h, rect.top + f, rect.right - this.h, rect.bottom - f);
        b().setBounds((int) this.d.left, (int) this.d.top, (int) this.d.right, (int) this.d.bottom);
        c();
    }

    public void b(float f) {
        a(f, this.h);
    }

    public float a() {
        return this.j;
    }
}
