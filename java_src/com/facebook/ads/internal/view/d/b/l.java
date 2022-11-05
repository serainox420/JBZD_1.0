package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Build;
import android.widget.Button;
/* loaded from: classes.dex */
public class l extends Button {

    /* renamed from: a  reason: collision with root package name */
    private final Path f2313a;
    private final Path b;
    private final Paint c;
    private final Path d;
    private boolean e;

    public l(Context context) {
        super(context);
        this.e = false;
        this.f2313a = new Path();
        this.b = new Path();
        this.d = new Path();
        this.c = new Paint() { // from class: com.facebook.ads.internal.view.d.b.l.1
            {
                setStyle(Paint.Style.FILL_AND_STROKE);
                setStrokeCap(Paint.Cap.ROUND);
                setStrokeWidth(3.0f);
                setAntiAlias(true);
                setColor(-1);
            }
        };
        setClickable(true);
        setBackgroundColor(0);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas.isHardwareAccelerated() && Build.VERSION.SDK_INT < 17) {
            setLayerType(1, null);
        }
        float max = Math.max(canvas.getWidth(), canvas.getHeight()) / 100.0f;
        if (this.e) {
            this.d.rewind();
            this.d.moveTo(26.5f * max, 15.5f * max);
            this.d.lineTo(26.5f * max, 84.5f * max);
            this.d.lineTo(82.5f * max, 50.5f * max);
            this.d.lineTo(26.5f * max, max * 15.5f);
            this.d.close();
            canvas.drawPath(this.d, this.c);
        } else {
            this.f2313a.rewind();
            this.f2313a.moveTo(29.0f * max, 21.0f * max);
            this.f2313a.lineTo(29.0f * max, 79.0f * max);
            this.f2313a.lineTo(45.0f * max, 79.0f * max);
            this.f2313a.lineTo(45.0f * max, 21.0f * max);
            this.f2313a.lineTo(29.0f * max, 21.0f * max);
            this.f2313a.close();
            this.b.rewind();
            this.b.moveTo(55.0f * max, 21.0f * max);
            this.b.lineTo(55.0f * max, 79.0f * max);
            this.b.lineTo(71.0f * max, 79.0f * max);
            this.b.lineTo(71.0f * max, 21.0f * max);
            this.b.lineTo(55.0f * max, max * 21.0f);
            this.b.close();
            canvas.drawPath(this.f2313a, this.c);
            canvas.drawPath(this.b, this.c);
        }
        super.onDraw(canvas);
    }

    public void setChecked(boolean z) {
        this.e = z;
        refreshDrawableState();
        invalidate();
    }
}
