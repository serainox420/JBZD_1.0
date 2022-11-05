package com.mopub.mobileads.resource;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes3.dex */
public class CloseButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f4534a;
    private final float b;

    public CloseButtonDrawable() {
        this(8.0f);
    }

    public CloseButtonDrawable(float f) {
        this.b = f / 2.0f;
        this.f4534a = new Paint();
        this.f4534a.setColor(-1);
        this.f4534a.setStrokeWidth(f);
        this.f4534a.setStrokeCap(DrawableConstants.CloseButton.STROKE_CAP);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int width = getBounds().width();
        int height = getBounds().height();
        canvas.drawLine(BitmapDescriptorFactory.HUE_RED + this.b, height - this.b, width - this.b, BitmapDescriptorFactory.HUE_RED + this.b, this.f4534a);
        canvas.drawLine(BitmapDescriptorFactory.HUE_RED + this.b, BitmapDescriptorFactory.HUE_RED + this.b, width - this.b, height - this.b, this.f4534a);
    }
}
