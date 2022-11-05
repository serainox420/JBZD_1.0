package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.support.v4.view.bd;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbsActionBarView.java */
/* loaded from: classes.dex */
public abstract class a extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    protected final C0046a f857a;
    protected final Context b;
    protected ActionMenuView c;
    protected ActionMenuPresenter d;
    protected int e;
    protected android.support.v4.view.az f;
    private boolean g;
    private boolean h;

    a(Context context) {
        this(context, null);
    }

    a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f857a = new C0046a();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) && typedValue.resourceId != 0) {
            this.b = new ContextThemeWrapper(context, typedValue.resourceId);
        } else {
            this.b = context;
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        if (this.d != null) {
            this.d.a(configuration);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int a2 = android.support.v4.view.t.a(motionEvent);
        if (a2 == 0) {
            this.g = false;
        }
        if (!this.g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (a2 == 0 && !onTouchEvent) {
                this.g = true;
            }
        }
        if (a2 == 1 || a2 == 3) {
            this.g = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int a2 = android.support.v4.view.t.a(motionEvent);
        if (a2 == 9) {
            this.h = false;
        }
        if (!this.h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (a2 == 9 && !onHoverEvent) {
                this.h = true;
            }
        }
        if (a2 == 10 || a2 == 3) {
            this.h = false;
        }
        return true;
    }

    public void setContentHeight(int i) {
        this.e = i;
        requestLayout();
    }

    public int getContentHeight() {
        return this.e;
    }

    public int getAnimatedVisibility() {
        return this.f != null ? this.f857a.f858a : getVisibility();
    }

    public android.support.v4.view.az a(int i, long j) {
        if (this.f != null) {
            this.f.b();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                android.support.v4.view.ai.c(this, (float) BitmapDescriptorFactory.HUE_RED);
            }
            android.support.v4.view.az a2 = android.support.v4.view.ai.r(this).a(1.0f);
            a2.a(j);
            a2.a(this.f857a.a(a2, i));
            return a2;
        }
        android.support.v4.view.az a3 = android.support.v4.view.ai.r(this).a(BitmapDescriptorFactory.HUE_RED);
        a3.a(j);
        a3.a(this.f857a.a(a3, i));
        return a3;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            if (this.f != null) {
                this.f.b();
            }
            super.setVisibility(i);
        }
    }

    public boolean a() {
        if (this.d != null) {
            return this.d.f();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int a(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* compiled from: AbsActionBarView.java */
    /* renamed from: android.support.v7.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    protected class C0046a implements bd {

        /* renamed from: a  reason: collision with root package name */
        int f858a;
        private boolean c = false;

        protected C0046a() {
        }

        public C0046a a(android.support.v4.view.az azVar, int i) {
            a.this.f = azVar;
            this.f858a = i;
            return this;
        }

        @Override // android.support.v4.view.bd
        public void a(View view) {
            a.super.setVisibility(0);
            this.c = false;
        }

        @Override // android.support.v4.view.bd
        public void b(View view) {
            if (!this.c) {
                a.this.f = null;
                a.super.setVisibility(this.f858a);
            }
        }

        @Override // android.support.v4.view.bd
        public void c(View view) {
            this.c = true;
        }
    }
}
