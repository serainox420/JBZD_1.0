package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;
/* compiled from: LayoutState.java */
/* loaded from: classes.dex */
class ab {
    int b;
    int c;
    int d;
    int e;
    boolean h;
    boolean i;

    /* renamed from: a  reason: collision with root package name */
    boolean f862a = true;
    int f = 0;
    int g = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(RecyclerView.r rVar) {
        return this.c >= 0 && this.c < rVar.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(RecyclerView.n nVar) {
        View c = nVar.c(this.c);
        this.c += this.d;
        return c;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.b + ", mCurrentPosition=" + this.c + ", mItemDirection=" + this.d + ", mLayoutDirection=" + this.e + ", mStartLine=" + this.f + ", mEndLine=" + this.g + '}';
    }
}
