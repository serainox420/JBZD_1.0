package com.intentsoftware.addapptr.fullscreens;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
/* compiled from: CloseDrawable.java */
/* loaded from: classes2.dex */
class a extends Drawable {
    private static final int[] SHADOW_COLORS = {DrawableConstants.TRANSPARENT_GRAY, DrawableConstants.TRANSPARENT_GRAY, 0};
    private static final float[] SHADOW_POSITIONS = {BitmapDescriptorFactory.HUE_RED, 0.8f, 1.0f};
    private final boolean enabled;

    public a(boolean z) {
        this.enabled = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i;
        int i2;
        Rect bounds = getBounds();
        float height = bounds.height();
        float width = bounds.width();
        float f = (width + height) * 0.5f;
        float f2 = f * 0.5f;
        float f3 = f * 0.85f * 0.5f;
        float f4 = f3 * 0.2f;
        float f5 = f4 * 0.55f;
        float f6 = f4 * 1.5f;
        float f7 = f5 * 0.75f;
        if (this.enabled) {
            i = -16777216;
            i2 = -1;
        } else {
            i = -1;
            i2 = -16777216;
        }
        int save = canvas.save();
        canvas.translate(width / 2.0f, height / 2.0f);
        Paint paint = new Paint();
        paint.setFlags(1);
        paint.setShader(new RadialGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, f2, SHADOW_COLORS, SHADOW_POSITIONS, Shader.TileMode.CLAMP));
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f2, paint);
        paint.setShader(null);
        paint.setColor(i2);
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f3, paint);
        paint.setColor(i);
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f3 - f4, paint);
        paint.setColor(i2);
        paint.setPathEffect(new CornerPathEffect(f7));
        canvas.rotate(45.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        canvas.drawRect(-f5, (-f3) + f6, f5, f3 - f6, paint);
        canvas.drawRect((-f3) + f6, -f5, f3 - f6, f5, paint);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }
}
