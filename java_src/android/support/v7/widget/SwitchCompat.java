package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.appcompat.R;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.CompoundButton;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    private static final int[] M = {16842912};
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private TextPaint G;
    private ColorStateList H;
    private Layout I;
    private Layout J;
    private TransformationMethod K;
    private final Rect L;

    /* renamed from: a  reason: collision with root package name */
    a f847a;
    private Drawable b;
    private ColorStateList c;
    private PorterDuff.Mode d;
    private boolean e;
    private boolean f;
    private Drawable g;
    private ColorStateList h;
    private PorterDuff.Mode i;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private CharSequence p;
    private CharSequence q;
    private boolean r;
    private int s;
    private int t;
    private float u;
    private float v;
    private VelocityTracker w;
    private int x;
    private float y;
    private int z;

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = null;
        this.d = null;
        this.e = false;
        this.f = false;
        this.h = null;
        this.i = null;
        this.j = false;
        this.k = false;
        this.w = VelocityTracker.obtain();
        this.L = new Rect();
        this.G = new TextPaint(1);
        Resources resources = getResources();
        this.G.density = resources.getDisplayMetrics().density;
        av a2 = av.a(context, attributeSet, R.styleable.SwitchCompat, i, 0);
        this.b = a2.a(R.styleable.SwitchCompat_android_thumb);
        if (this.b != null) {
            this.b.setCallback(this);
        }
        this.g = a2.a(R.styleable.SwitchCompat_track);
        if (this.g != null) {
            this.g.setCallback(this);
        }
        this.p = a2.c(R.styleable.SwitchCompat_android_textOn);
        this.q = a2.c(R.styleable.SwitchCompat_android_textOff);
        this.r = a2.a(R.styleable.SwitchCompat_showText, true);
        this.l = a2.e(R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.m = a2.e(R.styleable.SwitchCompat_switchMinWidth, 0);
        this.n = a2.e(R.styleable.SwitchCompat_switchPadding, 0);
        this.o = a2.a(R.styleable.SwitchCompat_splitTrack, false);
        ColorStateList e = a2.e(R.styleable.SwitchCompat_thumbTint);
        if (e != null) {
            this.c = e;
            this.e = true;
        }
        PorterDuff.Mode a3 = w.a(a2.a(R.styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.d != a3) {
            this.d = a3;
            this.f = true;
        }
        if (this.e || this.f) {
            b();
        }
        ColorStateList e2 = a2.e(R.styleable.SwitchCompat_trackTint);
        if (e2 != null) {
            this.h = e2;
            this.j = true;
        }
        PorterDuff.Mode a4 = w.a(a2.a(R.styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.i != a4) {
            this.i = a4;
            this.k = true;
        }
        if (this.j || this.k) {
            a();
        }
        int g = a2.g(R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (g != 0) {
            a(context, g);
        }
        a2.a();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.t = viewConfiguration.getScaledTouchSlop();
        this.x = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void a(Context context, int i) {
        av a2 = av.a(context, i, R.styleable.TextAppearance);
        ColorStateList e = a2.e(R.styleable.TextAppearance_android_textColor);
        if (e != null) {
            this.H = e;
        } else {
            this.H = getTextColors();
        }
        int e2 = a2.e(R.styleable.TextAppearance_android_textSize, 0);
        if (e2 != 0 && e2 != this.G.getTextSize()) {
            this.G.setTextSize(e2);
            requestLayout();
        }
        a(a2.a(R.styleable.TextAppearance_android_typeface, -1), a2.a(R.styleable.TextAppearance_android_textStyle, -1));
        if (a2.a(R.styleable.TextAppearance_textAllCaps, false)) {
            this.K = new android.support.v7.c.a(getContext());
        } else {
            this.K = null;
        }
        a2.a();
    }

    private void a(int i, int i2) {
        Typeface typeface = null;
        switch (i) {
            case 1:
                typeface = Typeface.SANS_SERIF;
                break;
            case 2:
                typeface = Typeface.SERIF;
                break;
            case 3:
                typeface = Typeface.MONOSPACE;
                break;
        }
        a(typeface, i2);
    }

    public void a(Typeface typeface, int i) {
        Typeface create;
        boolean z = false;
        if (i > 0) {
            if (typeface == null) {
                create = Typeface.defaultFromStyle(i);
            } else {
                create = Typeface.create(typeface, i);
            }
            setSwitchTypeface(create);
            int style = ((create != null ? create.getStyle() : 0) ^ (-1)) & i;
            TextPaint textPaint = this.G;
            if ((style & 1) != 0) {
                z = true;
            }
            textPaint.setFakeBoldText(z);
            this.G.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
            return;
        }
        this.G.setFakeBoldText(false);
        this.G.setTextSkewX(BitmapDescriptorFactory.HUE_RED);
        setSwitchTypeface(typeface);
    }

    public void setSwitchTypeface(Typeface typeface) {
        if (this.G.getTypeface() != typeface) {
            this.G.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setSwitchPadding(int i) {
        this.n = i;
        requestLayout();
    }

    public int getSwitchPadding() {
        return this.n;
    }

    public void setSwitchMinWidth(int i) {
        this.m = i;
        requestLayout();
    }

    public int getSwitchMinWidth() {
        return this.m;
    }

    public void setThumbTextPadding(int i) {
        this.l = i;
        requestLayout();
    }

    public int getThumbTextPadding() {
        return this.l;
    }

    public void setTrackDrawable(Drawable drawable) {
        if (this.g != null) {
            this.g.setCallback(null);
        }
        this.g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(android.support.v7.a.a.b.b(getContext(), i));
    }

    public Drawable getTrackDrawable() {
        return this.g;
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.h = colorStateList;
        this.j = true;
        a();
    }

    public ColorStateList getTrackTintList() {
        return this.h;
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.i = mode;
        this.k = true;
        a();
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.i;
    }

    private void a() {
        if (this.g != null) {
            if (this.j || this.k) {
                this.g = this.g.mutate();
                if (this.j) {
                    android.support.v4.b.a.a.a(this.g, this.h);
                }
                if (this.k) {
                    android.support.v4.b.a.a.a(this.g, this.i);
                }
                if (this.g.isStateful()) {
                    this.g.setState(getDrawableState());
                }
            }
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        if (this.b != null) {
            this.b.setCallback(null);
        }
        this.b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(android.support.v7.a.a.b.b(getContext(), i));
    }

    public Drawable getThumbDrawable() {
        return this.b;
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.c = colorStateList;
        this.e = true;
        b();
    }

    public ColorStateList getThumbTintList() {
        return this.c;
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.d = mode;
        this.f = true;
        b();
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.d;
    }

    private void b() {
        if (this.b != null) {
            if (this.e || this.f) {
                this.b = this.b.mutate();
                if (this.e) {
                    android.support.v4.b.a.a.a(this.b, this.c);
                }
                if (this.f) {
                    android.support.v4.b.a.a.a(this.b, this.d);
                }
                if (this.b.isStateful()) {
                    this.b.setState(getDrawableState());
                }
            }
        }
    }

    public void setSplitTrack(boolean z) {
        this.o = z;
        invalidate();
    }

    public boolean getSplitTrack() {
        return this.o;
    }

    public CharSequence getTextOn() {
        return this.p;
    }

    public void setTextOn(CharSequence charSequence) {
        this.p = charSequence;
        requestLayout();
    }

    public CharSequence getTextOff() {
        return this.q;
    }

    public void setTextOff(CharSequence charSequence) {
        this.q = charSequence;
        requestLayout();
    }

    public void setShowText(boolean z) {
        if (this.r != z) {
            this.r = z;
            requestLayout();
        }
    }

    public boolean getShowText() {
        return this.r;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5 = 0;
        if (this.r) {
            if (this.I == null) {
                this.I = a(this.p);
            }
            if (this.J == null) {
                this.J = a(this.q);
            }
        }
        Rect rect = this.L;
        if (this.b != null) {
            this.b.getPadding(rect);
            i4 = (this.b.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.b.getIntrinsicHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        this.B = Math.max(this.r ? Math.max(this.I.getWidth(), this.J.getWidth()) + (this.l * 2) : 0, i4);
        if (this.g != null) {
            this.g.getPadding(rect);
            i5 = this.g.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i6 = rect.left;
        int i7 = rect.right;
        if (this.b != null) {
            Rect a2 = w.a(this.b);
            i6 = Math.max(i6, a2.left);
            i7 = Math.max(i7, a2.right);
        }
        int max = Math.max(this.m, i7 + i6 + (this.B * 2));
        int max2 = Math.max(i5, i3);
        this.z = max;
        this.A = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(android.support.v4.view.ai.i(this), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.p : this.q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    private Layout a(CharSequence charSequence) {
        CharSequence transformation = this.K != null ? this.K.getTransformation(charSequence, this) : charSequence;
        return new StaticLayout(transformation, this.G, transformation != null ? (int) Math.ceil(Layout.getDesiredWidth(transformation, this.G)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
    }

    private boolean a(float f, float f2) {
        if (this.b == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.b.getPadding(this.L);
        int i = this.D - this.t;
        int i2 = (thumbOffset + this.C) - this.t;
        return f > ((float) i2) && f < ((float) ((((this.B + i2) + this.L.left) + this.L.right) + this.t)) && f2 > ((float) i) && f2 < ((float) (this.F + this.t));
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        this.w.addMovement(motionEvent);
        switch (android.support.v4.view.t.a(motionEvent)) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (isEnabled() && a(x, y)) {
                    this.s = 1;
                    this.u = x;
                    this.v = y;
                    break;
                }
                break;
            case 1:
            case 3:
                if (this.s == 2) {
                    b(motionEvent);
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.s = 0;
                this.w.clear();
                break;
            case 2:
                switch (this.s) {
                    case 2:
                        float x2 = motionEvent.getX();
                        int thumbScrollRange = getThumbScrollRange();
                        float f2 = x2 - this.u;
                        if (thumbScrollRange != 0) {
                            f = f2 / thumbScrollRange;
                        } else {
                            f = f2 > BitmapDescriptorFactory.HUE_RED ? 1.0f : -1.0f;
                        }
                        if (ba.a(this)) {
                            f = -f;
                        }
                        float a2 = a(f + this.y, BitmapDescriptorFactory.HUE_RED, 1.0f);
                        if (a2 != this.y) {
                            this.u = x2;
                            setThumbPosition(a2);
                        }
                        return true;
                    case 1:
                        float x3 = motionEvent.getX();
                        float y2 = motionEvent.getY();
                        if (Math.abs(x3 - this.u) > this.t || Math.abs(y2 - this.v) > this.t) {
                            this.s = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            this.u = x3;
                            this.v = y2;
                            return true;
                        }
                        break;
                }
        }
        return super.onTouchEvent(motionEvent);
    }

    private void a(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    private void b(MotionEvent motionEvent) {
        boolean z = true;
        this.s = 0;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z2) {
            this.w.computeCurrentVelocity(1000);
            float xVelocity = this.w.getXVelocity();
            if (Math.abs(xVelocity) > this.x) {
                if (ba.a(this)) {
                    if (xVelocity >= BitmapDescriptorFactory.HUE_RED) {
                        z = false;
                    }
                } else if (xVelocity <= BitmapDescriptorFactory.HUE_RED) {
                    z = false;
                }
            } else {
                z = getTargetCheckedState();
            }
        } else {
            z = isChecked;
        }
        if (z != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z);
        a(motionEvent);
    }

    private void a(final boolean z) {
        if (this.f847a != null) {
            c();
        }
        this.f847a = new a(this.y, z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.f847a.setDuration(250L);
        this.f847a.setAnimationListener(new Animation.AnimationListener() { // from class: android.support.v7.widget.SwitchCompat.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (SwitchCompat.this.f847a == animation) {
                    SwitchCompat.this.setThumbPosition(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                    SwitchCompat.this.f847a = null;
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        startAnimation(this.f847a);
    }

    private void c() {
        if (this.f847a != null) {
            clearAnimation();
            this.f847a = null;
        }
    }

    private boolean getTargetCheckedState() {
        return this.y > 0.5f;
    }

    void setThumbPosition(float f) {
        this.y = f;
        invalidate();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (getWindowToken() != null && android.support.v4.view.ai.F(this) && isShown()) {
            a(isChecked);
            return;
        }
        c();
        setThumbPosition(isChecked ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int height;
        int i8;
        int i9 = 0;
        super.onLayout(z, i, i2, i3, i4);
        if (this.b != null) {
            Rect rect = this.L;
            if (this.g != null) {
                this.g.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect a2 = w.a(this.b);
            i5 = Math.max(0, a2.left - rect.left);
            i9 = Math.max(0, a2.right - rect.right);
        } else {
            i5 = 0;
        }
        if (ba.a(this)) {
            int paddingLeft = getPaddingLeft() + i5;
            i7 = ((this.z + paddingLeft) - i5) - i9;
            i6 = paddingLeft;
        } else {
            int width = (getWidth() - getPaddingRight()) - i9;
            i6 = i9 + i5 + (width - this.z);
            i7 = width;
        }
        switch (getGravity() & 112) {
            case 16:
                i8 = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (this.A / 2);
                height = this.A + i8;
                break;
            case 80:
                height = getHeight() - getPaddingBottom();
                i8 = height - this.A;
                break;
            default:
                i8 = getPaddingTop();
                height = this.A + i8;
                break;
        }
        this.C = i6;
        this.D = i8;
        this.F = height;
        this.E = i7;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Rect rect;
        int i;
        int i2;
        int i3;
        Rect rect2 = this.L;
        int i4 = this.C;
        int i5 = this.D;
        int i6 = this.E;
        int i7 = this.F;
        int thumbOffset = i4 + getThumbOffset();
        if (this.b != null) {
            rect = w.a(this.b);
        } else {
            rect = w.f922a;
        }
        if (this.g != null) {
            this.g.getPadding(rect2);
            int i8 = rect2.left + thumbOffset;
            if (rect != null) {
                if (rect.left > rect2.left) {
                    i4 += rect.left - rect2.left;
                }
                i3 = rect.top > rect2.top ? (rect.top - rect2.top) + i5 : i5;
                if (rect.right > rect2.right) {
                    i6 -= rect.right - rect2.right;
                }
                i2 = rect.bottom > rect2.bottom ? i7 - (rect.bottom - rect2.bottom) : i7;
            } else {
                i2 = i7;
                i3 = i5;
            }
            this.g.setBounds(i4, i3, i6, i2);
            i = i8;
        } else {
            i = thumbOffset;
        }
        if (this.b != null) {
            this.b.getPadding(rect2);
            int i9 = i - rect2.left;
            int i10 = i + this.B + rect2.right;
            this.b.setBounds(i9, i5, i10, i7);
            Drawable background = getBackground();
            if (background != null) {
                android.support.v4.b.a.a.a(background, i9, i5, i10, i7);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.L;
        Drawable drawable = this.g;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.D;
        int i2 = this.F;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.b;
        if (drawable != null) {
            if (this.o && drawable2 != null) {
                Rect a2 = w.a(drawable2);
                drawable2.copyBounds(rect);
                rect.left += a2.left;
                rect.right -= a2.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            } else {
                drawable.draw(canvas);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.I : this.J;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            if (this.H != null) {
                this.G.setColor(this.H.getColorForState(drawableState, 0));
            }
            this.G.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.right + bounds.left;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i3 + i4) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!ba.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.z;
        if (!TextUtils.isEmpty(getText())) {
            return compoundPaddingLeft + this.n;
        }
        return compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (ba.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.z;
        if (!TextUtils.isEmpty(getText())) {
            return compoundPaddingRight + this.n;
        }
        return compoundPaddingRight;
    }

    private int getThumbOffset() {
        float f;
        if (ba.a(this)) {
            f = 1.0f - this.y;
        } else {
            f = this.y;
        }
        return (int) ((f * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Rect rect;
        if (this.g != null) {
            Rect rect2 = this.L;
            this.g.getPadding(rect2);
            if (this.b != null) {
                rect = w.a(this.b);
            } else {
                rect = w.f922a;
            }
            return ((((this.z - this.B) - rect2.left) - rect2.right) - rect.left) - rect.right;
        }
        return 0;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, M);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        boolean z = false;
        Drawable drawable = this.b;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        if (this.b != null) {
            android.support.v4.b.a.a.a(this.b, f, f2);
        }
        if (this.g != null) {
            android.support.v4.b.a.a.a(this.g, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.b || drawable == this.g;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.jumpDrawablesToCurrentState();
            if (this.b != null) {
                this.b.jumpToCurrentState();
            }
            if (this.g != null) {
                this.g.jumpToCurrentState();
            }
            c();
            setThumbPosition(isChecked() ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Switch");
            CharSequence charSequence = isChecked() ? this.p : this.q;
            if (!TextUtils.isEmpty(charSequence)) {
                CharSequence text = accessibilityNodeInfo.getText();
                if (TextUtils.isEmpty(text)) {
                    accessibilityNodeInfo.setText(charSequence);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(text).append(' ').append(charSequence);
                accessibilityNodeInfo.setText(sb);
            }
        }
    }

    private static float a(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final float f849a;
        final float b;
        final float c;

        a(float f, float f2) {
            this.f849a = f;
            this.b = f2;
            this.c = f2 - f;
        }

        @Override // android.view.animation.Animation
        protected void applyTransformation(float f, Transformation transformation) {
            SwitchCompat.this.setThumbPosition(this.f849a + (this.c * f));
        }
    }
}
