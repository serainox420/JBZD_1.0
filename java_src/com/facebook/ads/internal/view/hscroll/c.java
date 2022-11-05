package com.facebook.ads.internal.view.hscroll;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public class c {
    public int[] a(RecyclerView.n nVar, int i, int i2, int i3) {
        View c = nVar.c(i);
        int[] a2 = a(c, i2, i3);
        nVar.a(c);
        return a2;
    }

    public int[] a(View view, int i, int i2) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, view.getPaddingLeft() + view.getPaddingRight(), layoutParams.width), ViewGroup.getChildMeasureSpec(i2, view.getPaddingTop() + view.getPaddingBottom(), layoutParams.height));
        return new int[]{view.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.topMargin + view.getMeasuredHeight() + layoutParams.bottomMargin};
    }
}
