package android.support.v7.widget;

import android.content.Context;
import android.os.Build;
import android.support.v7.appcompat.R;
import android.view.MotionEvent;
import android.view.View;
/* compiled from: DropDownListView.java */
/* loaded from: classes.dex */
class x extends ListViewCompat {
    private boolean g;
    private boolean h;
    private boolean i;
    private android.support.v4.view.az j;
    private android.support.v4.widget.n k;

    public x(Context context, boolean z) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.h = z;
        setCacheColorHint(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(MotionEvent motionEvent, int i) {
        boolean z;
        int findPointerIndex;
        boolean z2;
        boolean z3;
        int a2 = android.support.v4.view.t.a(motionEvent);
        switch (a2) {
            case 1:
                z = false;
                findPointerIndex = motionEvent.findPointerIndex(i);
                if (findPointerIndex < 0) {
                    int x = (int) motionEvent.getX(findPointerIndex);
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int pointToPosition = pointToPosition(x, y);
                    if (pointToPosition != -1) {
                        View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                        a(childAt, pointToPosition, x, y);
                        if (a2 == 1) {
                            a(childAt, pointToPosition);
                        }
                        z3 = false;
                        z2 = true;
                        break;
                    } else {
                        z2 = z;
                        z3 = true;
                        break;
                    }
                } else {
                    z3 = false;
                    z2 = false;
                    break;
                }
            case 2:
                z = true;
                findPointerIndex = motionEvent.findPointerIndex(i);
                if (findPointerIndex < 0) {
                }
                break;
            case 3:
                z3 = false;
                z2 = false;
                break;
            default:
                z3 = false;
                z2 = true;
                break;
        }
        if (!z2 || z3) {
            d();
        }
        if (z2) {
            if (this.k == null) {
                this.k = new android.support.v4.widget.n(this);
            }
            this.k.a(true);
            this.k.onTouch(this, motionEvent);
        } else if (this.k != null) {
            this.k.a(false);
        }
        return z2;
    }

    private void a(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListSelectionHidden(boolean z) {
        this.g = z;
    }

    private void d() {
        this.i = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        if (this.j != null) {
            this.j.b();
            this.j = null;
        }
    }

    private void a(View view, int i, float f, float f2) {
        View childAt;
        this.i = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        if (this.f != -1 && (childAt = getChildAt(this.f - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f = i;
        float left = f - view.getLeft();
        float top = f2 - view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(left, top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        a(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.ListViewCompat
    public boolean a() {
        return this.i || super.a();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.h && this.g) || super.isInTouchMode();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.h || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.h || super.isFocused();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.h || super.hasFocus();
    }
}
