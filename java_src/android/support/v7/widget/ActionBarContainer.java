package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
@RestrictTo
/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    Drawable f732a;
    Drawable b;
    Drawable c;
    boolean d;
    boolean e;
    private boolean f;
    private View g;
    private View h;
    private View i;
    private int j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        android.support.v4.view.ai.a(this, Build.VERSION.SDK_INT >= 21 ? new c(this) : new b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.f732a = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_background);
        this.b = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundStacked);
        this.j = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_height, -1);
        if (getId() == R.id.split_action_bar) {
            this.d = true;
            this.c = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        setWillNotDraw(this.d ? this.c == null : this.f732a == null && this.b == null);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.h = findViewById(R.id.action_bar);
        this.i = findViewById(R.id.action_context_bar);
    }

    public void setPrimaryBackground(Drawable drawable) {
        boolean z = true;
        if (this.f732a != null) {
            this.f732a.setCallback(null);
            unscheduleDrawable(this.f732a);
        }
        this.f732a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.h != null) {
                this.f732a.setBounds(this.h.getLeft(), this.h.getTop(), this.h.getRight(), this.h.getBottom());
            }
        }
        if (this.d) {
            if (this.c != null) {
                z = false;
            }
        } else if (this.f732a != null || this.b != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setStackedBackground(Drawable drawable) {
        boolean z = true;
        if (this.b != null) {
            this.b.setCallback(null);
            unscheduleDrawable(this.b);
        }
        this.b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.e && this.b != null) {
                this.b.setBounds(this.g.getLeft(), this.g.getTop(), this.g.getRight(), this.g.getBottom());
            }
        }
        if (this.d) {
            if (this.c != null) {
                z = false;
            }
        } else if (this.f732a != null || this.b != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setSplitBackground(Drawable drawable) {
        boolean z = true;
        if (this.c != null) {
            this.c.setCallback(null);
            unscheduleDrawable(this.c);
        }
        this.c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.d && this.c != null) {
                this.c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (this.d) {
            if (this.c != null) {
                z = false;
            }
        } else if (this.f732a != null || this.b != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.f732a != null) {
            this.f732a.setVisible(z, false);
        }
        if (this.b != null) {
            this.b.setVisible(z, false);
        }
        if (this.c != null) {
            this.c.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f732a && !this.d) || (drawable == this.b && this.e) || ((drawable == this.c && this.d) || super.verifyDrawable(drawable));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f732a != null && this.f732a.isStateful()) {
            this.f732a.setState(getDrawableState());
        }
        if (this.b != null && this.b.isStateful()) {
            this.b.setState(getDrawableState());
        }
        if (this.c != null && this.c.isStateful()) {
            this.c.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.jumpDrawablesToCurrentState();
            if (this.f732a != null) {
                this.f732a.jumpToCurrentState();
            }
            if (this.b != null) {
                this.b.jumpToCurrentState();
            }
            if (this.c != null) {
                this.c.jumpToCurrentState();
            }
        }
    }

    public void setTransitioning(boolean z) {
        this.f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setTabContainer(an anVar) {
        if (this.g != null) {
            removeView(this.g);
        }
        this.g = anVar;
        if (anVar != null) {
            addView(anVar);
            ViewGroup.LayoutParams layoutParams = anVar.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            anVar.setAllowCollapse(false);
        }
    }

    public View getTabContainer() {
        return this.g;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    private boolean a(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    private int b(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return layoutParams.bottomMargin + view.getMeasuredHeight() + layoutParams.topMargin;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.h == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && this.j >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(this.j, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.h != null) {
            int mode = View.MeasureSpec.getMode(i2);
            if (this.g != null && this.g.getVisibility() != 8 && mode != 1073741824) {
                if (!a(this.h)) {
                    i3 = b(this.h);
                } else if (!a(this.i)) {
                    i3 = b(this.i);
                } else {
                    i3 = 0;
                }
                setMeasuredDimension(getMeasuredWidth(), Math.min(i3 + b(this.g), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i2) : Integer.MAX_VALUE));
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        boolean z3 = true;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.g;
        boolean z4 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            view.layout(i, (measuredHeight - view.getMeasuredHeight()) - layoutParams.bottomMargin, i3, measuredHeight - layoutParams.bottomMargin);
        }
        if (this.d) {
            if (this.c != null) {
                this.c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z3 = false;
            }
        } else {
            if (this.f732a != null) {
                if (this.h.getVisibility() == 0) {
                    this.f732a.setBounds(this.h.getLeft(), this.h.getTop(), this.h.getRight(), this.h.getBottom());
                } else if (this.i != null && this.i.getVisibility() == 0) {
                    this.f732a.setBounds(this.i.getLeft(), this.i.getTop(), this.i.getRight(), this.i.getBottom());
                } else {
                    this.f732a.setBounds(0, 0, 0, 0);
                }
                z2 = true;
            } else {
                z2 = false;
            }
            this.e = z4;
            if (!z4 || this.b == null) {
                z3 = z2;
            } else {
                this.b.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z3) {
            invalidate();
        }
    }
}
