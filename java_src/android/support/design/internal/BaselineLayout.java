package android.support.design.internal;

import android.content.Context;
import android.support.v4.view.ai;
import android.support.v7.widget.ba;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public class BaselineLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private int f20a;

    public BaselineLayout(Context context) {
        super(context, null, 0);
        this.f20a = -1;
    }

    public BaselineLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20a = -1;
    }

    public BaselineLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20a = -1;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        int i5 = -1;
        int i6 = 0;
        int i7 = 0;
        int i8 = -1;
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                int baseline = childAt.getBaseline();
                if (baseline != -1) {
                    i5 = Math.max(i5, baseline);
                    i8 = Math.max(i8, childAt.getMeasuredHeight() - baseline);
                }
                i7 = Math.max(i7, childAt.getMeasuredWidth());
                i6 = Math.max(i6, childAt.getMeasuredHeight());
                i4 = ba.a(i4, ai.j(childAt));
            }
            i3++;
            i8 = i8;
            i5 = i5;
            i4 = i4;
        }
        if (i5 != -1) {
            i6 = Math.max(i6, Math.max(i8, getPaddingBottom()) + i5);
            this.f20a = i5;
        }
        setMeasuredDimension(ai.a(Math.max(i7, getSuggestedMinimumWidth()), i, i4), ai.a(Math.max(i6, getSuggestedMinimumHeight()), i2, i4 << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = ((i3 - i) - getPaddingRight()) - paddingLeft;
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = paddingLeft + ((paddingRight - measuredWidth) / 2);
                int baseline = (this.f20a == -1 || childAt.getBaseline() == -1) ? paddingTop : (this.f20a + paddingTop) - childAt.getBaseline();
                childAt.layout(i6, baseline, measuredWidth + i6, measuredHeight + baseline);
            }
        }
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.f20a;
    }
}
