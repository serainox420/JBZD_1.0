package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.Objects;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.drawee.drawable.ScalingUtils;
/* loaded from: classes.dex */
public class ScaleTypeDrawable extends ForwardingDrawable {
    @VisibleForTesting
    Matrix mDrawMatrix;
    @VisibleForTesting
    PointF mFocusPoint;
    @VisibleForTesting
    ScalingUtils.ScaleType mScaleType;
    @VisibleForTesting
    Object mScaleTypeState;
    private Matrix mTempMatrix;
    @VisibleForTesting
    int mUnderlyingHeight;
    @VisibleForTesting
    int mUnderlyingWidth;

    public ScaleTypeDrawable(Drawable drawable, ScalingUtils.ScaleType scaleType) {
        super((Drawable) Preconditions.checkNotNull(drawable));
        this.mFocusPoint = null;
        this.mUnderlyingWidth = 0;
        this.mUnderlyingHeight = 0;
        this.mTempMatrix = new Matrix();
        this.mScaleType = scaleType;
    }

    @Override // com.facebook.drawee.drawable.ForwardingDrawable
    public Drawable setCurrent(Drawable drawable) {
        Drawable current = super.setCurrent(drawable);
        configureBounds();
        return current;
    }

    public ScalingUtils.ScaleType getScaleType() {
        return this.mScaleType;
    }

    public void setScaleType(ScalingUtils.ScaleType scaleType) {
        if (!Objects.equal(this.mScaleType, scaleType)) {
            this.mScaleType = scaleType;
            this.mScaleTypeState = null;
            configureBounds();
            invalidateSelf();
        }
    }

    public PointF getFocusPoint() {
        return this.mFocusPoint;
    }

    public void setFocusPoint(PointF pointF) {
        if (!Objects.equal(this.mFocusPoint, pointF)) {
            if (this.mFocusPoint == null) {
                this.mFocusPoint = new PointF();
            }
            this.mFocusPoint.set(pointF);
            configureBounds();
            invalidateSelf();
        }
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

    @Override // com.facebook.drawee.drawable.ForwardingDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        configureBounds();
    }

    private void configureBoundsIfUnderlyingChanged() {
        boolean z;
        boolean z2 = false;
        if (this.mScaleType instanceof ScalingUtils.StatefulScaleType) {
            Object state = ((ScalingUtils.StatefulScaleType) this.mScaleType).getState();
            z = state == null || !state.equals(this.mScaleTypeState);
            this.mScaleTypeState = state;
        } else {
            z = false;
        }
        if (this.mUnderlyingWidth != getCurrent().getIntrinsicWidth() || this.mUnderlyingHeight != getCurrent().getIntrinsicHeight()) {
            z2 = true;
        }
        if (z2 || z) {
            configureBounds();
        }
    }

    @VisibleForTesting
    void configureBounds() {
        float f = 0.5f;
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.mUnderlyingWidth = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.mUnderlyingHeight = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.mDrawMatrix = null;
        } else if (intrinsicWidth == width && intrinsicHeight == height) {
            current.setBounds(bounds);
            this.mDrawMatrix = null;
        } else if (this.mScaleType == ScalingUtils.ScaleType.FIT_XY) {
            current.setBounds(bounds);
            this.mDrawMatrix = null;
        } else {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            ScalingUtils.ScaleType scaleType = this.mScaleType;
            Matrix matrix = this.mTempMatrix;
            float f2 = this.mFocusPoint != null ? this.mFocusPoint.x : 0.5f;
            if (this.mFocusPoint != null) {
                f = this.mFocusPoint.y;
            }
            scaleType.getTransform(matrix, bounds, intrinsicWidth, intrinsicHeight, f2, f);
            this.mDrawMatrix = this.mTempMatrix;
        }
    }

    @Override // com.facebook.drawee.drawable.ForwardingDrawable, com.facebook.drawee.drawable.TransformCallback
    public void getTransform(Matrix matrix) {
        getParentTransform(matrix);
        configureBoundsIfUnderlyingChanged();
        if (this.mDrawMatrix != null) {
            matrix.preConcat(this.mDrawMatrix);
        }
    }
}
