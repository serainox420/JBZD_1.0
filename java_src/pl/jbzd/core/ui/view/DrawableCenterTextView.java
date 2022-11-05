package pl.jbzd.core.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3.dex */
public class DrawableCenterTextView extends TextView {
    public DrawableCenterTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public DrawableCenterTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int intrinsicWidth;
        Drawable[] compoundDrawables = getCompoundDrawables();
        Drawable drawable = compoundDrawables[0];
        Drawable drawable2 = compoundDrawables[2];
        if (drawable != null || drawable2 != null) {
            float measureText = getPaint().measureText(getText().toString());
            int compoundDrawablePadding = getCompoundDrawablePadding();
            if (drawable != null) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            } else {
                intrinsicWidth = drawable2.getIntrinsicWidth();
            }
            canvas.translate((getWidth() - ((intrinsicWidth + measureText) + compoundDrawablePadding)) / 2.0f, BitmapDescriptorFactory.HUE_RED);
        }
        super.onDraw(canvas);
    }
}
