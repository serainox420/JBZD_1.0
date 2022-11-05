package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public class AutoRotateDrawable extends ForwardingDrawable implements CloneableDrawable, Runnable {
    private static final int DEGREES_IN_FULL_ROTATION = 360;
    private static final int FRAME_INTERVAL_MS = 20;
    private boolean mClockwise;
    private int mInterval;
    private boolean mIsScheduled;
    @VisibleForTesting
    float mRotationAngle;

    public AutoRotateDrawable(Drawable drawable, int i) {
        this(drawable, i, true);
    }

    public AutoRotateDrawable(Drawable drawable, int i, boolean z) {
        super((Drawable) Preconditions.checkNotNull(drawable));
        this.mRotationAngle = BitmapDescriptorFactory.HUE_RED;
        this.mIsScheduled = false;
        this.mInterval = i;
        this.mClockwise = z;
    }

    public void reset() {
        this.mRotationAngle = BitmapDescriptorFactory.HUE_RED;
        this.mIsScheduled = false;
        unscheduleSelf(this);
        invalidateSelf();
    }

    public void setClockwise(boolean z) {
        this.mClockwise = z;
    }

    @Override // com.facebook.drawee.drawable.ForwardingDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int save = canvas.save();
        Rect bounds = getBounds();
        int i = bounds.right - bounds.left;
        int i2 = bounds.bottom - bounds.top;
        float f = this.mRotationAngle;
        if (!this.mClockwise) {
            f = 360.0f - this.mRotationAngle;
        }
        canvas.rotate(f, (i / 2) + bounds.left, bounds.top + (i2 / 2));
        super.draw(canvas);
        canvas.restoreToCount(save);
        scheduleNextFrame();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.mIsScheduled = false;
        this.mRotationAngle += getIncrement();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.CloneableDrawable
    /* renamed from: cloneDrawable  reason: collision with other method in class */
    public AutoRotateDrawable mo77cloneDrawable() {
        return new AutoRotateDrawable(DrawableUtils.cloneDrawable(getDrawable()), this.mInterval, this.mClockwise);
    }

    private void scheduleNextFrame() {
        if (!this.mIsScheduled) {
            this.mIsScheduled = true;
            scheduleSelf(this, SystemClock.uptimeMillis() + 20);
        }
    }

    private int getIncrement() {
        return (int) ((20.0f / this.mInterval) * 360.0f);
    }
}
