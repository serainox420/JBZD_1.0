package com.facebook.ads.internal.view;

import android.content.Context;
import android.widget.RelativeLayout;
/* loaded from: classes.dex */
public class o extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f2356a;
    private int b;

    public o(Context context) {
        super(context);
        this.f2356a = 0;
        this.b = 0;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.b > 0 && getMeasuredWidth() > this.b) {
            setMeasuredDimension(this.b, getMeasuredHeight());
        } else if (getMeasuredWidth() >= this.f2356a) {
        } else {
            setMeasuredDimension(this.f2356a, getMeasuredHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setMaxWidth(int i) {
        this.b = i;
    }

    public void setMinWidth(int i) {
        this.f2356a = i;
    }
}
