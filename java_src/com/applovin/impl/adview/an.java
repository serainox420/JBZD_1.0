package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
public class an extends u {
    private float c;
    private float d;
    private float e;
    private float f;
    private float g;

    public an(AppLovinSdk appLovinSdk, Context context) {
        super(appLovinSdk, context);
        this.c = 30.0f;
        this.d = 2.0f;
        this.e = 8.0f;
        this.f = 2.0f;
        this.g = 1.0f;
    }

    protected float a() {
        return this.c * this.g;
    }

    public void a(float f) {
        this.g = f;
    }

    @Override // com.applovin.impl.adview.u
    public void a(int i) {
        a(i / this.c);
    }

    protected float b() {
        return this.e * this.g;
    }

    protected float c() {
        return this.f * this.g;
    }

    protected float d() {
        return a() / 2.0f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float d = d();
        Paint paint = new Paint(1);
        paint.setARGB(80, 0, 0, 0);
        canvas.drawCircle(d, d, d, paint);
        Paint paint2 = new Paint(1);
        paint2.setColor(-1);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(c());
        float b = b();
        float a2 = a() - b;
        canvas.drawLine(b, b, a2, a2, paint2);
        canvas.drawLine(b, a2, a2, b, paint2);
    }
}
