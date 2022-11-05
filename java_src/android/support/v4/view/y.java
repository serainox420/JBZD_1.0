package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
/* compiled from: NestedScrollingParentHelper.java */
/* loaded from: classes.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroup f472a;
    private int b;

    public y(ViewGroup viewGroup) {
        this.f472a = viewGroup;
    }

    public void a(View view, View view2, int i) {
        this.b = i;
    }

    public int a() {
        return this.b;
    }

    public void a(View view) {
        this.b = 0;
    }
}
