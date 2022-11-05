package com.facebook.ads.internal.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
/* loaded from: classes.dex */
public class n extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private float f2355a;
    private float b;

    public n(Context context) {
        super(context);
        this.b = 8.0f;
        super.setSingleLine();
        super.setMaxLines(1);
        this.f2355a = getTextSize() / context.getResources().getDisplayMetrics().density;
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int measuredHeight = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        for (float f = this.f2355a; f >= this.b; f -= 0.5f) {
            super.setTextSize(f);
            measure(0, 0);
            if (getMeasuredWidth() <= i5) {
                break;
            }
        }
        if (getMeasuredWidth() > i5) {
            measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
    }

    public void setMinTextSize(float f) {
        if (f <= this.f2355a) {
            this.b = f;
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        this.f2355a = f;
        super.setTextSize(f);
    }
}
