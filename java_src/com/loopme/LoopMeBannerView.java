package com.loopme;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.loopme.common.Logging;
import com.loopme.debugging.ErrorLog;
/* loaded from: classes2.dex */
public class LoopMeBannerView extends FrameLayout {
    private static final String LOG_TAG = LoopMeBannerView.class.getSimpleName();

    public LoopMeBannerView(Context context) {
        super(context);
    }

    public LoopMeBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LoopMeBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public LoopMeBannerView(Context context, int i, int i2) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(i, i2));
    }

    public void setViewSize(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (RuntimeException e) {
            Logging.out(LOG_TAG, "Error during onDetachedFromWindow: " + e.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isHardwareAccelerated()) {
            Logging.out(LOG_TAG, "Warning: hardware acceleration is off");
            ErrorLog.post("Hardware acceleration is off");
        }
    }
}
