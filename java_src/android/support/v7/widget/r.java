package android.support.v7.widget;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.v7.widget.ak;
/* compiled from: CardViewJellybeanMr1.java */
@TargetApi(17)
/* loaded from: classes.dex */
class r extends p {
    @Override // android.support.v7.widget.p, android.support.v7.widget.q
    public void a() {
        ak.c = new ak.a() { // from class: android.support.v7.widget.r.1
            @Override // android.support.v7.widget.ak.a
            public void a(Canvas canvas, RectF rectF, float f, Paint paint) {
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        };
    }
}
