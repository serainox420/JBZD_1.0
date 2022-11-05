package pl.jbzd.core.ui.layout;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.ac;
import android.util.AttributeSet;
/* loaded from: classes3.dex */
public class PreLoadingLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    private int f6104a;

    public PreLoadingLinearLayoutManager(Context context) {
        super(context);
        this.f6104a = 300;
    }

    public PreLoadingLinearLayoutManager(Context context, int i) {
        super(context);
        this.f6104a = 300;
        this.f6104a = i;
    }

    public PreLoadingLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.f6104a = 300;
    }

    public PreLoadingLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f6104a = 300;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.h
    public void onLayoutChildren(RecyclerView.n nVar, RecyclerView.r rVar) {
        try {
            super.onLayoutChildren(nVar, rVar);
        } catch (IndexOutOfBoundsException e) {
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    protected int getExtraLayoutSpace(RecyclerView.r rVar) {
        return this.f6104a;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.h
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.r rVar, final int i) {
        if (i < getItemCount()) {
            ac acVar = new ac(recyclerView.getContext()) { // from class: pl.jbzd.core.ui.layout.PreLoadingLinearLayoutManager.1
                @Override // android.support.v7.widget.ac
                protected int calculateTimeForScrolling(int i2) {
                    return Math.min(Math.max(1, (int) (0.12f * i)), 120);
                }
            };
            acVar.setTargetPosition(i);
            startSmoothScroll(acVar);
        }
    }
}
