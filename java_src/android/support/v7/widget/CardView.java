package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.cardview.R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public class CardView extends FrameLayout {
    private static final int[] e = {16842801};
    private static final q f;

    /* renamed from: a  reason: collision with root package name */
    int f780a;
    int b;
    final Rect c;
    final Rect d;
    private boolean g;
    private boolean h;
    private final o i;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f = new n();
        } else if (Build.VERSION.SDK_INT >= 17) {
            f = new r();
        } else {
            f = new p();
        }
        f.a();
    }

    public CardView(Context context) {
        super(context);
        this.c = new Rect();
        this.d = new Rect();
        this.i = new o() { // from class: android.support.v7.widget.CardView.1
            private Drawable b;

            @Override // android.support.v7.widget.o
            public void a(Drawable drawable) {
                this.b = drawable;
                CardView.this.setBackgroundDrawable(drawable);
            }

            @Override // android.support.v7.widget.o
            public boolean a() {
                return CardView.this.getUseCompatPadding();
            }

            @Override // android.support.v7.widget.o
            public boolean b() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override // android.support.v7.widget.o
            public void a(int i, int i2, int i3, int i4) {
                CardView.this.d.set(i, i2, i3, i4);
                CardView.super.setPadding(CardView.this.c.left + i, CardView.this.c.top + i2, CardView.this.c.right + i3, CardView.this.c.bottom + i4);
            }

            @Override // android.support.v7.widget.o
            public void a(int i, int i2) {
                if (i > CardView.this.f780a) {
                    CardView.super.setMinimumWidth(i);
                }
                if (i2 > CardView.this.b) {
                    CardView.super.setMinimumHeight(i2);
                }
            }

            @Override // android.support.v7.widget.o
            public Drawable c() {
                return this.b;
            }

            @Override // android.support.v7.widget.o
            public View d() {
                return CardView.this;
            }
        };
        a(context, null, 0);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new Rect();
        this.d = new Rect();
        this.i = new o() { // from class: android.support.v7.widget.CardView.1
            private Drawable b;

            @Override // android.support.v7.widget.o
            public void a(Drawable drawable) {
                this.b = drawable;
                CardView.this.setBackgroundDrawable(drawable);
            }

            @Override // android.support.v7.widget.o
            public boolean a() {
                return CardView.this.getUseCompatPadding();
            }

            @Override // android.support.v7.widget.o
            public boolean b() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override // android.support.v7.widget.o
            public void a(int i, int i2, int i3, int i4) {
                CardView.this.d.set(i, i2, i3, i4);
                CardView.super.setPadding(CardView.this.c.left + i, CardView.this.c.top + i2, CardView.this.c.right + i3, CardView.this.c.bottom + i4);
            }

            @Override // android.support.v7.widget.o
            public void a(int i, int i2) {
                if (i > CardView.this.f780a) {
                    CardView.super.setMinimumWidth(i);
                }
                if (i2 > CardView.this.b) {
                    CardView.super.setMinimumHeight(i2);
                }
            }

            @Override // android.support.v7.widget.o
            public Drawable c() {
                return this.b;
            }

            @Override // android.support.v7.widget.o
            public View d() {
                return CardView.this;
            }
        };
        a(context, attributeSet, 0);
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Rect();
        this.d = new Rect();
        this.i = new o() { // from class: android.support.v7.widget.CardView.1
            private Drawable b;

            @Override // android.support.v7.widget.o
            public void a(Drawable drawable) {
                this.b = drawable;
                CardView.this.setBackgroundDrawable(drawable);
            }

            @Override // android.support.v7.widget.o
            public boolean a() {
                return CardView.this.getUseCompatPadding();
            }

            @Override // android.support.v7.widget.o
            public boolean b() {
                return CardView.this.getPreventCornerOverlap();
            }

            @Override // android.support.v7.widget.o
            public void a(int i2, int i22, int i3, int i4) {
                CardView.this.d.set(i2, i22, i3, i4);
                CardView.super.setPadding(CardView.this.c.left + i2, CardView.this.c.top + i22, CardView.this.c.right + i3, CardView.this.c.bottom + i4);
            }

            @Override // android.support.v7.widget.o
            public void a(int i2, int i22) {
                if (i2 > CardView.this.f780a) {
                    CardView.super.setMinimumWidth(i2);
                }
                if (i22 > CardView.this.b) {
                    CardView.super.setMinimumHeight(i22);
                }
            }

            @Override // android.support.v7.widget.o
            public Drawable c() {
                return this.b;
            }

            @Override // android.support.v7.widget.o
            public View d() {
                return CardView.this;
            }
        };
        a(context, attributeSet, i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public boolean getUseCompatPadding() {
        return this.g;
    }

    public void setUseCompatPadding(boolean z) {
        if (this.g != z) {
            this.g = z;
            f.g(this.i);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!(f instanceof n)) {
            int mode = View.MeasureSpec.getMode(i);
            switch (mode) {
                case Integer.MIN_VALUE:
                case 1073741824:
                    i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f.b(this.i)), View.MeasureSpec.getSize(i)), mode);
                    break;
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            switch (mode2) {
                case Integer.MIN_VALUE:
                case 1073741824:
                    i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f.c(this.i)), View.MeasureSpec.getSize(i2)), mode2);
                    break;
            }
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        int color;
        ColorStateList valueOf;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CardView, i, R.style.CardView);
        if (obtainStyledAttributes.hasValue(R.styleable.CardView_cardBackgroundColor)) {
            valueOf = obtainStyledAttributes.getColorStateList(R.styleable.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(e);
            int color2 = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(R.color.cardview_light_background);
            } else {
                color = getResources().getColor(R.color.cardview_dark_background);
            }
            valueOf = ColorStateList.valueOf(color);
        }
        float dimension = obtainStyledAttributes.getDimension(R.styleable.CardView_cardCornerRadius, BitmapDescriptorFactory.HUE_RED);
        float dimension2 = obtainStyledAttributes.getDimension(R.styleable.CardView_cardElevation, BitmapDescriptorFactory.HUE_RED);
        float dimension3 = obtainStyledAttributes.getDimension(R.styleable.CardView_cardMaxElevation, BitmapDescriptorFactory.HUE_RED);
        this.g = obtainStyledAttributes.getBoolean(R.styleable.CardView_cardUseCompatPadding, false);
        this.h = obtainStyledAttributes.getBoolean(R.styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPadding, 0);
        this.c.left = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        this.c.top = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingTop, dimensionPixelSize);
        this.c.right = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingRight, dimensionPixelSize);
        this.c.bottom = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        if (dimension2 > dimension3) {
            dimension3 = dimension2;
        }
        this.f780a = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_android_minWidth, 0);
        this.b = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f.a(this.i, context, valueOf, dimension, dimension2, dimension3);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f780a = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.b = i;
        super.setMinimumHeight(i);
    }

    public void setCardBackgroundColor(int i) {
        f.a(this.i, ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f.a(this.i, colorStateList);
    }

    public ColorStateList getCardBackgroundColor() {
        return f.i(this.i);
    }

    public int getContentPaddingLeft() {
        return this.c.left;
    }

    public int getContentPaddingRight() {
        return this.c.right;
    }

    public int getContentPaddingTop() {
        return this.c.top;
    }

    public int getContentPaddingBottom() {
        return this.c.bottom;
    }

    public void setRadius(float f2) {
        f.a(this.i, f2);
    }

    public float getRadius() {
        return f.d(this.i);
    }

    public void setCardElevation(float f2) {
        f.c(this.i, f2);
    }

    public float getCardElevation() {
        return f.e(this.i);
    }

    public void setMaxCardElevation(float f2) {
        f.b(this.i, f2);
    }

    public float getMaxCardElevation() {
        return f.a(this.i);
    }

    public boolean getPreventCornerOverlap() {
        return this.h;
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.h) {
            this.h = z;
            f.h(this.i);
        }
    }
}
