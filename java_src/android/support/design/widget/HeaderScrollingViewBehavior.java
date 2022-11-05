package android.support.design.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;
/* loaded from: classes.dex */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: a  reason: collision with root package name */
    final Rect f69a;
    final Rect b;
    private int c;
    private int d;

    abstract View b(List<View> list);

    public HeaderScrollingViewBehavior() {
        this.f69a = new Rect();
        this.b = new Rect();
        this.c = 0;
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f69a = new Rect();
        this.b = new Rect();
        this.c = 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View b;
        int i5 = view.getLayoutParams().height;
        if ((i5 == -1 || i5 == -2) && (b = b(coordinatorLayout.c(view))) != null) {
            if (ai.x(b) && !ai.x(view)) {
                ai.a(view, true);
                if (ai.x(view)) {
                    view.requestLayout();
                    return true;
                }
            }
            int size = View.MeasureSpec.getSize(i3);
            if (size == 0) {
                size = coordinatorLayout.getHeight();
            }
            coordinatorLayout.a(view, i, i2, View.MeasureSpec.makeMeasureSpec(b(b) + (size - b.getMeasuredHeight()), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.design.widget.ViewOffsetBehavior
    public void b(CoordinatorLayout coordinatorLayout, View view, int i) {
        View b = b(coordinatorLayout.c(view));
        if (b != null) {
            CoordinatorLayout.c cVar = (CoordinatorLayout.c) view.getLayoutParams();
            Rect rect = this.f69a;
            rect.set(coordinatorLayout.getPaddingLeft() + cVar.leftMargin, b.getBottom() + cVar.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - cVar.rightMargin, ((coordinatorLayout.getHeight() + b.getBottom()) - coordinatorLayout.getPaddingBottom()) - cVar.bottomMargin);
            bg lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ai.x(coordinatorLayout) && !ai.x(view)) {
                rect.left += lastWindowInsets.a();
                rect.right -= lastWindowInsets.c();
            }
            Rect rect2 = this.b;
            android.support.v4.view.f.a(c(cVar.c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int c = c(b);
            view.layout(rect2.left, rect2.top - c, rect2.right, rect2.bottom - c);
            this.c = rect2.top - b.getBottom();
            return;
        }
        super.b(coordinatorLayout, (CoordinatorLayout) view, i);
        this.c = 0;
    }

    float a(View view) {
        return 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c(View view) {
        if (this.d == 0) {
            return 0;
        }
        return l.a((int) (a(view) * this.d), 0, this.d);
    }

    private static int c(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(View view) {
        return view.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return this.c;
    }

    public final void b(int i) {
        this.d = i;
    }

    public final int d() {
        return this.d;
    }
}
