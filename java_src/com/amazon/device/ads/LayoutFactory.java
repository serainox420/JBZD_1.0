package com.amazon.device.ads;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
/* loaded from: classes.dex */
class LayoutFactory {

    /* loaded from: classes.dex */
    enum LayoutType {
        RELATIVE_LAYOUT,
        LINEAR_LAYOUT,
        FRAME_LAYOUT
    }

    public ViewGroup createLayout(Context context, LayoutType layoutType, String str) {
        ViewGroup frameLayout;
        switch (layoutType) {
            case RELATIVE_LAYOUT:
                frameLayout = new RelativeLayout(context);
                break;
            case FRAME_LAYOUT:
                frameLayout = new FrameLayout(context);
                break;
            default:
                frameLayout = new LinearLayout(context);
                break;
        }
        frameLayout.setContentDescription(str);
        return frameLayout;
    }
}
