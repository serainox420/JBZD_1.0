package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.widget.b;
import android.support.v4.view.ai;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@RestrictTo
/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout implements b.c {

    /* renamed from: a  reason: collision with root package name */
    private TextView f30a;
    private Button b;
    private int c;
    private int d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
        this.c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
        this.d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f30a = (TextView) findViewById(R.id.snackbar_text);
        this.b = (Button) findViewById(R.id.snackbar_action);
    }

    public TextView getMessageView() {
        return this.f30a;
    }

    public Button getActionView() {
        return this.b;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z;
        super.onMeasure(i, i2);
        if (this.c > 0 && getMeasuredWidth() > this.c) {
            i = View.MeasureSpec.makeMeasureSpec(this.c, 1073741824);
            super.onMeasure(i, i2);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z2 = this.f30a.getLayout().getLineCount() > 1;
        if (z2 && this.d > 0 && this.b.getMeasuredWidth() > this.d) {
            if (a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                z = true;
            }
            z = false;
        } else {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (a(0, dimensionPixelSize, dimensionPixelSize)) {
                z = true;
            }
            z = false;
        }
        if (z) {
            super.onMeasure(i, i2);
        }
    }

    private boolean a(int i, int i2, int i3) {
        boolean z = false;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        }
        if (this.f30a.getPaddingTop() != i2 || this.f30a.getPaddingBottom() != i3) {
            a(this.f30a, i2, i3);
            return true;
        }
        return z;
    }

    private static void a(View view, int i, int i2) {
        if (ai.A(view)) {
            ai.b(view, ai.k(view), i, ai.l(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    @Override // android.support.design.widget.b.c
    public void a(int i, int i2) {
        ai.c(this.f30a, (float) BitmapDescriptorFactory.HUE_RED);
        ai.r(this.f30a).a(1.0f).a(i2).b(i).c();
        if (this.b.getVisibility() == 0) {
            ai.c(this.b, (float) BitmapDescriptorFactory.HUE_RED);
            ai.r(this.b).a(1.0f).a(i2).b(i).c();
        }
    }

    @Override // android.support.design.widget.b.c
    public void b(int i, int i2) {
        ai.c((View) this.f30a, 1.0f);
        ai.r(this.f30a).a(BitmapDescriptorFactory.HUE_RED).a(i2).b(i).c();
        if (this.b.getVisibility() == 0) {
            ai.c((View) this.b, 1.0f);
            ai.r(this.b).a(BitmapDescriptorFactory.HUE_RED).a(i2).b(i).c();
        }
    }
}
