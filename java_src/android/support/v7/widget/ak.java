package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.v7.cardview.R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: RoundRectDrawableWithShadow.java */
@TargetApi(9)
/* loaded from: classes.dex */
class ak extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    static final double f870a = Math.cos(Math.toRadians(45.0d));
    static a c;
    final int b;
    Paint e;
    Paint f;
    final RectF g;
    float h;
    Path i;
    float j;
    float k;
    float l;
    float m;
    private ColorStateList n;
    private final int p;
    private final int q;
    private boolean o = true;
    private boolean r = true;
    private boolean s = false;
    Paint d = new Paint(5);

    /* compiled from: RoundRectDrawableWithShadow.java */
    /* loaded from: classes.dex */
    interface a {
        void a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.p = resources.getColor(R.color.cardview_shadow_start_color);
        this.q = resources.getColor(R.color.cardview_shadow_end_color);
        this.b = resources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
        b(colorStateList);
        this.e = new Paint(5);
        this.e.setStyle(Paint.Style.FILL);
        this.h = (int) (0.5f + f);
        this.g = new RectF();
        this.f = new Paint(this.e);
        this.f.setAntiAlias(false);
        a(f2, f3);
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.n = colorStateList;
        this.d.setColor(this.n.getColorForState(getState(), this.n.getDefaultColor()));
    }

    private int d(float f) {
        int i = (int) (0.5f + f);
        if (i % 2 == 1) {
            return i - 1;
        }
        return i;
    }

    public void a(boolean z) {
        this.r = z;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.d.setAlpha(i);
        this.e.setAlpha(i);
        this.f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.o = true;
    }

    void a(float f, float f2) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
        float d = d(f);
        float d2 = d(f2);
        if (d > d2) {
            if (!this.s) {
                this.s = true;
            }
            d = d2;
        }
        if (this.m != d || this.k != d2) {
            this.m = d;
            this.k = d2;
            this.l = (int) ((d * 1.5f) + this.b + 0.5f);
            this.j = this.b + d2;
            this.o = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(a(this.k, this.h, this.r));
        int ceil2 = (int) Math.ceil(b(this.k, this.h, this.r));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(float f, float f2, boolean z) {
        return z ? (float) ((1.5f * f) + ((1.0d - f870a) * f2)) : 1.5f * f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float b(float f, float f2, boolean z) {
        if (z) {
            return (float) (f + ((1.0d - f870a) * f2));
        }
        return f;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.n.getColorForState(iArr, this.n.getDefaultColor());
        if (this.d.getColor() == colorForState) {
            return false;
        }
        this.d.setColor(colorForState);
        this.o = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.n != null && this.n.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.d.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (0.5f + f);
        if (this.h != f2) {
            this.h = f2;
            this.o = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.o) {
            b(getBounds());
            this.o = false;
        }
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.m / 2.0f);
        a(canvas);
        canvas.translate(BitmapDescriptorFactory.HUE_RED, (-this.m) / 2.0f);
        c.a(canvas, this.g, this.h, this.d);
    }

    private void a(Canvas canvas) {
        float f = (-this.h) - this.l;
        float f2 = this.h + this.b + (this.m / 2.0f);
        boolean z = this.g.width() - (2.0f * f2) > BitmapDescriptorFactory.HUE_RED;
        boolean z2 = this.g.height() - (2.0f * f2) > BitmapDescriptorFactory.HUE_RED;
        int save = canvas.save();
        canvas.translate(this.g.left + f2, this.g.top + f2);
        canvas.drawPath(this.i, this.e);
        if (z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, this.g.width() - (2.0f * f2), -this.h, this.f);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        canvas.translate(this.g.right - f2, this.g.bottom - f2);
        canvas.rotate(180.0f);
        canvas.drawPath(this.i, this.e);
        if (z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, this.g.width() - (2.0f * f2), this.l + (-this.h), this.f);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.g.left + f2, this.g.bottom - f2);
        canvas.rotate(270.0f);
        canvas.drawPath(this.i, this.e);
        if (z2) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, this.g.height() - (2.0f * f2), -this.h, this.f);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.g.right - f2, this.g.top + f2);
        canvas.rotate(90.0f);
        canvas.drawPath(this.i, this.e);
        if (z2) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, this.g.height() - (2.0f * f2), -this.h, this.f);
        }
        canvas.restoreToCount(save4);
    }

    private void g() {
        RectF rectF = new RectF(-this.h, -this.h, this.h, this.h);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(-this.l, -this.l);
        if (this.i == null) {
            this.i = new Path();
        } else {
            this.i.reset();
        }
        this.i.setFillType(Path.FillType.EVEN_ODD);
        this.i.moveTo(-this.h, BitmapDescriptorFactory.HUE_RED);
        this.i.rLineTo(-this.l, BitmapDescriptorFactory.HUE_RED);
        this.i.arcTo(rectF2, 180.0f, 90.0f, false);
        this.i.arcTo(rectF, 270.0f, -90.0f, false);
        this.i.close();
        this.e.setShader(new RadialGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, this.h + this.l, new int[]{this.p, this.p, this.q}, new float[]{BitmapDescriptorFactory.HUE_RED, this.h / (this.h + this.l), 1.0f}, Shader.TileMode.CLAMP));
        this.f.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (-this.h) + this.l, (float) BitmapDescriptorFactory.HUE_RED, (-this.h) - this.l, new int[]{this.p, this.p, this.q}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f.setAntiAlias(false);
    }

    private void b(Rect rect) {
        float f = this.k * 1.5f;
        this.g.set(rect.left + this.k, rect.top + f, rect.right - this.k, rect.bottom - f);
        g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Rect rect) {
        getPadding(rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(float f) {
        a(f, this.k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(float f) {
        a(this.m, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        return (Math.max(this.k, this.h + this.b + (this.k / 2.0f)) * 2.0f) + ((this.k + this.b) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        return (Math.max(this.k, this.h + this.b + ((this.k * 1.5f) / 2.0f)) * 2.0f) + (((this.k * 1.5f) + this.b) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        b(colorStateList);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList f() {
        return this.n;
    }
}
