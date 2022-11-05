package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
public class CtaButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f4535a;
    private final Paint b;
    private final Paint c;
    private final RectF d;
    private final Rect e;
    private final int f;
    private String g;

    public CtaButtonDrawable(Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(2.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(15.0f, context);
        this.f4535a = new Paint();
        this.f4535a.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.f4535a.setAlpha(51);
        this.f4535a.setStyle(DrawableConstants.CtaButton.BACKGROUND_STYLE);
        this.f4535a.setAntiAlias(true);
        this.b = new Paint();
        this.b.setColor(-1);
        this.b.setAlpha(51);
        this.b.setStyle(DrawableConstants.CtaButton.OUTLINE_STYLE);
        this.b.setStrokeWidth(dipsToIntPixels);
        this.b.setAntiAlias(true);
        this.c = new Paint();
        this.c.setColor(-1);
        this.c.setTextAlign(DrawableConstants.CtaButton.TEXT_ALIGN);
        this.c.setTypeface(DrawableConstants.CtaButton.TEXT_TYPEFACE);
        this.c.setTextSize(dipsToFloatPixels);
        this.c.setAntiAlias(true);
        this.e = new Rect();
        this.g = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;
        this.d = new RectF();
        this.f = Dips.dipsToIntPixels(6.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.d.set(getBounds());
        canvas.drawRoundRect(this.d, this.f, this.f, this.f4535a);
        canvas.drawRoundRect(this.d, this.f, this.f, this.b);
        a(canvas, this.c, this.e, this.g);
    }

    public void setCtaText(String str) {
        this.g = str;
        invalidateSelf();
    }

    @VisibleForTesting
    @Deprecated
    public String getCtaText() {
        return this.g;
    }
}
