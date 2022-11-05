package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.design.R;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.j;
import android.support.v4.view.ai;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
@CoordinatorLayout.a(a = Behavior.class)
/* loaded from: classes.dex */
public class FloatingActionButton extends VisibilityAwareImageButton {

    /* renamed from: a  reason: collision with root package name */
    int f63a;
    boolean b;
    final Rect c;
    private ColorStateList d;
    private PorterDuff.Mode e;
    private int f;
    private int g;
    private int h;
    private int i;
    private final Rect j;
    private android.support.v7.widget.i k;
    private j l;

    @Override // android.support.design.widget.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    /* loaded from: classes.dex */
    public static abstract class a {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Rect();
        this.j = new Rect();
        q.a(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton, i, R.style.Widget_Design_FloatingActionButton);
        this.d = obtainStyledAttributes.getColorStateList(R.styleable.FloatingActionButton_backgroundTint);
        this.e = x.a(obtainStyledAttributes.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1), (PorterDuff.Mode) null);
        this.g = obtainStyledAttributes.getColor(R.styleable.FloatingActionButton_rippleColor, 0);
        this.h = obtainStyledAttributes.getInt(R.styleable.FloatingActionButton_fabSize, -1);
        this.f = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
        float dimension = obtainStyledAttributes.getDimension(R.styleable.FloatingActionButton_elevation, BitmapDescriptorFactory.HUE_RED);
        float dimension2 = obtainStyledAttributes.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, BitmapDescriptorFactory.HUE_RED);
        this.b = obtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_useCompatPadding, false);
        obtainStyledAttributes.recycle();
        this.k = new android.support.v7.widget.i(this);
        this.k.a(attributeSet, i);
        this.i = (int) getResources().getDimension(R.dimen.design_fab_image_size);
        getImpl().a(this.d, this.e, this.g, this.f);
        getImpl().a(dimension);
        getImpl().b(dimension2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.f63a = (sizeDimension - this.i) / 2;
        getImpl().g();
        int min = Math.min(a(sizeDimension, i), a(sizeDimension, i2));
        setMeasuredDimension(this.c.left + min + this.c.right, min + this.c.top + this.c.bottom);
    }

    public int getRippleColor() {
        return this.g;
    }

    public void setRippleColor(int i) {
        if (this.g != i) {
            this.g = i;
            getImpl().a(i);
        }
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.d;
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.d != colorStateList) {
            this.d = colorStateList;
            getImpl().a(colorStateList);
        }
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.e;
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.e != mode) {
            this.e = mode;
            getImpl().a(mode);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.k.a(i);
    }

    void a(a aVar, boolean z) {
        getImpl().b(a(aVar), z);
    }

    void b(a aVar, boolean z) {
        getImpl().a(a(aVar), z);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.b != z) {
            this.b = z;
            getImpl().c();
        }
    }

    public boolean getUseCompatPadding() {
        return this.b;
    }

    public void setSize(int i) {
        if (i != this.h) {
            this.h = i;
            requestLayout();
        }
    }

    public int getSize() {
        return this.h;
    }

    private j.a a(final a aVar) {
        if (aVar == null) {
            return null;
        }
        return new j.a() { // from class: android.support.design.widget.FloatingActionButton.1
            @Override // android.support.design.widget.j.a
            public void a() {
                aVar.a(FloatingActionButton.this);
            }

            @Override // android.support.design.widget.j.a
            public void b() {
                aVar.b(FloatingActionButton.this);
            }
        };
    }

    int getSizeDimension() {
        return a(this.h);
    }

    private int a(int i) {
        Resources resources = getResources();
        switch (i) {
            case -1:
                if (Math.max(android.support.v4.content.a.a.b(resources), android.support.v4.content.a.a.a(resources)) < 470) {
                    return a(1);
                }
                return a(0);
            case 0:
            default:
                return resources.getDimensionPixelSize(R.dimen.design_fab_size_normal);
            case 1:
                return resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().h();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().i();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().a(getDrawableState());
    }

    @Override // android.widget.ImageView, android.view.View
    @TargetApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().b();
    }

    public boolean a(Rect rect) {
        if (ai.F(this)) {
            rect.set(0, 0, getWidth(), getHeight());
            rect.left += this.c.left;
            rect.top += this.c.top;
            rect.right -= this.c.right;
            rect.bottom -= this.c.bottom;
            return true;
        }
        return false;
    }

    public Drawable getContentBackground() {
        return getImpl().f();
    }

    private static int a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        switch (mode) {
            case Integer.MIN_VALUE:
                return Math.min(i, size);
            case 0:
            default:
                return i;
            case 1073741824:
                return size;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                if (a(this.j) && !this.j.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    return false;
                }
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    /* loaded from: classes.dex */
    public static class Behavior extends CoordinatorLayout.Behavior<FloatingActionButton> {

        /* renamed from: a  reason: collision with root package name */
        private Rect f65a;
        private a b;
        private boolean c;

        public Behavior() {
            this.c = true;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
            this.c = obtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout.c cVar) {
            if (cVar.h == 0) {
                cVar.h = 80;
            }
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public boolean c(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (a(view)) {
                b(view, floatingActionButton);
                return false;
            } else {
                return false;
            }
        }

        private static boolean a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.c) {
                return ((CoordinatorLayout.c) layoutParams).b() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean a(View view, FloatingActionButton floatingActionButton) {
            return this.c && ((CoordinatorLayout.c) floatingActionButton.getLayoutParams()).a() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        private boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!a(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f65a == null) {
                this.f65a = new Rect();
            }
            Rect rect = this.f65a;
            u.b(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.b(this.b, false);
            } else {
                floatingActionButton.a(this.b, false);
            }
            return true;
        }

        private boolean b(View view, FloatingActionButton floatingActionButton) {
            if (!a(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < ((CoordinatorLayout.c) floatingActionButton.getLayoutParams()).topMargin + (floatingActionButton.getHeight() / 2)) {
                floatingActionButton.b(this.b, false);
            } else {
                floatingActionButton.a(this.b, false);
            }
            return true;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> c = coordinatorLayout.c(floatingActionButton);
            int size = c.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = c.get(i2);
                if (view instanceof AppBarLayout) {
                    if (a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (a(view) && b(view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.a(floatingActionButton, i);
            a(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.c;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        private void a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            int i;
            int i2 = 0;
            Rect rect = floatingActionButton.c;
            if (rect != null && rect.centerX() > 0 && rect.centerY() > 0) {
                CoordinatorLayout.c cVar = (CoordinatorLayout.c) floatingActionButton.getLayoutParams();
                if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - cVar.rightMargin) {
                    i = rect.right;
                } else {
                    i = floatingActionButton.getLeft() <= cVar.leftMargin ? -rect.left : 0;
                }
                if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - cVar.bottomMargin) {
                    i2 = rect.bottom;
                } else if (floatingActionButton.getTop() <= cVar.topMargin) {
                    i2 = -rect.top;
                }
                if (i2 != 0) {
                    ai.e((View) floatingActionButton, i2);
                }
                if (i != 0) {
                    ai.f((View) floatingActionButton, i);
                }
            }
        }
    }

    public float getCompatElevation() {
        return getImpl().a();
    }

    public void setCompatElevation(float f) {
        getImpl().a(f);
    }

    private j getImpl() {
        if (this.l == null) {
            this.l = a();
        }
        return this.l;
    }

    private j a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            return new k(this, new b(), x.f143a);
        }
        if (i >= 14) {
            return new i(this, new b(), x.f143a);
        }
        return new h(this, new b(), x.f143a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements n {
        b() {
        }

        @Override // android.support.design.widget.n
        public float a() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override // android.support.design.widget.n
        public void a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.c.set(i, i2, i3, i4);
            FloatingActionButton.this.setPadding(FloatingActionButton.this.f63a + i, FloatingActionButton.this.f63a + i2, FloatingActionButton.this.f63a + i3, FloatingActionButton.this.f63a + i4);
        }

        @Override // android.support.design.widget.n
        public void a(Drawable drawable) {
            FloatingActionButton.super.setBackgroundDrawable(drawable);
        }

        @Override // android.support.design.widget.n
        public boolean b() {
            return FloatingActionButton.this.b;
        }
    }
}
