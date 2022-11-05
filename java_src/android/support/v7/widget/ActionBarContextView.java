package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
@RestrictTo
/* loaded from: classes.dex */
public class ActionBarContextView extends a {
    private CharSequence g;
    private CharSequence h;
    private View i;
    private View j;
    private LinearLayout k;
    private TextView l;
    private TextView m;
    private int n;
    private int o;
    private boolean p;
    private int q;

    @Override // android.support.v7.widget.a
    public /* bridge */ /* synthetic */ android.support.v4.view.az a(int i, long j) {
        return super.a(i, j);
    }

    @Override // android.support.v7.widget.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // android.support.v7.widget.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    @Override // android.support.v7.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.support.v7.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.support.v7.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        av a2 = av.a(context, attributeSet, R.styleable.ActionMode, i, 0);
        android.support.v4.view.ai.a(this, a2.a(R.styleable.ActionMode_background));
        this.n = a2.g(R.styleable.ActionMode_titleTextStyle, 0);
        this.o = a2.g(R.styleable.ActionMode_subtitleTextStyle, 0);
        this.e = a2.f(R.styleable.ActionMode_height, 0);
        this.q = a2.g(R.styleable.ActionMode_closeItemLayout, R.layout.abc_action_mode_close_item_material);
        a2.a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.d != null) {
            this.d.g();
            this.d.i();
        }
    }

    @Override // android.support.v7.widget.a
    public void setContentHeight(int i) {
        this.e = i;
    }

    public void setCustomView(View view) {
        if (this.j != null) {
            removeView(this.j);
        }
        this.j = view;
        if (view != null && this.k != null) {
            removeView(this.k);
            this.k = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setTitle(CharSequence charSequence) {
        this.g = charSequence;
        e();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.h = charSequence;
        e();
    }

    public CharSequence getTitle() {
        return this.g;
    }

    public CharSequence getSubtitle() {
        return this.h;
    }

    private void e() {
        int i = 8;
        boolean z = true;
        if (this.k == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            this.k = (LinearLayout) getChildAt(getChildCount() - 1);
            this.l = (TextView) this.k.findViewById(R.id.action_bar_title);
            this.m = (TextView) this.k.findViewById(R.id.action_bar_subtitle);
            if (this.n != 0) {
                this.l.setTextAppearance(getContext(), this.n);
            }
            if (this.o != 0) {
                this.m.setTextAppearance(getContext(), this.o);
            }
        }
        this.l.setText(this.g);
        this.m.setText(this.h);
        boolean z2 = !TextUtils.isEmpty(this.g);
        if (TextUtils.isEmpty(this.h)) {
            z = false;
        }
        this.m.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout = this.k;
        if (z2 || z) {
            i = 0;
        }
        linearLayout.setVisibility(i);
        if (this.k.getParent() == null) {
            addView(this.k);
        }
    }

    public void a(final android.support.v7.view.b bVar) {
        if (this.i == null) {
            this.i = LayoutInflater.from(getContext()).inflate(this.q, (ViewGroup) this, false);
            addView(this.i);
        } else if (this.i.getParent() == null) {
            addView(this.i);
        }
        this.i.findViewById(R.id.action_mode_close_button).setOnClickListener(new View.OnClickListener() { // from class: android.support.v7.widget.ActionBarContextView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bVar.c();
            }
        });
        android.support.v7.view.menu.h hVar = (android.support.v7.view.menu.h) bVar.b();
        if (this.d != null) {
            this.d.h();
        }
        this.d = new ActionMenuPresenter(getContext());
        this.d.c(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        hVar.a(this.d, this.b);
        this.c = (ActionMenuView) this.d.a(this);
        android.support.v4.view.ai.a(this.c, (Drawable) null);
        addView(this.c, layoutParams);
    }

    public void b() {
        if (this.i == null) {
            c();
        }
    }

    public void c() {
        removeAllViews();
        this.j = null;
        this.c = null;
    }

    @Override // android.support.v7.widget.a
    public boolean a() {
        if (this.d != null) {
            return this.d.f();
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = 1073741824;
        int i4 = 0;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.e > 0 ? this.e : View.MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i5 = size2 - paddingTop;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
        if (this.i != null) {
            int a2 = a(this.i, paddingLeft, makeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.i.getLayoutParams();
            paddingLeft = a2 - (marginLayoutParams.rightMargin + marginLayoutParams.leftMargin);
        }
        if (this.c != null && this.c.getParent() == this) {
            paddingLeft = a(this.c, paddingLeft, makeMeasureSpec, 0);
        }
        if (this.k != null && this.j == null) {
            if (this.p) {
                this.k.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                int measuredWidth = this.k.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.k.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = a(this.k, paddingLeft, makeMeasureSpec, 0);
            }
        }
        if (this.j != null) {
            ViewGroup.LayoutParams layoutParams = this.j.getLayoutParams();
            int i6 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (layoutParams.width >= 0) {
                paddingLeft = Math.min(layoutParams.width, paddingLeft);
            }
            if (layoutParams.height == -2) {
                i3 = Integer.MIN_VALUE;
            }
            this.j.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i6), View.MeasureSpec.makeMeasureSpec(layoutParams.height >= 0 ? Math.min(layoutParams.height, i5) : i5, i3));
        }
        if (this.e <= 0) {
            int childCount = getChildCount();
            int i7 = 0;
            while (i4 < childCount) {
                int measuredHeight = getChildAt(i4).getMeasuredHeight() + paddingTop;
                if (measuredHeight <= i7) {
                    measuredHeight = i7;
                }
                i4++;
                i7 = measuredHeight;
            }
            setMeasuredDimension(size, i7);
            return;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        boolean a2 = ba.a(this);
        int paddingRight = a2 ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        if (this.i == null || this.i.getVisibility() == 8) {
            i5 = paddingRight;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.i.getLayoutParams();
            int i6 = a2 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i7 = a2 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int a3 = a(paddingRight, i6, a2);
            i5 = a(a(this.i, a3, paddingTop, paddingTop2, a2) + a3, i7, a2);
        }
        if (this.k != null && this.j == null && this.k.getVisibility() != 8) {
            i5 += a(this.k, i5, paddingTop, paddingTop2, a2);
        }
        if (this.j != null) {
            int a4 = a(this.j, i5, paddingTop, paddingTop2, a2) + i5;
        }
        int paddingLeft = a2 ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        if (this.c != null) {
            int a5 = a(this.c, paddingLeft, paddingTop, paddingTop2, !a2) + paddingLeft;
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 14) {
            if (accessibilityEvent.getEventType() == 32) {
                accessibilityEvent.setSource(this);
                accessibilityEvent.setClassName(getClass().getName());
                accessibilityEvent.setPackageName(getContext().getPackageName());
                accessibilityEvent.setContentDescription(this.g);
                return;
            }
            super.onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    public void setTitleOptional(boolean z) {
        if (z != this.p) {
            requestLayout();
        }
        this.p = z;
    }

    public boolean d() {
        return this.p;
    }
}
