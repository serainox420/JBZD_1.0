package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
public class ProgressBarDrawable extends BaseWidgetDrawable {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f4536a = new Paint();
    private final Paint b;
    private int c;
    private int d;
    private int e;
    private int f;
    private float g;
    private final int h;

    public ProgressBarDrawable(Context context) {
        this.f4536a.setColor(-1);
        this.f4536a.setAlpha(128);
        this.f4536a.setStyle(DrawableConstants.ProgressBar.BACKGROUND_STYLE);
        this.f4536a.setAntiAlias(true);
        this.b = new Paint();
        this.b.setColor(DrawableConstants.ProgressBar.PROGRESS_COLOR);
        this.b.setAlpha(255);
        this.b.setStyle(DrawableConstants.ProgressBar.PROGRESS_STYLE);
        this.b.setAntiAlias(true);
        this.h = Dips.dipsToIntPixels(4.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.f4536a);
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * (this.e / this.c), getBounds().bottom, this.b);
        if (this.d > 0 && this.d < this.c) {
            float f = this.g * getBounds().right;
            canvas.drawRect(f, getBounds().top, f + this.h, getBounds().bottom, this.b);
        }
    }

    public void reset() {
        this.f = 0;
    }

    public void setDurationAndSkipOffset(int i, int i2) {
        this.c = i;
        this.d = i2;
        this.g = this.d / this.c;
    }

    public void setProgress(int i) {
        if (i >= this.f) {
            this.e = i;
            this.f = i;
        } else if (i != 0) {
            MoPubLog.d(String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(this.f), Integer.valueOf(i)));
            forceCompletion();
        }
        invalidateSelf();
    }

    @VisibleForTesting
    public void forceCompletion() {
        this.e = this.c;
    }

    @VisibleForTesting
    @Deprecated
    public float getSkipRatio() {
        return this.g;
    }

    @VisibleForTesting
    @Deprecated
    public int getCurrentProgress() {
        return this.e;
    }
}
