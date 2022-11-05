package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;
/* compiled from: NestedScrollingChildHelper.java */
/* loaded from: classes.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private final View f471a;
    private ViewParent b;
    private boolean c;
    private int[] d;

    public w(View view) {
        this.f471a = view;
    }

    public void a(boolean z) {
        if (this.c) {
            ai.E(this.f471a);
        }
        this.c = z;
    }

    public boolean a() {
        return this.c;
    }

    public boolean b() {
        return this.b != null;
    }

    public boolean a(int i) {
        if (b()) {
            return true;
        }
        if (a()) {
            View view = this.f471a;
            for (ViewParent parent = this.f471a.getParent(); parent != null; parent = parent.getParent()) {
                if (ax.a(parent, view, this.f471a, i)) {
                    this.b = parent;
                    ax.b(parent, view, this.f471a, i);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public void c() {
        if (this.b != null) {
            ax.a(this.b, this.f471a);
            this.b = null;
        }
    }

    public boolean a(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6;
        if (!a() || this.b == null) {
            return false;
        }
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            if (iArr != null) {
                this.f471a.getLocationInWindow(iArr);
                int i7 = iArr[0];
                i5 = iArr[1];
                i6 = i7;
            } else {
                i5 = 0;
                i6 = 0;
            }
            ax.a(this.b, this.f471a, i, i2, i3, i4);
            if (iArr != null) {
                this.f471a.getLocationInWindow(iArr);
                iArr[0] = iArr[0] - i6;
                iArr[1] = iArr[1] - i5;
            }
            return true;
        } else if (iArr == null) {
            return false;
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
            return false;
        }
    }

    public boolean a(int i, int i2, int[] iArr, int[] iArr2) {
        int i3;
        int i4;
        if (!a() || this.b == null) {
            return false;
        }
        if (i != 0 || i2 != 0) {
            if (iArr2 != null) {
                this.f471a.getLocationInWindow(iArr2);
                i4 = iArr2[0];
                i3 = iArr2[1];
            } else {
                i3 = 0;
                i4 = 0;
            }
            if (iArr == null) {
                if (this.d == null) {
                    this.d = new int[2];
                }
                iArr = this.d;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            ax.a(this.b, this.f471a, i, i2, iArr);
            if (iArr2 != null) {
                this.f471a.getLocationInWindow(iArr2);
                iArr2[0] = iArr2[0] - i4;
                iArr2[1] = iArr2[1] - i3;
            }
            return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
        } else if (iArr2 == null) {
            return false;
        } else {
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
    }

    public boolean a(float f, float f2, boolean z) {
        if (!a() || this.b == null) {
            return false;
        }
        return ax.a(this.b, this.f471a, f, f2, z);
    }

    public boolean a(float f, float f2) {
        if (!a() || this.b == null) {
            return false;
        }
        return ax.a(this.b, this.f471a, f, f2);
    }
}
