package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.Preconditions;
/* loaded from: classes.dex */
public class MatrixDrawable extends ForwardingDrawable {
    private Matrix mDrawMatrix;
    private Matrix mMatrix;
    private int mUnderlyingHeight;
    private int mUnderlyingWidth;

    public MatrixDrawable(Drawable drawable, Matrix matrix) {
        super((Drawable) Preconditions.checkNotNull(drawable));
        this.mUnderlyingWidth = 0;
        this.mUnderlyingHeight = 0;
        this.mMatrix = matrix;
    }

    @Override // com.facebook.drawee.drawable.ForwardingDrawable
    public Drawable setCurrent(Drawable drawable) {
        Drawable current = super.setCurrent(drawable);
        configureBounds();
        return current;
    }

    public Matrix getMatrix() {
        return this.mMatrix;
    }

    public void setMatrix(Matrix matrix) {
        this.mMatrix = matrix;
        configureBounds();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.ForwardingDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        configureBoundsIfUnderlyingChanged();
        if (this.mDrawMatrix != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.mDrawMatrix);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.drawable.ForwardingDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        configureBounds();
    }

    private void configureBoundsIfUnderlyingChanged() {
        if (this.mUnderlyingWidth != getCurrent().getIntrinsicWidth() || this.mUnderlyingHeight != getCurrent().getIntrinsicHeight()) {
            configureBounds();
        }
    }

    private void configureBounds() {
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.mUnderlyingWidth = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.mUnderlyingHeight = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.mDrawMatrix = null;
            return;
        }
        current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        this.mDrawMatrix = this.mMatrix;
    }

    @Override // com.facebook.drawee.drawable.ForwardingDrawable, com.facebook.drawee.drawable.TransformCallback
    public void getTransform(Matrix matrix) {
        super.getTransform(matrix);
        if (this.mDrawMatrix != null) {
            matrix.preConcat(this.mDrawMatrix);
        }
    }
}
