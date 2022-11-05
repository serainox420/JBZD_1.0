package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: CircularBorderDrawable.java */
/* loaded from: classes.dex */
class c extends Drawable {
    float d;
    private int e;
    private int f;
    private int g;
    private int h;
    private ColorStateList i;
    private int j;
    private float l;
    final Rect b = new Rect();
    final RectF c = new RectF();
    private boolean k = true;

    /* renamed from: a  reason: collision with root package name */
    final Paint f109a = new Paint(1);

    public c() {
        this.f109a.setStyle(Paint.Style.STROKE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, int i3, int i4) {
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f) {
        if (this.d != f) {
            this.d = f;
            this.f109a.setStrokeWidth(1.3333f * f);
            this.k = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.k) {
            this.f109a.setShader(a());
            this.k = false;
        }
        float strokeWidth = this.f109a.getStrokeWidth() / 2.0f;
        RectF rectF = this.c;
        copyBounds(this.b);
        rectF.set(this.b);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.l, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.f109a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int round = Math.round(this.d);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f109a.setAlpha(i);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.j = colorStateList.getColorForState(getState(), this.j);
        }
        this.i = colorStateList;
        this.k = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f109a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.d > BitmapDescriptorFactory.HUE_RED ? -3 : -2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(float f) {
        if (f != this.l) {
            this.l = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.k = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.i != null && this.i.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        if (this.i != null && (colorForState = this.i.getColorForState(iArr, this.j)) != this.j) {
            this.k = true;
            this.j = colorForState;
        }
        if (this.k) {
            invalidateSelf();
        }
        return this.k;
    }

    private Shader a() {
        Rect rect = this.b;
        copyBounds(rect);
        float height = this.d / rect.height();
        return new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, rect.top, (float) BitmapDescriptorFactory.HUE_RED, rect.bottom, new int[]{android.support.v4.b.a.a(this.e, this.j), android.support.v4.b.a.a(this.f, this.j), android.support.v4.b.a.a(android.support.v4.b.a.c(this.f, 0), this.j), android.support.v4.b.a.a(android.support.v4.b.a.c(this.h, 0), this.j), android.support.v4.b.a.a(this.h, this.j), android.support.v4.b.a.a(this.g, this.j)}, new float[]{BitmapDescriptorFactory.HUE_RED, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }
}
