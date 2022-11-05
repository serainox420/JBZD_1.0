package com.mdotm.android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mdotm.android.utils.MdotMLogger;
/* loaded from: classes3.dex */
public class MdotMDecrementCounterView extends View {
    private float angle;
    private String counterSize;
    private String counterStroke;
    private int durationOfCounter;
    private int durationToDisplay;

    public MdotMDecrementCounterView(Context context, int i, int i2, String str, String str2) {
        super(context);
        this.angle = BitmapDescriptorFactory.HUE_RED;
        this.durationToDisplay = this.durationOfCounter;
        setFocusable(true);
        this.counterSize = str;
        this.counterStroke = str2;
        try {
            this.angle = (360 / (i2 / 1000)) * i;
            MdotMLogger.d(this, "durationOfCounter-remainingTime " + this.angle);
        } catch (ArithmeticException e) {
        }
        this.durationOfCounter = i2;
        this.durationToDisplay = i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(-7829368);
        paint.setStyle(Paint.Style.FILL);
        RectF rectF = new RectF(getPixels((int) (getMultipler(this.counterSize) * 0.0d)), getPixels((int) (getMultipler(this.counterSize) * 0.0d)), getPixels((int) (getMultipler(this.counterSize) * 22.0d)), getPixels((int) (getMultipler(this.counterSize) * 22.0d)));
        canvas.drawOval(rectF, paint);
        paint.setColor(Color.parseColor("#38BFEF"));
        canvas.drawArc(rectF, 270.0f, 360.0f - this.angle, true, paint);
        Paint paint2 = new Paint();
        paint2.setColor(-12303292);
        MdotMLogger.d(this, "durationToDisplay" + this.durationToDisplay);
        canvas.drawCircle(getPixels((int) (getMultipler(this.counterSize) * 11.0d)), getPixels((int) (getMultipler(this.counterSize) * 11.0d)), getPixels((int) ((getMultipler(this.counterSize) * 11.0d) - (getMultipler(this.counterStroke) * 3.0d))), paint2);
        if (this.durationToDisplay > 0) {
            paint.setColor(-1);
            paint.setTextSize(getPixels((int) (getMultipler(this.counterSize) * 7.0d)));
            if (this.durationToDisplay >= 10) {
                canvas.drawText(String.valueOf(this.durationToDisplay), getPixels((int) (getMultipler(this.counterSize) * 7.0d)), getPixels((int) (getMultipler(this.counterSize) * 13.0d)), paint);
            } else {
                canvas.drawText(String.valueOf(this.durationToDisplay), getPixels((int) (getMultipler(this.counterSize) * 9.0d)), getPixels((int) (getMultipler(this.counterSize) * 13.0d)), paint);
            }
        }
    }

    private int getPixels(int i) {
        return (int) ((getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    public static double getMultipler(String str) {
        if (str == null || !str.contains("%")) {
            return 1.0d;
        }
        return Double.parseDouble(str.split("%")[0]) / 100.0d;
    }

    public static double getStrokeMultipler(String str) {
        if (str == null || !str.contains("%")) {
            return 1.0d;
        }
        double parseDouble = Double.parseDouble(str.split("%")[0]) / 100.0d;
        double d = parseDouble - 1.0d;
        if (d != 0.0d && d > 0.0d) {
            return (d / 2.0d) + 1.0d;
        }
        return parseDouble;
    }
}
