package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private float f3458a;
    private int b;

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.b = obtainStyledAttributes.getInt(R.styleable.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    public void setAspectRatio(float f) {
        if (this.f3458a != f) {
            this.f3458a = f;
            requestLayout();
        }
    }

    public void setResizeMode(int i) {
        if (this.b != i) {
            this.b = i;
            requestLayout();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.b != 3 && this.f3458a > BitmapDescriptorFactory.HUE_RED) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f = (this.f3458a / (measuredWidth / measuredHeight)) - 1.0f;
            if (Math.abs(f) > 0.01f) {
                switch (this.b) {
                    case 1:
                        measuredHeight = (int) (measuredWidth / this.f3458a);
                        break;
                    case 2:
                        measuredWidth = (int) (measuredHeight * this.f3458a);
                        break;
                    default:
                        if (f > BitmapDescriptorFactory.HUE_RED) {
                            measuredHeight = (int) (measuredWidth / this.f3458a);
                            break;
                        } else {
                            measuredWidth = (int) (measuredHeight * this.f3458a);
                            break;
                        }
                }
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            }
        }
    }
}
