package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
/* compiled from: MaterialProgressDrawable.java */
/* loaded from: classes.dex */
class r extends Drawable implements Animatable {
    float b;
    boolean c;
    private float h;
    private Resources i;
    private View j;
    private Animation k;
    private double l;
    private double m;
    private static final Interpolator d = new LinearInterpolator();

    /* renamed from: a  reason: collision with root package name */
    static final Interpolator f517a = new android.support.v4.view.b.b();
    private static final int[] e = {DrawableConstants.CtaButton.BACKGROUND_COLOR};
    private final ArrayList<Animation> f = new ArrayList<>();
    private final Drawable.Callback n = new Drawable.Callback() { // from class: android.support.v4.widget.r.3
        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            r.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            r.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            r.this.unscheduleSelf(runnable);
        }
    };
    private final a g = new a(this.n);

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(Context context, View view) {
        this.j = view;
        this.i = context.getResources();
        this.g.a(e);
        a(1);
        a();
    }

    private void a(double d2, double d3, double d4, double d5, float f, float f2) {
        a aVar = this.g;
        float f3 = this.i.getDisplayMetrics().density;
        this.l = f3 * d2;
        this.m = f3 * d3;
        aVar.a(((float) d5) * f3);
        aVar.a(f3 * d4);
        aVar.c(0);
        aVar.a(f * f3, f3 * f2);
        aVar.a((int) this.l, (int) this.m);
    }

    public void a(int i) {
        if (i == 0) {
            a(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            a(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    public void a(boolean z) {
        this.g.a(z);
    }

    public void a(float f) {
        this.g.e(f);
    }

    public void a(float f, float f2) {
        this.g.b(f);
        this.g.c(f2);
    }

    public void b(float f) {
        this.g.d(f);
    }

    public void b(int i) {
        this.g.a(i);
    }

    public void a(int... iArr) {
        this.g.a(iArr);
        this.g.c(0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.h, bounds.exactCenterX(), bounds.exactCenterY());
        this.g.a(canvas, bounds);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.g.d(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.g.c();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.g.a(colorFilter);
    }

    void c(float f) {
        this.h = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Animation animation = arrayList.get(i);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.k.reset();
        this.g.l();
        if (this.g.i() != this.g.e()) {
            this.c = true;
            this.k.setDuration(666L);
            this.j.startAnimation(this.k);
            return;
        }
        this.g.c(0);
        this.g.m();
        this.k.setDuration(1332L);
        this.j.startAnimation(this.k);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.j.clearAnimation();
        c(BitmapDescriptorFactory.HUE_RED);
        this.g.a(false);
        this.g.c(0);
        this.g.m();
    }

    float a(a aVar) {
        return (float) Math.toRadians(aVar.d() / (6.283185307179586d * aVar.j()));
    }

    private int a(float f, int i, int i2) {
        int intValue = Integer.valueOf(i).intValue();
        int i3 = (intValue >> 24) & 255;
        int i4 = (intValue >> 16) & 255;
        int i5 = (intValue >> 8) & 255;
        int i6 = intValue & 255;
        int intValue2 = Integer.valueOf(i2).intValue();
        return (i6 + ((int) (((intValue2 & 255) - i6) * f))) | ((i3 + ((int) ((((intValue2 >> 24) & 255) - i3) * f))) << 24) | ((i4 + ((int) ((((intValue2 >> 16) & 255) - i4) * f))) << 16) | ((((int) ((((intValue2 >> 8) & 255) - i5) * f)) + i5) << 8);
    }

    void a(float f, a aVar) {
        if (f > 0.75f) {
            aVar.b(a((f - 0.75f) / 0.25f, aVar.h(), aVar.a()));
        }
    }

    void b(float f, a aVar) {
        a(f, aVar);
        float a2 = a(aVar);
        aVar.b((((aVar.g() - a2) - aVar.f()) * f) + aVar.f());
        aVar.c(aVar.g());
        aVar.d(((((float) (Math.floor(aVar.k() / 0.8f) + 1.0d)) - aVar.k()) * f) + aVar.k());
    }

    private void a() {
        final a aVar = this.g;
        Animation animation = new Animation() { // from class: android.support.v4.widget.r.1
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                if (r.this.c) {
                    r.this.b(f, aVar);
                    return;
                }
                float a2 = r.this.a(aVar);
                float g = aVar.g();
                float f2 = aVar.f();
                float k = aVar.k();
                r.this.a(f, aVar);
                if (f <= 0.5f) {
                    aVar.b(f2 + (r.f517a.getInterpolation(f / 0.5f) * (0.8f - a2)));
                }
                if (f > 0.5f) {
                    aVar.c(((0.8f - a2) * r.f517a.getInterpolation((f - 0.5f) / 0.5f)) + g);
                }
                aVar.d((0.25f * f) + k);
                r.this.c((216.0f * f) + (1080.0f * (r.this.b / 5.0f)));
            }
        };
        animation.setRepeatCount(-1);
        animation.setRepeatMode(1);
        animation.setInterpolator(d);
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: android.support.v4.widget.r.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
                r.this.b = BitmapDescriptorFactory.HUE_RED;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
                aVar.l();
                aVar.b();
                aVar.b(aVar.i());
                if (r.this.c) {
                    r.this.c = false;
                    animation2.setDuration(1332L);
                    aVar.a(false);
                    return;
                }
                r.this.b = (r.this.b + 1.0f) % 5.0f;
            }
        });
        this.k = animation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes.dex */
    public static class a {
        private final Drawable.Callback d;
        private int[] j;
        private int k;
        private float l;
        private float m;
        private float n;
        private boolean o;
        private Path p;
        private float q;
        private double r;
        private int s;
        private int t;
        private int u;
        private int w;
        private int x;

        /* renamed from: a  reason: collision with root package name */
        private final RectF f521a = new RectF();
        private final Paint b = new Paint();
        private final Paint c = new Paint();
        private float e = BitmapDescriptorFactory.HUE_RED;
        private float f = BitmapDescriptorFactory.HUE_RED;
        private float g = BitmapDescriptorFactory.HUE_RED;
        private float h = 5.0f;
        private float i = 2.5f;
        private final Paint v = new Paint(1);

        a(Drawable.Callback callback) {
            this.d = callback;
            this.b.setStrokeCap(Paint.Cap.SQUARE);
            this.b.setAntiAlias(true);
            this.b.setStyle(Paint.Style.STROKE);
            this.c.setStyle(Paint.Style.FILL);
            this.c.setAntiAlias(true);
        }

        public void a(int i) {
            this.w = i;
        }

        public void a(float f, float f2) {
            this.s = (int) f;
            this.t = (int) f2;
        }

        public void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f521a;
            rectF.set(rect);
            rectF.inset(this.i, this.i);
            float f = (this.e + this.g) * 360.0f;
            float f2 = ((this.f + this.g) * 360.0f) - f;
            this.b.setColor(this.x);
            canvas.drawArc(rectF, f, f2, false, this.b);
            a(canvas, f, f2, rect);
            if (this.u < 255) {
                this.v.setColor(this.w);
                this.v.setAlpha(255 - this.u);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, this.v);
            }
        }

        private void a(Canvas canvas, float f, float f2, Rect rect) {
            if (this.o) {
                if (this.p == null) {
                    this.p = new Path();
                    this.p.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    this.p.reset();
                }
                float f3 = (((int) this.i) / 2) * this.q;
                float cos = (float) ((this.r * Math.cos(0.0d)) + rect.exactCenterX());
                this.p.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                this.p.lineTo(this.s * this.q, BitmapDescriptorFactory.HUE_RED);
                this.p.lineTo((this.s * this.q) / 2.0f, this.t * this.q);
                this.p.offset(cos - f3, (float) ((this.r * Math.sin(0.0d)) + rect.exactCenterY()));
                this.p.close();
                this.c.setColor(this.x);
                canvas.rotate((f + f2) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.p, this.c);
            }
        }

        public void a(int[] iArr) {
            this.j = iArr;
            c(0);
        }

        public void b(int i) {
            this.x = i;
        }

        public void c(int i) {
            this.k = i;
            this.x = this.j[this.k];
        }

        public int a() {
            return this.j[n()];
        }

        private int n() {
            return (this.k + 1) % this.j.length;
        }

        public void b() {
            c(n());
        }

        public void a(ColorFilter colorFilter) {
            this.b.setColorFilter(colorFilter);
            o();
        }

        public void d(int i) {
            this.u = i;
        }

        public int c() {
            return this.u;
        }

        public void a(float f) {
            this.h = f;
            this.b.setStrokeWidth(f);
            o();
        }

        public float d() {
            return this.h;
        }

        public void b(float f) {
            this.e = f;
            o();
        }

        public float e() {
            return this.e;
        }

        public float f() {
            return this.l;
        }

        public float g() {
            return this.m;
        }

        public int h() {
            return this.j[this.k];
        }

        public void c(float f) {
            this.f = f;
            o();
        }

        public float i() {
            return this.f;
        }

        public void d(float f) {
            this.g = f;
            o();
        }

        public void a(int i, int i2) {
            float ceil;
            float min = Math.min(i, i2);
            if (this.r <= 0.0d || min < BitmapDescriptorFactory.HUE_RED) {
                ceil = (float) Math.ceil(this.h / 2.0f);
            } else {
                ceil = (float) ((min / 2.0f) - this.r);
            }
            this.i = ceil;
        }

        public void a(double d) {
            this.r = d;
        }

        public double j() {
            return this.r;
        }

        public void a(boolean z) {
            if (this.o != z) {
                this.o = z;
                o();
            }
        }

        public void e(float f) {
            if (f != this.q) {
                this.q = f;
                o();
            }
        }

        public float k() {
            return this.n;
        }

        public void l() {
            this.l = this.e;
            this.m = this.f;
            this.n = this.g;
        }

        public void m() {
            this.l = BitmapDescriptorFactory.HUE_RED;
            this.m = BitmapDescriptorFactory.HUE_RED;
            this.n = BitmapDescriptorFactory.HUE_RED;
            b(BitmapDescriptorFactory.HUE_RED);
            c(BitmapDescriptorFactory.HUE_RED);
            d(BitmapDescriptorFactory.HUE_RED);
        }

        private void o() {
            this.d.invalidateDrawable(null);
        }
    }
}
