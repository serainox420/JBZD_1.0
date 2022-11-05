package com.facebook.ads.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
/* loaded from: classes.dex */
public class g extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f2157a;
    private Paint b;
    private Paint c;
    private int d;
    private boolean e;

    public g(Context context) {
        this(context, 60, true);
    }

    public g(Context context, int i, boolean z) {
        super(context);
        this.d = i;
        this.e = z;
        if (z) {
            this.f2157a = new Paint();
            this.f2157a.setColor(-3355444);
            this.f2157a.setStyle(Paint.Style.STROKE);
            this.f2157a.setStrokeWidth(3.0f);
            this.f2157a.setAntiAlias(true);
            this.b = new Paint();
            this.b.setColor(-1287371708);
            this.b.setStyle(Paint.Style.FILL);
            this.b.setAntiAlias(true);
            this.c = new Paint();
            this.c.setColor(-1);
            this.c.setStyle(Paint.Style.STROKE);
            this.c.setStrokeWidth(6.0f);
            this.c.setAntiAlias(true);
        }
        a();
    }

    private void a() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.d * displayMetrics.density), (int) (displayMetrics.density * this.d));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.e) {
            if (canvas.isHardwareAccelerated() && Build.VERSION.SDK_INT < 17) {
                setLayerType(1, null);
            }
            int min = Math.min(canvas.getWidth(), canvas.getHeight());
            int i = min / 2;
            int i2 = min / 2;
            int i3 = (i * 2) / 3;
            canvas.drawCircle(i, i2, i3, this.f2157a);
            canvas.drawCircle(i, i2, i3 - 2, this.b);
            int i4 = min / 3;
            int i5 = min / 3;
            canvas.drawLine(i4, i5, i4 * 2, i5 * 2, this.c);
            canvas.drawLine(i4 * 2, i5, i4, i5 * 2, this.c);
        }
        super.onDraw(canvas);
    }
}
