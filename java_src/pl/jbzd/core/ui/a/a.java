package pl.jbzd.core.ui.a;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
/* compiled from: VerticalSpaceItemDecoration.java */
/* loaded from: classes3.dex */
public class a extends RecyclerView.g {

    /* renamed from: a  reason: collision with root package name */
    private final int f6093a;

    public a(int i) {
        this.f6093a = i;
    }

    @Override // android.support.v7.widget.RecyclerView.g
    public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.r rVar) {
        rect.bottom = this.f6093a;
    }
}
