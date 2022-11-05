package com.facebook.ads.internal.view.hscroll;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.facebook.ads.internal.view.hscroll.d;
/* loaded from: classes.dex */
public class b extends d implements d.a {
    private HScrollLinearLayoutManager c;
    private a d;
    private int e;
    private int f;
    private int g;
    private int h;

    /* loaded from: classes.dex */
    public interface a {
        void a(int i, int i2);
    }

    public b(Context context) {
        super(context);
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        a();
    }

    private void a() {
        this.c = new HScrollLinearLayoutManager(getContext(), new c(), new com.facebook.ads.internal.view.hscroll.a());
        this.c.setOrientation(0);
        setLayoutManager(this.c);
        setSnapDelegate(this);
    }

    private void a(int i, int i2) {
        if (i == this.e && i2 == this.f) {
            return;
        }
        this.e = i;
        this.f = i2;
        if (this.d == null) {
            return;
        }
        this.d.a(this.e, this.f);
    }

    private int b(int i) {
        int i2 = this.h * 2;
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - i2;
        int itemCount = getAdapter().getItemCount();
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        while (i4 > i) {
            i3++;
            if (i3 >= itemCount) {
                return i;
            }
            i4 = (int) ((measuredWidth - (i3 * i2)) / (i3 + 0.333f));
        }
        return i4;
    }

    @Override // com.facebook.ads.internal.view.hscroll.d.a
    public int a(int i) {
        int abs = Math.abs(i);
        if (abs <= this.b) {
            return 0;
        }
        if (this.g != 0) {
            return (abs / this.g) + 1;
        }
        return 1;
    }

    @Override // com.facebook.ads.internal.view.hscroll.d
    protected void a(int i, boolean z) {
        super.a(i, z);
        a(i, 0);
    }

    public int getChildSpacing() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.RecyclerView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int round = Math.round(getMeasuredWidth() / 1.91f);
        switch (View.MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                round = Math.min(View.MeasureSpec.getSize(i2), round);
                break;
            case 1073741824:
                round = View.MeasureSpec.getSize(i2);
                break;
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int b = b(round - paddingTop);
        setMeasuredDimension(getMeasuredWidth(), paddingTop + b);
        setChildWidth(b + (this.h * 2));
    }

    @Override // android.support.v7.widget.RecyclerView
    public void setAdapter(RecyclerView.a aVar) {
        this.c.a(aVar == null ? -1 : aVar.hashCode());
        super.setAdapter(aVar);
    }

    public void setChildSpacing(int i) {
        this.h = i;
    }

    public void setChildWidth(int i) {
        this.g = i;
        int measuredWidth = getMeasuredWidth();
        this.c.b((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - this.g) / 2);
        this.c.a(this.g / measuredWidth);
    }

    public void setCurrentPosition(int i) {
        a(i, false);
    }

    public void setOnPageChangedListener(a aVar) {
        this.d = aVar;
    }
}
