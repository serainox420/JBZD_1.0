package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
public class j extends d {
    private final TextView b;
    private final Paint c;
    private final RectF d;

    public j(Context context, String str, int i) {
        super(context);
        this.b = new TextView(context);
        this.b.setGravity(17);
        this.b.setText(str);
        this.b.setTextSize(i);
        this.c = new Paint();
        this.c.setStyle(Paint.Style.FILL);
        this.c.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.c.setAlpha(178);
        this.d = new RectF();
        setBackgroundColor(0);
        addView(this.b);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.d.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
        canvas.drawRoundRect(this.d, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.c);
        super.onDraw(canvas);
    }
}
