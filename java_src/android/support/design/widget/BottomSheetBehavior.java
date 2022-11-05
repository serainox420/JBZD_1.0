package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.design.R;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ai;
import android.support.v4.widget.ag;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a  reason: collision with root package name */
    int f46a;
    int b;
    boolean c;
    int d;
    ag e;
    int f;
    WeakReference<V> g;
    WeakReference<View> h;
    int i;
    boolean j;
    private float k;
    private int l;
    private boolean m;
    private int n;
    private boolean o;
    private boolean p;
    private int q;
    private boolean r;
    private a s;
    private VelocityTracker t;
    private int u;
    private final ag.a v;

    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract void a(View view, float f);

        public abstract void a(View view, int i);
    }

    public BottomSheetBehavior() {
        this.d = 4;
        this.v = new ag.a() { // from class: android.support.design.widget.BottomSheetBehavior.1
            @Override // android.support.v4.widget.ag.a
            public boolean a(View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.d != 1 && !BottomSheetBehavior.this.j) {
                    if (BottomSheetBehavior.this.d == 3 && BottomSheetBehavior.this.i == i && (view2 = BottomSheetBehavior.this.h.get()) != null && ai.b(view2, -1)) {
                        return false;
                    }
                    return BottomSheetBehavior.this.g != null && BottomSheetBehavior.this.g.get() == view;
                }
                return false;
            }

            @Override // android.support.v4.widget.ag.a
            public void a(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.c(i2);
            }

            @Override // android.support.v4.widget.ag.a
            public void a(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.b(1);
                }
            }

            @Override // android.support.v4.widget.ag.a
            public void a(View view, float f, float f2) {
                int i;
                int i2 = 3;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    i = BottomSheetBehavior.this.f46a;
                } else if (BottomSheetBehavior.this.c && BottomSheetBehavior.this.a(view, f2)) {
                    i = BottomSheetBehavior.this.f;
                    i2 = 5;
                } else if (f2 == BitmapDescriptorFactory.HUE_RED) {
                    int top = view.getTop();
                    if (Math.abs(top - BottomSheetBehavior.this.f46a) < Math.abs(top - BottomSheetBehavior.this.b)) {
                        i = BottomSheetBehavior.this.f46a;
                    } else {
                        i = BottomSheetBehavior.this.b;
                        i2 = 4;
                    }
                } else {
                    i = BottomSheetBehavior.this.b;
                    i2 = 4;
                }
                if (BottomSheetBehavior.this.e.a(view.getLeft(), i)) {
                    BottomSheetBehavior.this.b(2);
                    ai.a(view, new b(view, i2));
                    return;
                }
                BottomSheetBehavior.this.b(i2);
            }

            @Override // android.support.v4.widget.ag.a
            public int a(View view, int i, int i2) {
                return l.a(i, BottomSheetBehavior.this.f46a, BottomSheetBehavior.this.c ? BottomSheetBehavior.this.f : BottomSheetBehavior.this.b);
            }

            @Override // android.support.v4.widget.ag.a
            public int b(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // android.support.v4.widget.ag.a
            public int a(View view) {
                return BottomSheetBehavior.this.c ? BottomSheetBehavior.this.f - BottomSheetBehavior.this.f46a : BottomSheetBehavior.this.b - BottomSheetBehavior.this.f46a;
            }
        };
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = 4;
        this.v = new ag.a() { // from class: android.support.design.widget.BottomSheetBehavior.1
            @Override // android.support.v4.widget.ag.a
            public boolean a(View view, int i) {
                View view2;
                if (BottomSheetBehavior.this.d != 1 && !BottomSheetBehavior.this.j) {
                    if (BottomSheetBehavior.this.d == 3 && BottomSheetBehavior.this.i == i && (view2 = BottomSheetBehavior.this.h.get()) != null && ai.b(view2, -1)) {
                        return false;
                    }
                    return BottomSheetBehavior.this.g != null && BottomSheetBehavior.this.g.get() == view;
                }
                return false;
            }

            @Override // android.support.v4.widget.ag.a
            public void a(View view, int i, int i2, int i3, int i4) {
                BottomSheetBehavior.this.c(i2);
            }

            @Override // android.support.v4.widget.ag.a
            public void a(int i) {
                if (i == 1) {
                    BottomSheetBehavior.this.b(1);
                }
            }

            @Override // android.support.v4.widget.ag.a
            public void a(View view, float f, float f2) {
                int i;
                int i2 = 3;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    i = BottomSheetBehavior.this.f46a;
                } else if (BottomSheetBehavior.this.c && BottomSheetBehavior.this.a(view, f2)) {
                    i = BottomSheetBehavior.this.f;
                    i2 = 5;
                } else if (f2 == BitmapDescriptorFactory.HUE_RED) {
                    int top = view.getTop();
                    if (Math.abs(top - BottomSheetBehavior.this.f46a) < Math.abs(top - BottomSheetBehavior.this.b)) {
                        i = BottomSheetBehavior.this.f46a;
                    } else {
                        i = BottomSheetBehavior.this.b;
                        i2 = 4;
                    }
                } else {
                    i = BottomSheetBehavior.this.b;
                    i2 = 4;
                }
                if (BottomSheetBehavior.this.e.a(view.getLeft(), i)) {
                    BottomSheetBehavior.this.b(2);
                    ai.a(view, new b(view, i2));
                    return;
                }
                BottomSheetBehavior.this.b(i2);
            }

            @Override // android.support.v4.widget.ag.a
            public int a(View view, int i, int i2) {
                return l.a(i, BottomSheetBehavior.this.f46a, BottomSheetBehavior.this.c ? BottomSheetBehavior.this.f : BottomSheetBehavior.this.b);
            }

            @Override // android.support.v4.widget.ag.a
            public int b(View view, int i, int i2) {
                return view.getLeft();
            }

            @Override // android.support.v4.widget.ag.a
            public int a(View view) {
                return BottomSheetBehavior.this.c ? BottomSheetBehavior.this.f - BottomSheetBehavior.this.f46a : BottomSheetBehavior.this.b - BottomSheetBehavior.this.f46a;
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue != null && peekValue.data == -1) {
            a(peekValue.data);
        } else {
            a(obtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        a(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        b(obtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        obtainStyledAttributes.recycle();
        this.k = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public Parcelable b(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.b(coordinatorLayout, v), this.d);
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.a(coordinatorLayout, (CoordinatorLayout) v, savedState.a());
        if (savedState.f48a == 1 || savedState.f48a == 2) {
            this.d = 4;
        } else {
            this.d = savedState.f48a;
        }
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        int i2;
        if (ai.x(coordinatorLayout) && !ai.x(v)) {
            ai.a((View) v, true);
        }
        int top = v.getTop();
        coordinatorLayout.a(v, i);
        this.f = coordinatorLayout.getHeight();
        if (this.m) {
            if (this.n == 0) {
                this.n = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            }
            i2 = Math.max(this.n, this.f - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            i2 = this.l;
        }
        this.f46a = Math.max(0, this.f - v.getHeight());
        this.b = Math.max(this.f - i2, this.f46a);
        if (this.d == 3) {
            ai.e((View) v, this.f46a);
        } else if (this.c && this.d == 5) {
            ai.e((View) v, this.f);
        } else if (this.d == 4) {
            ai.e((View) v, this.b);
        } else if (this.d == 1 || this.d == 2) {
            ai.e((View) v, top - v.getTop());
        }
        if (this.e == null) {
            this.e = ag.a(coordinatorLayout, this.v);
        }
        this.g = new WeakReference<>(v);
        this.h = new WeakReference<>(a(v));
        return true;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = true;
        if (!v.isShown()) {
            this.p = true;
            return false;
        }
        int a2 = android.support.v4.view.t.a(motionEvent);
        if (a2 == 0) {
            a();
        }
        if (this.t == null) {
            this.t = VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        switch (a2) {
            case 0:
                int x = (int) motionEvent.getX();
                this.u = (int) motionEvent.getY();
                View view = this.h.get();
                if (view != null && coordinatorLayout.a(view, x, this.u)) {
                    this.i = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.j = true;
                }
                this.p = this.i == -1 && !coordinatorLayout.a(v, x, this.u);
                break;
            case 1:
            case 3:
                this.j = false;
                this.i = -1;
                if (this.p) {
                    this.p = false;
                    return false;
                }
                break;
        }
        if (!this.p && this.e.a(motionEvent)) {
            return true;
        }
        View view2 = this.h.get();
        if (a2 != 2 || view2 == null || this.p || this.d == 1 || coordinatorLayout.a(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || Math.abs(this.u - motionEvent.getY()) <= this.e.d()) {
            z = false;
        }
        return z;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int a2 = android.support.v4.view.t.a(motionEvent);
        if (this.d == 1 && a2 == 0) {
            return true;
        }
        this.e.b(motionEvent);
        if (a2 == 0) {
            a();
        }
        if (this.t == null) {
            this.t = VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        if (a2 == 2 && !this.p && Math.abs(this.u - motionEvent.getY()) > this.e.d()) {
            this.e.a(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.p;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        this.q = 0;
        this.r = false;
        return (i & 2) != 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        if (view == this.h.get()) {
            int top = v.getTop();
            int i3 = top - i2;
            if (i2 > 0) {
                if (i3 < this.f46a) {
                    iArr[1] = top - this.f46a;
                    ai.e((View) v, -iArr[1]);
                    b(3);
                } else {
                    iArr[1] = i2;
                    ai.e((View) v, -i2);
                    b(1);
                }
            } else if (i2 < 0 && !ai.b(view, -1)) {
                if (i3 <= this.b || this.c) {
                    iArr[1] = i2;
                    ai.e((View) v, -i2);
                    b(1);
                } else {
                    iArr[1] = top - this.b;
                    ai.e((View) v, -iArr[1]);
                    b(4);
                }
            }
            c(v.getTop());
            this.q = i2;
            this.r = true;
        }
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public void a(CoordinatorLayout coordinatorLayout, V v, View view) {
        int i;
        int i2 = 3;
        if (v.getTop() == this.f46a) {
            b(3);
        } else if (view == this.h.get() && this.r) {
            if (this.q > 0) {
                i = this.f46a;
            } else if (this.c && a(v, b())) {
                i = this.f;
                i2 = 5;
            } else if (this.q == 0) {
                int top = v.getTop();
                if (Math.abs(top - this.f46a) < Math.abs(top - this.b)) {
                    i = this.f46a;
                } else {
                    i = this.b;
                    i2 = 4;
                }
            } else {
                i = this.b;
                i2 = 4;
            }
            if (this.e.a((View) v, v.getLeft(), i)) {
                b(2);
                ai.a(v, new b(v, i2));
            } else {
                b(i2);
            }
            this.r = false;
        }
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        return view == this.h.get() && (this.d != 3 || super.a(coordinatorLayout, (CoordinatorLayout) v, view, f, f2));
    }

    public final void a(int i) {
        V v;
        boolean z = true;
        if (i == -1) {
            if (!this.m) {
                this.m = true;
            }
            z = false;
        } else {
            if (this.m || this.l != i) {
                this.m = false;
                this.l = Math.max(0, i);
                this.b = this.f - i;
            }
            z = false;
        }
        if (z && this.d == 4 && this.g != null && (v = this.g.get()) != null) {
            v.requestLayout();
        }
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void b(boolean z) {
        this.o = z;
    }

    void b(int i) {
        if (this.d != i) {
            this.d = i;
            V v = this.g.get();
            if (v != null && this.s != null) {
                this.s.a((View) v, i);
            }
        }
    }

    private void a() {
        this.i = -1;
        if (this.t != null) {
            this.t.recycle();
            this.t = null;
        }
    }

    boolean a(View view, float f) {
        if (this.o) {
            return true;
        }
        return view.getTop() >= this.b && Math.abs((((float) view.getTop()) + (0.1f * f)) - ((float) this.b)) / ((float) this.l) > 0.5f;
    }

    private View a(View view) {
        if (!(view instanceof android.support.v4.view.v)) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View a2 = a(viewGroup.getChildAt(i));
                    if (a2 != null) {
                        return a2;
                    }
                }
            }
            return null;
        }
        return view;
    }

    private float b() {
        this.t.computeCurrentVelocity(1000, this.k);
        return android.support.v4.view.ag.b(this.t, this.i);
    }

    void c(int i) {
        V v = this.g.get();
        if (v != null && this.s != null) {
            if (i > this.b) {
                this.s.a(v, (this.b - i) / (this.f - this.b));
            } else {
                this.s.a(v, (this.b - i) / (this.b - this.f46a));
            }
        }
    }

    /* loaded from: classes.dex */
    private class b implements Runnable {
        private final View b;
        private final int c;

        b(View view, int i) {
            this.b = view;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BottomSheetBehavior.this.e != null && BottomSheetBehavior.this.e.a(true)) {
                ai.a(this.b, this);
            } else {
                BottomSheetBehavior.this.b(this.c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.design.widget.BottomSheetBehavior.SavedState.1
            @Override // android.support.v4.os.f
            /* renamed from: a */
            public SavedState b(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.support.v4.os.f
            /* renamed from: a */
            public SavedState[] b(int i) {
                return new SavedState[i];
            }
        });

        /* renamed from: a  reason: collision with root package name */
        final int f48a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f48a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f48a = i;
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f48a);
        }
    }
}
