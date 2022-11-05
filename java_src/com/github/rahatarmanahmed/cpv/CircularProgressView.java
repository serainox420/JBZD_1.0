package com.github.rahatarmanahmed.cpv;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class CircularProgressView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f3119a;
    private int b;
    private RectF c;
    private boolean d;
    private boolean e;
    private float f;
    private float g;
    private float h;
    private float i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private List<a> p;
    private float q;
    private float r;
    private ValueAnimator s;
    private ValueAnimator t;
    private AnimatorSet u;
    private float v;

    public CircularProgressView(Context context) {
        super(context);
        this.b = 0;
        a((AttributeSet) null, 0);
    }

    public CircularProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        a(attributeSet, 0);
    }

    public CircularProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 0;
        a(attributeSet, i);
    }

    protected void a(AttributeSet attributeSet, int i) {
        this.p = new ArrayList();
        b(attributeSet, i);
        this.f3119a = new Paint(1);
        e();
        this.c = new RectF();
    }

    private void b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.CircularProgressView, i, 0);
        Resources resources = getResources();
        this.f = obtainStyledAttributes.getFloat(R.styleable.CircularProgressView_cpv_progress, resources.getInteger(R.integer.cpv_default_progress));
        this.g = obtainStyledAttributes.getFloat(R.styleable.CircularProgressView_cpv_maxProgress, resources.getInteger(R.integer.cpv_default_max_progress));
        this.j = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CircularProgressView_cpv_thickness, resources.getDimensionPixelSize(R.dimen.cpv_default_thickness));
        this.d = obtainStyledAttributes.getBoolean(R.styleable.CircularProgressView_cpv_indeterminate, resources.getBoolean(R.bool.cpv_default_is_indeterminate));
        this.e = obtainStyledAttributes.getBoolean(R.styleable.CircularProgressView_cpv_animAutostart, resources.getBoolean(R.bool.cpv_default_anim_autostart));
        this.v = obtainStyledAttributes.getFloat(R.styleable.CircularProgressView_cpv_startAngle, resources.getInteger(R.integer.cpv_default_start_angle));
        this.q = this.v;
        int identifier = getContext().getResources().getIdentifier("colorAccent", "attr", getContext().getPackageName());
        if (obtainStyledAttributes.hasValue(R.styleable.CircularProgressView_cpv_color)) {
            this.k = obtainStyledAttributes.getColor(R.styleable.CircularProgressView_cpv_color, resources.getColor(R.color.cpv_default_color));
        } else if (identifier != 0) {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(identifier, typedValue, true);
            this.k = typedValue.data;
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.k = getContext().obtainStyledAttributes(new int[]{16843829}).getColor(0, resources.getColor(R.color.cpv_default_color));
        } else {
            this.k = resources.getColor(R.color.cpv_default_color);
        }
        this.l = obtainStyledAttributes.getInteger(R.styleable.CircularProgressView_cpv_animDuration, resources.getInteger(R.integer.cpv_default_anim_duration));
        this.m = obtainStyledAttributes.getInteger(R.styleable.CircularProgressView_cpv_animSwoopDuration, resources.getInteger(R.integer.cpv_default_anim_swoop_duration));
        this.n = obtainStyledAttributes.getInteger(R.styleable.CircularProgressView_cpv_animSyncDuration, resources.getInteger(R.integer.cpv_default_anim_sync_duration));
        this.o = obtainStyledAttributes.getInteger(R.styleable.CircularProgressView_cpv_animSteps, resources.getInteger(R.integer.cpv_default_anim_steps));
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int measuredWidth = getMeasuredWidth() - paddingLeft;
        int measuredHeight = getMeasuredHeight() - paddingTop;
        if (measuredWidth >= measuredHeight) {
            measuredWidth = measuredHeight;
        }
        this.b = measuredWidth;
        setMeasuredDimension(this.b + paddingLeft, this.b + paddingTop);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i >= i2) {
            i = i2;
        }
        this.b = i;
        d();
    }

    private void d() {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        this.c.set(this.j + paddingLeft, this.j + paddingTop, (this.b - paddingLeft) - this.j, (this.b - paddingTop) - this.j);
    }

    private void e() {
        this.f3119a.setColor(this.k);
        this.f3119a.setStyle(Paint.Style.STROKE);
        this.f3119a.setStrokeWidth(this.j);
        this.f3119a.setStrokeCap(Paint.Cap.BUTT);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = isInEditMode() ? (this.f / this.g) * 360.0f : (this.r / this.g) * 360.0f;
        if (!this.d) {
            canvas.drawArc(this.c, this.q, f, false, this.f3119a);
        } else {
            canvas.drawArc(this.c, this.i + this.q, this.h, false, this.f3119a);
        }
    }

    public void setIndeterminate(boolean z) {
        boolean z2 = this.d;
        boolean z3 = this.d == z;
        this.d = z;
        if (z3) {
            b();
        }
        if (z2 != z) {
            for (a aVar : this.p) {
                aVar.a(z);
            }
        }
    }

    public int getThickness() {
        return this.j;
    }

    public void setThickness(int i) {
        this.j = i;
        e();
        d();
        invalidate();
    }

    public int getColor() {
        return this.k;
    }

    public void setColor(int i) {
        this.k = i;
        e();
        invalidate();
    }

    public float getMaxProgress() {
        return this.g;
    }

    public void setMaxProgress(float f) {
        this.g = f;
        invalidate();
    }

    public float getProgress() {
        return this.f;
    }

    public void setProgress(final float f) {
        this.f = f;
        if (!this.d) {
            if (this.t != null && this.t.isRunning()) {
                this.t.cancel();
            }
            this.t = ValueAnimator.ofFloat(this.r, f);
            this.t.setDuration(this.n);
            this.t.setInterpolator(new LinearInterpolator());
            this.t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CircularProgressView.this.r = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.t.addListener(new AnimatorListenerAdapter() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    for (a aVar : CircularProgressView.this.p) {
                        aVar.b(f);
                    }
                }
            });
            this.t.start();
        }
        invalidate();
        for (a aVar : this.p) {
            aVar.a(f);
        }
    }

    public void a() {
        b();
    }

    public void b() {
        int i = 0;
        if (this.s != null && this.s.isRunning()) {
            this.s.cancel();
        }
        if (this.t != null && this.t.isRunning()) {
            this.t.cancel();
        }
        if (this.u != null && this.u.isRunning()) {
            this.u.cancel();
        }
        if (!this.d) {
            this.q = this.v;
            this.s = ValueAnimator.ofFloat(this.q, this.q + 360.0f);
            this.s.setDuration(this.m);
            this.s.setInterpolator(new DecelerateInterpolator(2.0f));
            this.s.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CircularProgressView.this.q = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.s.start();
            this.r = BitmapDescriptorFactory.HUE_RED;
            this.t = ValueAnimator.ofFloat(this.r, this.f);
            this.t.setDuration(this.n);
            this.t.setInterpolator(new LinearInterpolator());
            this.t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CircularProgressView.this.r = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.t.start();
            return;
        }
        this.h = 15.0f;
        this.u = new AnimatorSet();
        AnimatorSet animatorSet = null;
        while (i < this.o) {
            AnimatorSet a2 = a(i);
            AnimatorSet.Builder play = this.u.play(a2);
            if (animatorSet != null) {
                play.after(animatorSet);
            }
            i++;
            animatorSet = a2;
        }
        this.u.addListener(new AnimatorListenerAdapter() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.5

            /* renamed from: a  reason: collision with root package name */
            boolean f3124a = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.f3124a = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.f3124a) {
                    CircularProgressView.this.b();
                }
            }
        });
        this.u.start();
        for (a aVar : this.p) {
            aVar.a();
        }
    }

    public void c() {
        if (this.s != null) {
            this.s.cancel();
            this.s = null;
        }
        if (this.t != null) {
            this.t.cancel();
            this.t = null;
        }
        if (this.u != null) {
            this.u.cancel();
            this.u = null;
        }
    }

    private AnimatorSet a(float f) {
        final float f2 = ((360.0f * (this.o - 1)) / this.o) + 15.0f;
        final float f3 = (-90.0f) + ((f2 - 15.0f) * f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(15.0f, f2);
        ofFloat.setDuration((this.l / this.o) / 2);
        ofFloat.setInterpolator(new DecelerateInterpolator(1.0f));
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.h = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressView.this.invalidate();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat((f * 720.0f) / this.o, ((0.5f + f) * 720.0f) / this.o);
        ofFloat2.setDuration((this.l / this.o) / 2);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.i = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(f3, (f3 + f2) - 15.0f);
        ofFloat3.setDuration((this.l / this.o) / 2);
        ofFloat3.setInterpolator(new DecelerateInterpolator(1.0f));
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.q = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressView.this.h = (f2 - CircularProgressView.this.q) + f3;
                CircularProgressView.this.invalidate();
            }
        });
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(((0.5f + f) * 720.0f) / this.o, ((1.0f + f) * 720.0f) / this.o);
        ofFloat4.setDuration((this.l / this.o) / 2);
        ofFloat4.setInterpolator(new LinearInterpolator());
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.i = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.play(ofFloat3).with(ofFloat4).after(ofFloat2);
        return animatorSet;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.e) {
            a();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        int visibility = getVisibility();
        super.setVisibility(i);
        if (i != visibility) {
            if (i == 0) {
                b();
            } else if (i == 8 || i == 4) {
                c();
            }
        }
    }
}
