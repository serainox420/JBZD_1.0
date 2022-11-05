package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private TypedValue f782a;
    private TypedValue b;
    private TypedValue c;
    private TypedValue d;
    private TypedValue e;
    private TypedValue f;
    private final Rect g;
    private a h;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void b();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new Rect();
    }

    @RestrictTo
    public void a(Rect rect) {
        fitSystemWindows(rect);
    }

    public void setAttachListener(a aVar) {
        this.h = aVar;
    }

    @RestrictTo
    public void a(int i, int i2, int i3, int i4) {
        this.g.set(i, i2, i3, i4);
        if (android.support.v4.view.ai.F(this)) {
            requestLayout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        boolean z;
        int measuredWidth;
        int i3;
        TypedValue typedValue;
        int fraction;
        int fraction2;
        int fraction3;
        boolean z2 = false;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z3 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            TypedValue typedValue2 = z3 ? this.d : this.c;
            if (typedValue2 != null && typedValue2.type != 0) {
                if (typedValue2.type == 5) {
                    fraction3 = (int) typedValue2.getDimension(displayMetrics);
                } else {
                    fraction3 = typedValue2.type == 6 ? (int) typedValue2.getFraction(displayMetrics.widthPixels, displayMetrics.widthPixels) : 0;
                }
                if (fraction3 > 0) {
                    i = View.MeasureSpec.makeMeasureSpec(Math.min(fraction3 - (this.g.left + this.g.right), View.MeasureSpec.getSize(i)), 1073741824);
                    z = true;
                    if (mode2 == Integer.MIN_VALUE) {
                        TypedValue typedValue3 = z3 ? this.e : this.f;
                        if (typedValue3 != null && typedValue3.type != 0) {
                            if (typedValue3.type == 5) {
                                fraction2 = (int) typedValue3.getDimension(displayMetrics);
                            } else {
                                fraction2 = typedValue3.type == 6 ? (int) typedValue3.getFraction(displayMetrics.heightPixels, displayMetrics.heightPixels) : 0;
                            }
                            if (fraction2 > 0) {
                                i2 = View.MeasureSpec.makeMeasureSpec(Math.min(fraction2 - (this.g.top + this.g.bottom), View.MeasureSpec.getSize(i2)), 1073741824);
                            }
                        }
                    }
                    super.onMeasure(i, i2);
                    measuredWidth = getMeasuredWidth();
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                    if (!z && mode == Integer.MIN_VALUE) {
                        typedValue = !z3 ? this.b : this.f782a;
                        if (typedValue != null && typedValue.type != 0) {
                            if (typedValue.type != 5) {
                                fraction = (int) typedValue.getDimension(displayMetrics);
                            } else {
                                fraction = typedValue.type == 6 ? (int) typedValue.getFraction(displayMetrics.widthPixels, displayMetrics.widthPixels) : 0;
                            }
                            if (fraction > 0) {
                                fraction -= this.g.left + this.g.right;
                            }
                            if (measuredWidth < fraction) {
                                i3 = View.MeasureSpec.makeMeasureSpec(fraction, 1073741824);
                                z2 = true;
                                if (z2) {
                                    super.onMeasure(i3, i2);
                                    return;
                                }
                                return;
                            }
                        }
                    }
                    i3 = makeMeasureSpec;
                    if (z2) {
                    }
                }
            }
        }
        z = false;
        if (mode2 == Integer.MIN_VALUE) {
        }
        super.onMeasure(i, i2);
        measuredWidth = getMeasuredWidth();
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (!z) {
            if (!z3) {
            }
            if (typedValue != null) {
                if (typedValue.type != 5) {
                }
                if (fraction > 0) {
                }
                if (measuredWidth < fraction) {
                }
            }
        }
        i3 = makeMeasureSpec2;
        if (z2) {
        }
    }

    public TypedValue getMinWidthMajor() {
        if (this.f782a == null) {
            this.f782a = new TypedValue();
        }
        return this.f782a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.b == null) {
            this.b = new TypedValue();
        }
        return this.b;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.c == null) {
            this.c = new TypedValue();
        }
        return this.c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.d == null) {
            this.d = new TypedValue();
        }
        return this.d;
    }

    public TypedValue getFixedHeightMajor() {
        if (this.e == null) {
            this.e = new TypedValue();
        }
        return this.e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f == null) {
            this.f = new TypedValue();
        }
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.h != null) {
            this.h.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.h != null) {
            this.h.b();
        }
    }
}
