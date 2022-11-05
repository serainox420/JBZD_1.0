package android.support.design.widget;

import android.content.Context;
import android.support.v4.view.ag;
import android.support.v4.view.ai;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes.dex */
abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: a  reason: collision with root package name */
    android.support.v4.widget.x f67a;
    private Runnable b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private VelocityTracker g;

    public HeaderBehavior() {
        this.d = -1;
        this.f = -1;
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = -1;
        this.f = -1;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f < 0) {
            this.f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() != 2 || !this.c) {
            switch (android.support.v4.view.t.a(motionEvent)) {
                case 0:
                    this.c = false;
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    if (c(v) && coordinatorLayout.a(v, x, y)) {
                        this.e = y;
                        this.d = motionEvent.getPointerId(0);
                        d();
                        break;
                    }
                    break;
                case 1:
                case 3:
                    this.c = false;
                    this.d = -1;
                    if (this.g != null) {
                        this.g.recycle();
                        this.g = null;
                        break;
                    }
                    break;
                case 2:
                    int i = this.d;
                    if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                        int y2 = (int) motionEvent.getY(findPointerIndex);
                        if (Math.abs(y2 - this.e) > this.f) {
                            this.c = true;
                            this.e = y2;
                            break;
                        }
                    }
                    break;
            }
            if (this.g != null) {
                this.g.addMovement(motionEvent);
            }
            return this.c;
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad  */
    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.f < 0) {
            this.f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        switch (android.support.v4.view.t.a(motionEvent)) {
            case 0:
                int y = (int) motionEvent.getY();
                if (coordinatorLayout.a(v, (int) motionEvent.getX(), y) && c(v)) {
                    this.e = y;
                    this.d = motionEvent.getPointerId(0);
                    d();
                    break;
                } else {
                    return false;
                }
                break;
            case 1:
                if (this.g != null) {
                    this.g.addMovement(motionEvent);
                    this.g.computeCurrentVelocity(1000);
                    a(coordinatorLayout, (CoordinatorLayout) v, -a((HeaderBehavior<V>) v), 0, ag.b(this.g, this.d));
                }
                this.c = false;
                this.d = -1;
                if (this.g != null) {
                    this.g.recycle();
                    this.g = null;
                    break;
                }
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.d);
                if (findPointerIndex == -1) {
                    return false;
                }
                int y2 = (int) motionEvent.getY(findPointerIndex);
                int i = this.e - y2;
                if (!this.c && Math.abs(i) > this.f) {
                    this.c = true;
                    i = i > 0 ? i - this.f : i + this.f;
                }
                if (this.c) {
                    this.e = y2;
                    b(coordinatorLayout, (CoordinatorLayout) v, i, b(v), 0);
                    break;
                }
                break;
            case 3:
                this.c = false;
                this.d = -1;
                if (this.g != null) {
                }
                break;
        }
        if (this.g != null) {
            this.g.addMovement(motionEvent);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return a(coordinatorLayout, (CoordinatorLayout) v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    int a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int a2;
        int b = b();
        if (i2 == 0 || b < i2 || b > i3 || b == (a2 = l.a(i, i2, i3))) {
            return 0;
        }
        a(a2);
        return b - a2;
    }

    int a() {
        return b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return a(coordinatorLayout, (CoordinatorLayout) v, a() - i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        if (this.b != null) {
            v.removeCallbacks(this.b);
            this.b = null;
        }
        if (this.f67a == null) {
            this.f67a = android.support.v4.widget.x.a(v.getContext());
        }
        this.f67a.a(0, b(), 0, Math.round(f), 0, 0, i, i2);
        if (this.f67a.g()) {
            this.b = new a(coordinatorLayout, v);
            ai.a(v, this.b);
            return true;
        }
        a(coordinatorLayout, v);
        return false;
    }

    void a(CoordinatorLayout coordinatorLayout, V v) {
    }

    boolean c(V v) {
        return false;
    }

    int b(V v) {
        return -v.getHeight();
    }

    int a(V v) {
        return v.getHeight();
    }

    private void d() {
        if (this.g == null) {
            this.g = VelocityTracker.obtain();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        private final CoordinatorLayout b;
        private final V c;

        a(CoordinatorLayout coordinatorLayout, V v) {
            this.b = coordinatorLayout;
            this.c = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.c != null && HeaderBehavior.this.f67a != null) {
                if (HeaderBehavior.this.f67a.g()) {
                    HeaderBehavior.this.a_(this.b, this.c, HeaderBehavior.this.f67a.c());
                    ai.a(this.c, this);
                    return;
                }
                HeaderBehavior.this.a(this.b, this.c);
            }
        }
    }
}
