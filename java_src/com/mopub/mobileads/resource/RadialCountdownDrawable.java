package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Numbers;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
public class RadialCountdownDrawable extends BaseWidgetDrawable {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f4537a;
    private final Paint b;
    private final Paint c;
    private Rect d;
    private int e;
    private int f;
    private float g;

    public RadialCountdownDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(3.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(18.0f, context);
        this.f4537a = new Paint();
        this.f4537a.setColor(-1);
        this.f4537a.setAlpha(128);
        this.f4537a.setStyle(DrawableConstants.RadialCountdown.BACKGROUND_STYLE);
        this.f4537a.setStrokeWidth(dipsToIntPixels);
        this.f4537a.setAntiAlias(true);
        this.b = new Paint();
        this.b.setColor(-1);
        this.b.setAlpha(255);
        this.b.setStyle(DrawableConstants.RadialCountdown.PROGRESS_STYLE);
        this.b.setStrokeWidth(dipsToIntPixels);
        this.b.setAntiAlias(true);
        this.c = new Paint();
        this.c.setColor(-1);
        this.c.setTextAlign(DrawableConstants.RadialCountdown.TEXT_ALIGN);
        this.c.setTextSize(dipsToFloatPixels);
        this.c.setAntiAlias(true);
        this.d = new Rect();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int centerX = getBounds().centerX();
        int centerY = getBounds().centerY();
        canvas.drawCircle(centerX, centerY, Math.min(centerX, centerY), this.f4537a);
        a(canvas, this.c, this.d, String.valueOf(this.f));
        canvas.drawArc(new RectF(getBounds()), -90.0f, this.g, false, this.b);
    }

    public void setInitialCountdown(int i) {
        this.e = i;
    }

    public void updateCountdownProgress(int i) {
        this.f = (int) Numbers.convertMillisecondsToSecondsRoundedUp(this.e - i);
        this.g = (360.0f * i) / this.e;
        invalidateSelf();
    }

    @VisibleForTesting
    @Deprecated
    public int getInitialCountdownMilliseconds() {
        return this.e;
    }
}
