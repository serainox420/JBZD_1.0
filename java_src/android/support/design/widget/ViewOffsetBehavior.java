package android.support.design.widget;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a  reason: collision with root package name */
    private w f95a;
    private int b;
    private int c;

    public ViewOffsetBehavior() {
        this.b = 0;
        this.c = 0;
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.c = 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        b(coordinatorLayout, (CoordinatorLayout) v, i);
        if (this.f95a == null) {
            this.f95a = new w(v);
        }
        this.f95a.a();
        if (this.b != 0) {
            this.f95a.a(this.b);
            this.b = 0;
        }
        if (this.c != 0) {
            this.f95a.b(this.c);
            this.c = 0;
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.a(v, i);
    }

    public boolean a(int i) {
        if (this.f95a != null) {
            return this.f95a.a(i);
        }
        this.b = i;
        return false;
    }

    public int b() {
        if (this.f95a != null) {
            return this.f95a.b();
        }
        return 0;
    }
}
