package android.support.design.widget;

import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ai;
import android.support.v4.widget.ag;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f72a;
    ag b;
    a c;
    private boolean i;
    private float h = BitmapDescriptorFactory.HUE_RED;
    int d = 2;
    float e = 0.5f;
    float f = BitmapDescriptorFactory.HUE_RED;
    float g = 0.5f;
    private final ag.a j = new ag.a() { // from class: android.support.design.widget.SwipeDismissBehavior.1
        private int b;
        private int c = -1;

        @Override // android.support.v4.widget.ag.a
        public boolean a(View view, int i) {
            return this.c == -1 && SwipeDismissBehavior.this.a(view);
        }

        @Override // android.support.v4.widget.ag.a
        public void b(View view, int i) {
            this.c = i;
            this.b = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // android.support.v4.widget.ag.a
        public void a(int i) {
            if (SwipeDismissBehavior.this.c != null) {
                SwipeDismissBehavior.this.c.a(i);
            }
        }

        @Override // android.support.v4.widget.ag.a
        public void a(View view, float f, float f2) {
            int i;
            this.c = -1;
            int width = view.getWidth();
            boolean z = false;
            if (a(view, f)) {
                i = view.getLeft() < this.b ? this.b - width : this.b + width;
                z = true;
            } else {
                i = this.b;
            }
            if (SwipeDismissBehavior.this.b.a(i, view.getTop())) {
                ai.a(view, new b(view, z));
            } else if (z && SwipeDismissBehavior.this.c != null) {
                SwipeDismissBehavior.this.c.a(view);
            }
        }

        private boolean a(View view, float f) {
            if (f == BitmapDescriptorFactory.HUE_RED) {
                return Math.abs(view.getLeft() - this.b) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.e);
            }
            boolean z = ai.g(view) == 1;
            if (SwipeDismissBehavior.this.d == 2) {
                return true;
            }
            if (SwipeDismissBehavior.this.d == 0) {
                return z ? f < BitmapDescriptorFactory.HUE_RED : f > BitmapDescriptorFactory.HUE_RED;
            } else if (SwipeDismissBehavior.this.d != 1) {
                return false;
            } else {
                return z ? f > BitmapDescriptorFactory.HUE_RED : f < BitmapDescriptorFactory.HUE_RED;
            }
        }

        @Override // android.support.v4.widget.ag.a
        public int b(View view) {
            return view.getWidth();
        }

        @Override // android.support.v4.widget.ag.a
        public int b(View view, int i, int i2) {
            int width;
            int width2;
            boolean z = ai.g(view) == 1;
            if (SwipeDismissBehavior.this.d == 0) {
                if (z) {
                    width = this.b - view.getWidth();
                    width2 = this.b;
                } else {
                    width = this.b;
                    width2 = this.b + view.getWidth();
                }
            } else if (SwipeDismissBehavior.this.d == 1) {
                if (z) {
                    width = this.b;
                    width2 = this.b + view.getWidth();
                } else {
                    width = this.b - view.getWidth();
                    width2 = this.b;
                }
            } else {
                width = this.b - view.getWidth();
                width2 = this.b + view.getWidth();
            }
            return SwipeDismissBehavior.a(width, i, width2);
        }

        @Override // android.support.v4.widget.ag.a
        public int a(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // android.support.v4.widget.ag.a
        public void a(View view, int i, int i2, int i3, int i4) {
            float width = this.b + (view.getWidth() * SwipeDismissBehavior.this.f);
            float width2 = this.b + (view.getWidth() * SwipeDismissBehavior.this.g);
            if (i <= width) {
                ai.c(view, 1.0f);
            } else if (i >= width2) {
                ai.c(view, (float) BitmapDescriptorFactory.HUE_RED);
            } else {
                ai.c(view, SwipeDismissBehavior.a((float) BitmapDescriptorFactory.HUE_RED, 1.0f - SwipeDismissBehavior.b(width, width2, i), 1.0f));
            }
        }
    };

    /* loaded from: classes.dex */
    public interface a {
        void a(int i);

        void a(View view);
    }

    public void a(a aVar) {
        this.c = aVar;
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(float f) {
        this.f = a((float) BitmapDescriptorFactory.HUE_RED, f, 1.0f);
    }

    public void b(float f) {
        this.g = a((float) BitmapDescriptorFactory.HUE_RED, f, 1.0f);
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f72a;
        switch (android.support.v4.view.t.a(motionEvent)) {
            case 0:
                this.f72a = coordinatorLayout.a(v, (int) motionEvent.getX(), (int) motionEvent.getY());
                z = this.f72a;
                break;
            case 1:
            case 3:
                this.f72a = false;
                break;
        }
        if (z) {
            a((ViewGroup) coordinatorLayout);
            return this.b.a(motionEvent);
        }
        return false;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.b != null) {
            this.b.b(motionEvent);
            return true;
        }
        return false;
    }

    public boolean a(View view) {
        return true;
    }

    private void a(ViewGroup viewGroup) {
        ag a2;
        if (this.b == null) {
            if (this.i) {
                a2 = ag.a(viewGroup, this.h, this.j);
            } else {
                a2 = ag.a(viewGroup, this.j);
            }
            this.b = a2;
        }
    }

    /* loaded from: classes.dex */
    private class b implements Runnable {
        private final View b;
        private final boolean c;

        b(View view, boolean z) {
            this.b = view;
            this.c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwipeDismissBehavior.this.b != null && SwipeDismissBehavior.this.b.a(true)) {
                ai.a(this.b, this);
            } else if (this.c && SwipeDismissBehavior.this.c != null) {
                SwipeDismissBehavior.this.c.a(this.b);
            }
        }
    }

    static float a(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    static int a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    static float b(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }
}
