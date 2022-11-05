package android.support.design.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.design.widget.b;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
public final class Snackbar extends b<Snackbar> {

    @RestrictTo
    /* loaded from: classes.dex */
    public static final class SnackbarLayout extends b.f {
        public SnackbarLayout(Context context) {
            super(context);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }
    }
}
