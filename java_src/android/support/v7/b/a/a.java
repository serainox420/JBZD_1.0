package android.support.v7.b.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
/* compiled from: DrawableWrapper.java */
@RestrictTo
/* loaded from: classes.dex */
public class a extends Drawable implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f631a;

    public a(Drawable drawable) {
        a(drawable);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f631a.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f631a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f631a.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f631a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f631a.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f631a.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f631a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f631a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f631a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return this.f631a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f631a.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        android.support.v4.b.a.a.a(this.f631a);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f631a.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f631a.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f631a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f631a.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f631a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f631a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f631a.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f631a.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f631a.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f631a.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        android.support.v4.b.a.a.a(this.f631a, z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return android.support.v4.b.a.a.b(this.f631a);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        android.support.v4.b.a.a.a(this.f631a, i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        android.support.v4.b.a.a.a(this.f631a, colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        android.support.v4.b.a.a.a(this.f631a, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        android.support.v4.b.a.a.a(this.f631a, f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        android.support.v4.b.a.a.a(this.f631a, i, i2, i3, i4);
    }

    public Drawable b() {
        return this.f631a;
    }

    public void a(Drawable drawable) {
        if (this.f631a != null) {
            this.f631a.setCallback(null);
        }
        this.f631a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }
}
