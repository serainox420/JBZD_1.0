package com.applovin.adview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes.dex */
public class AppLovinTouchToClickListener implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private long f1511a;
    private float b;
    private float c;
    private Context d;
    private View.OnClickListener e;

    public AppLovinTouchToClickListener(Context context, View.OnClickListener onClickListener) {
        this.d = context;
        this.e = onClickListener;
    }

    private float a(float f) {
        return f / this.d.getResources().getDisplayMetrics().density;
    }

    private float a(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return a((float) Math.sqrt((f5 * f5) + (f6 * f6)));
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.f1511a = System.currentTimeMillis();
                this.b = motionEvent.getX();
                this.c = motionEvent.getY();
                return true;
            case 1:
                if (System.currentTimeMillis() - this.f1511a >= 1000 || a(this.b, this.c, motionEvent.getX(), motionEvent.getY()) >= 10.0f) {
                    return true;
                }
                this.e.onClick(view);
                return true;
            default:
                return true;
        }
    }
}
