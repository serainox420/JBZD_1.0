package com.facebook.drawee.debug;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.drawee.drawable.ScalingUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class DebugControllerOverlayDrawable extends Drawable {
    private static final float IMAGE_SIZE_THRESHOLD_NOT_OK = 0.5f;
    private static final float IMAGE_SIZE_THRESHOLD_OK = 0.1f;
    private static final int MAX_LINE_WIDTH_EM = 7;
    private static final int MAX_NUMBER_OF_LINES = 7;
    private static final int MAX_TEXT_SIZE_PX = 40;
    private static final int MIN_TEXT_SIZE_PX = 12;
    private static final String NO_CONTROLLER_ID = "none";
    private static final int OUTLINE_COLOR = -26624;
    private static final int OUTLINE_STROKE_WIDTH_PX = 2;
    @VisibleForTesting
    static final int OVERLAY_COLOR_IMAGE_ALMOST_OK = 1728026624;
    @VisibleForTesting
    static final int OVERLAY_COLOR_IMAGE_NOT_OK = 1727284022;
    @VisibleForTesting
    static final int OVERLAY_COLOR_IMAGE_OK = 1716301648;
    private static final int TEXT_COLOR = -1;
    private static final int TEXT_LINE_SPACING_PX = 8;
    private static final int TEXT_PADDING_PX = 10;
    private String mControllerId;
    private int mCurrentTextXPx;
    private int mCurrentTextYPx;
    private int mFrameCount;
    private int mHeightPx;
    private String mImageFormat;
    private int mImageSizeBytes;
    private int mLineIncrementPx;
    private int mLoopCount;
    private ScalingUtils.ScaleType mScaleType;
    private int mStartTextXPx;
    private int mStartTextYPx;
    private int mWidthPx;
    private int mTextGravity = 80;
    private final Paint mPaint = new Paint(1);
    private final Matrix mMatrix = new Matrix();
    private final Rect mRect = new Rect();
    private final RectF mRectF = new RectF();

    public DebugControllerOverlayDrawable() {
        reset();
    }

    public void reset() {
        this.mWidthPx = -1;
        this.mHeightPx = -1;
        this.mImageSizeBytes = -1;
        this.mFrameCount = -1;
        this.mLoopCount = -1;
        this.mImageFormat = null;
        setControllerId(null);
        invalidateSelf();
    }

    public void setTextGravity(int i) {
        this.mTextGravity = i;
        invalidateSelf();
    }

    public void setControllerId(@Nullable String str) {
        if (str == null) {
            str = "none";
        }
        this.mControllerId = str;
        invalidateSelf();
    }

    public void setDimensions(int i, int i2) {
        this.mWidthPx = i;
        this.mHeightPx = i2;
        invalidateSelf();
    }

    public void setAnimationInfo(int i, int i2) {
        this.mFrameCount = i;
        this.mLoopCount = i2;
        invalidateSelf();
    }

    public void setImageSize(int i) {
        this.mImageSizeBytes = i;
    }

    public void setImageFormat(@Nullable String str) {
        this.mImageFormat = str;
    }

    public void setScaleType(ScalingUtils.ScaleType scaleType) {
        this.mScaleType = scaleType;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        prepareDebugTextParameters(rect, 7, 7);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(2.0f);
        this.mPaint.setColor(OUTLINE_COLOR);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.mPaint);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(determineOverlayColor(this.mWidthPx, this.mHeightPx, this.mScaleType));
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.mPaint);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.mPaint.setColor(-1);
        this.mCurrentTextXPx = this.mStartTextXPx;
        this.mCurrentTextYPx = this.mStartTextYPx;
        addDebugText(canvas, "ID: %s", this.mControllerId);
        addDebugText(canvas, "D: %dx%d", Integer.valueOf(bounds.width()), Integer.valueOf(bounds.height()));
        addDebugText(canvas, "I: %dx%d", Integer.valueOf(this.mWidthPx), Integer.valueOf(this.mHeightPx));
        addDebugText(canvas, "I: %d KiB", Integer.valueOf(this.mImageSizeBytes / 1024));
        if (this.mImageFormat != null) {
            addDebugText(canvas, "i format: %s", this.mImageFormat);
        }
        if (this.mFrameCount > 0) {
            addDebugText(canvas, "anim: f %d, l %d", Integer.valueOf(this.mFrameCount), Integer.valueOf(this.mLoopCount));
        }
        if (this.mScaleType != null) {
            addDebugText(canvas, "scale: %s", this.mScaleType);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    private void prepareDebugTextParameters(Rect rect, int i, int i2) {
        int min = Math.min(40, Math.max(12, Math.min(rect.width() / i2, rect.height() / i)));
        this.mPaint.setTextSize(min);
        this.mLineIncrementPx = min + 8;
        if (this.mTextGravity == 80) {
            this.mLineIncrementPx *= -1;
        }
        this.mStartTextXPx = rect.left + 10;
        this.mStartTextYPx = this.mTextGravity == 80 ? rect.bottom - 10 : rect.top + 10 + 12;
    }

    private void addDebugText(Canvas canvas, String str, @Nullable Object... objArr) {
        if (objArr == null) {
            canvas.drawText(str, this.mCurrentTextXPx, this.mCurrentTextYPx, this.mPaint);
        } else {
            canvas.drawText(String.format(str, objArr), this.mCurrentTextXPx, this.mCurrentTextYPx, this.mPaint);
        }
        this.mCurrentTextYPx += this.mLineIncrementPx;
    }

    @VisibleForTesting
    int determineOverlayColor(int i, int i2, @Nullable ScalingUtils.ScaleType scaleType) {
        int i3;
        int i4;
        int width = getBounds().width();
        int height = getBounds().height();
        if (width <= 0 || height <= 0 || i <= 0 || i2 <= 0) {
            return OVERLAY_COLOR_IMAGE_NOT_OK;
        }
        if (scaleType != null) {
            Rect rect = this.mRect;
            this.mRect.top = 0;
            rect.left = 0;
            this.mRect.right = width;
            this.mRect.bottom = height;
            this.mMatrix.reset();
            scaleType.getTransform(this.mMatrix, this.mRect, i, i2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            RectF rectF = this.mRectF;
            this.mRectF.top = BitmapDescriptorFactory.HUE_RED;
            rectF.left = BitmapDescriptorFactory.HUE_RED;
            this.mRectF.right = i;
            this.mRectF.bottom = i2;
            this.mMatrix.mapRect(this.mRectF);
            int height2 = (int) this.mRectF.height();
            i4 = Math.min(width, (int) this.mRectF.width());
            i3 = Math.min(height, height2);
        } else {
            i3 = height;
            i4 = width;
        }
        float f = i4 * IMAGE_SIZE_THRESHOLD_OK;
        float f2 = i4 * IMAGE_SIZE_THRESHOLD_NOT_OK;
        float f3 = i3 * IMAGE_SIZE_THRESHOLD_OK;
        float f4 = i3 * IMAGE_SIZE_THRESHOLD_NOT_OK;
        int abs = Math.abs(i - i4);
        int abs2 = Math.abs(i2 - i3);
        if (abs < f && abs2 < f3) {
            return OVERLAY_COLOR_IMAGE_OK;
        }
        return (((float) abs) >= f2 || ((float) abs2) >= f4) ? OVERLAY_COLOR_IMAGE_NOT_OK : OVERLAY_COLOR_IMAGE_ALMOST_OK;
    }
}
