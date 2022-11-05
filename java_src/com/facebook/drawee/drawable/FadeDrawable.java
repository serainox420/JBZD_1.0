package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* loaded from: classes.dex */
public class FadeDrawable extends ArrayDrawable {
    @VisibleForTesting
    public static final int TRANSITION_NONE = 2;
    @VisibleForTesting
    public static final int TRANSITION_RUNNING = 1;
    @VisibleForTesting
    public static final int TRANSITION_STARTING = 0;
    @VisibleForTesting
    int mAlpha;
    @VisibleForTesting
    int[] mAlphas;
    @VisibleForTesting
    int mDurationMs;
    @VisibleForTesting
    boolean[] mIsLayerOn;
    private final Drawable[] mLayers;
    @VisibleForTesting
    int mPreventInvalidateCount;
    @VisibleForTesting
    int[] mStartAlphas;
    @VisibleForTesting
    long mStartTimeMs;
    @VisibleForTesting
    int mTransitionState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FadeDrawable(Drawable[] drawableArr) {
        super(drawableArr);
        boolean z = true;
        Preconditions.checkState(drawableArr.length < 1 ? false : z, "At least one layer required!");
        this.mLayers = drawableArr;
        this.mStartAlphas = new int[drawableArr.length];
        this.mAlphas = new int[drawableArr.length];
        this.mAlpha = 255;
        this.mIsLayerOn = new boolean[drawableArr.length];
        this.mPreventInvalidateCount = 0;
        resetInternal();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.mPreventInvalidateCount == 0) {
            super.invalidateSelf();
        }
    }

    public void beginBatchMode() {
        this.mPreventInvalidateCount++;
    }

    public void endBatchMode() {
        this.mPreventInvalidateCount--;
        invalidateSelf();
    }

    public void setTransitionDuration(int i) {
        this.mDurationMs = i;
        if (this.mTransitionState == 1) {
            this.mTransitionState = 0;
        }
    }

    public int getTransitionDuration() {
        return this.mDurationMs;
    }

    private void resetInternal() {
        this.mTransitionState = 2;
        Arrays.fill(this.mStartAlphas, 0);
        this.mStartAlphas[0] = 255;
        Arrays.fill(this.mAlphas, 0);
        this.mAlphas[0] = 255;
        Arrays.fill(this.mIsLayerOn, false);
        this.mIsLayerOn[0] = true;
    }

    public void reset() {
        resetInternal();
        invalidateSelf();
    }

    public void fadeInLayer(int i) {
        this.mTransitionState = 0;
        this.mIsLayerOn[i] = true;
        invalidateSelf();
    }

    public void fadeOutLayer(int i) {
        this.mTransitionState = 0;
        this.mIsLayerOn[i] = false;
        invalidateSelf();
    }

    public void fadeInAllLayers() {
        this.mTransitionState = 0;
        Arrays.fill(this.mIsLayerOn, true);
        invalidateSelf();
    }

    public void fadeOutAllLayers() {
        this.mTransitionState = 0;
        Arrays.fill(this.mIsLayerOn, false);
        invalidateSelf();
    }

    public void fadeToLayer(int i) {
        this.mTransitionState = 0;
        Arrays.fill(this.mIsLayerOn, false);
        this.mIsLayerOn[i] = true;
        invalidateSelf();
    }

    public void fadeUpToLayer(int i) {
        this.mTransitionState = 0;
        Arrays.fill(this.mIsLayerOn, 0, i + 1, true);
        Arrays.fill(this.mIsLayerOn, i + 1, this.mLayers.length, false);
        invalidateSelf();
    }

    public void finishTransitionImmediately() {
        this.mTransitionState = 2;
        for (int i = 0; i < this.mLayers.length; i++) {
            this.mAlphas[i] = this.mIsLayerOn[i] ? 255 : 0;
        }
        invalidateSelf();
    }

    private boolean updateAlphas(float f) {
        boolean z = true;
        for (int i = 0; i < this.mLayers.length; i++) {
            this.mAlphas[i] = (int) (((this.mIsLayerOn[i] ? 1 : -1) * 255 * f) + this.mStartAlphas[i]);
            if (this.mAlphas[i] < 0) {
                this.mAlphas[i] = 0;
            }
            if (this.mAlphas[i] > 255) {
                this.mAlphas[i] = 255;
            }
            if (this.mIsLayerOn[i] && this.mAlphas[i] < 255) {
                z = false;
            }
            if (!this.mIsLayerOn[i] && this.mAlphas[i] > 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.facebook.drawee.drawable.ArrayDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i = 2;
        boolean z = true;
        switch (this.mTransitionState) {
            case 0:
                System.arraycopy(this.mAlphas, 0, this.mStartAlphas, 0, this.mLayers.length);
                this.mStartTimeMs = getCurrentTimeMs();
                boolean updateAlphas = updateAlphas(this.mDurationMs == 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                this.mTransitionState = updateAlphas ? 2 : 1;
                z = updateAlphas;
                break;
            case 1:
                Preconditions.checkState(this.mDurationMs > 0);
                boolean updateAlphas2 = updateAlphas(((float) (getCurrentTimeMs() - this.mStartTimeMs)) / this.mDurationMs);
                if (!updateAlphas2) {
                    i = 1;
                }
                this.mTransitionState = i;
                z = updateAlphas2;
                break;
        }
        for (int i2 = 0; i2 < this.mLayers.length; i2++) {
            drawDrawableWithAlpha(canvas, this.mLayers[i2], (this.mAlphas[i2] * this.mAlpha) / 255);
        }
        if (!z) {
            invalidateSelf();
        }
    }

    private void drawDrawableWithAlpha(Canvas canvas, Drawable drawable, int i) {
        if (drawable != null && i > 0) {
            this.mPreventInvalidateCount++;
            drawable.mutate().setAlpha(i);
            this.mPreventInvalidateCount--;
            drawable.draw(canvas);
        }
    }

    @Override // com.facebook.drawee.drawable.ArrayDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.mAlpha != i) {
            this.mAlpha = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    protected long getCurrentTimeMs() {
        return SystemClock.uptimeMillis();
    }

    @VisibleForTesting
    public int getTransitionState() {
        return this.mTransitionState;
    }

    public boolean isLayerOn(int i) {
        return this.mIsLayerOn[i];
    }
}
