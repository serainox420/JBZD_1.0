package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* compiled from: RoundRectDrawable.java */
@TargetApi(21)
/* loaded from: classes.dex */
class aj extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    private float f869a;
    private final RectF c;
    private final Rect d;
    private float e;
    private ColorStateList h;
    private PorterDuffColorFilter i;
    private ColorStateList j;
    private boolean f = false;
    private boolean g = true;
    private PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;
    private final Paint b = new Paint(5);

    public aj(ColorStateList colorStateList, float f) {
        this.f869a = f;
        b(colorStateList);
        this.c = new RectF();
        this.d = new Rect();
    }

    private void b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.h = colorStateList;
        this.b.setColor(this.h.getColorForState(getState(), this.h.getDefaultColor()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f, boolean z, boolean z2) {
        if (f != this.e || this.f != z || this.g != z2) {
            this.e = f;
            this.f = z;
            this.g = z2;
            a((Rect) null);
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a() {
        return this.e;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.b;
        if (this.i != null && paint.getColorFilter() == null) {
            paint.setColorFilter(this.i);
            z = true;
        } else {
            z = false;
        }
        canvas.drawRoundRect(this.c, this.f869a, this.f869a, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    private void a(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.d.set(rect);
        if (this.f) {
            float a2 = ak.a(this.e, this.f869a, this.g);
            this.d.inset((int) Math.ceil(ak.b(this.e, this.f869a, this.g)), (int) Math.ceil(a2));
            this.c.set(this.d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.d, this.f869a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f) {
        if (f != this.f869a) {
            this.f869a = f;
            a((Rect) null);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public float b() {
        return this.f869a;
    }

    public void a(ColorStateList colorStateList) {
        b(colorStateList);
        invalidateSelf();
    }

    public ColorStateList c() {
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.j = colorStateList;
        this.i = a(this.j, this.k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.k = mode;
        this.i = a(this.j, this.k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.h.getColorForState(iArr, this.h.getDefaultColor());
        boolean z = colorForState != this.b.getColor();
        if (z) {
            this.b.setColor(colorForState);
        }
        if (this.j == null || this.k == null) {
            return z;
        }
        this.i = a(this.j, this.k);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.j != null && this.j.isStateful()) || (this.h != null && this.h.isStateful()) || super.isStateful();
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }
}
