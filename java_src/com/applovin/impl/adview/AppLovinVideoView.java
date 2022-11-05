package com.applovin.impl.adview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.VideoView;
/* loaded from: classes.dex */
public class AppLovinVideoView extends VideoView {

    /* renamed from: a  reason: collision with root package name */
    private int f1534a;
    private int b;

    public AppLovinVideoView(Context context) {
        this(context, null);
    }

    public AppLovinVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppLovinVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1534a = 0;
        this.b = 0;
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        int ceil;
        int ceil2;
        if (this.f1534a <= 0 || this.b <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        float height = this.b / getHeight();
        float width = this.f1534a / getWidth();
        if (height > width) {
            ceil = (int) Math.ceil(this.b / height);
            ceil2 = (int) Math.ceil(this.f1534a / height);
        } else {
            ceil = (int) Math.ceil(this.b / width);
            ceil2 = (int) Math.ceil(this.f1534a / width);
        }
        setMeasuredDimension(ceil2, ceil);
    }

    public void setVideoSize(int i, int i2) {
        this.f1534a = i;
        this.b = i2;
        try {
            getHolder().setFixedSize(i, i2);
            requestLayout();
            invalidate();
        } catch (Exception e) {
        }
    }
}
