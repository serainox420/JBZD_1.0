package com.openx.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.openx.android_sdk_openx.R;
/* loaded from: classes3.dex */
public class AdCloseButton extends ImageView {
    public AdCloseButton(Context context) {
        super(context);
        init(context.getResources());
    }

    public AdCloseButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context.getResources());
    }

    public AdCloseButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context.getResources());
    }

    private void init(Resources resources) {
        setImageResource(R.drawable.openx_res_mraid_close);
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    }

    public AdCloseButton placeButton() {
        return this;
    }
}
