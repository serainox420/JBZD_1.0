package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public class ForwardingDrawable extends Drawable implements Drawable.Callback, DrawableParent, TransformAwareDrawable, TransformCallback {
    private static final Matrix sTempTransform = new Matrix();
    private Drawable mCurrentDelegate;
    private final DrawableProperties mDrawableProperties = new DrawableProperties();
    protected TransformCallback mTransformCallback;

    public ForwardingDrawable(Drawable drawable) {
        this.mCurrentDelegate = drawable;
        DrawableUtils.setCallbacks(this.mCurrentDelegate, this, this);
    }

    public Drawable setCurrent(Drawable drawable) {
        Drawable currentWithoutInvalidate = setCurrentWithoutInvalidate(drawable);
        invalidateSelf();
        return currentWithoutInvalidate;
    }

    protected Drawable setCurrentWithoutInvalidate(Drawable drawable) {
        Drawable drawable2 = this.mCurrentDelegate;
        DrawableUtils.setCallbacks(drawable2, null, null);
        DrawableUtils.setCallbacks(drawable, null, null);
        DrawableUtils.setDrawableProperties(drawable, this.mDrawableProperties);
        DrawableUtils.copyProperties(drawable, this);
        DrawableUtils.setCallbacks(drawable, this, this);
        this.mCurrentDelegate = drawable;
        return drawable2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mCurrentDelegate.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mDrawableProperties.setAlpha(i);
        this.mCurrentDelegate.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mDrawableProperties.setColorFilter(colorFilter);
        this.mCurrentDelegate.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.mDrawableProperties.setDither(z);
        this.mCurrentDelegate.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.mDrawableProperties.setFilterBitmap(z);
        this.mCurrentDelegate.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        super.setVisible(z, z2);
        return this.mCurrentDelegate.setVisible(z, z2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.mCurrentDelegate.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mCurrentDelegate.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        return this.mCurrentDelegate.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.mCurrentDelegate.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mCurrentDelegate.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mCurrentDelegate.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mCurrentDelegate.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.mCurrentDelegate.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.mCurrentDelegate.mutate();
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.mCurrentDelegate;
    }

    @Override // com.facebook.drawee.drawable.DrawableParent
    public Drawable setDrawable(Drawable drawable) {
        return setCurrent(drawable);
    }

    @Override // com.facebook.drawee.drawable.DrawableParent
    public Drawable getDrawable() {
        return getCurrent();
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

    @Override // com.facebook.drawee.drawable.TransformAwareDrawable
    public void setTransformCallback(TransformCallback transformCallback) {
        this.mTransformCallback = transformCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void getParentTransform(Matrix matrix) {
        if (this.mTransformCallback != null) {
            this.mTransformCallback.getTransform(matrix);
        } else {
            matrix.reset();
        }
    }

    @Override // com.facebook.drawee.drawable.TransformCallback
    public void getTransform(Matrix matrix) {
        getParentTransform(matrix);
    }

    @Override // com.facebook.drawee.drawable.TransformCallback
    public void getRootBounds(RectF rectF) {
        if (this.mTransformCallback != null) {
            this.mTransformCallback.getRootBounds(rectF);
        } else {
            rectF.set(getBounds());
        }
    }

    public void getTransformedBounds(RectF rectF) {
        getParentTransform(sTempTransform);
        rectF.set(getBounds());
        sTempTransform.mapRect(rectF);
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float f, float f2) {
        this.mCurrentDelegate.setHotspot(f, f2);
    }
}
