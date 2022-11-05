package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.support.v4.view.ai;
import android.support.v7.appcompat.R;
import android.support.v7.widget.av;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: CollapsingTextHelper.java */
/* loaded from: classes.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f110a;
    private static final Paint b;
    private boolean A;
    private Bitmap B;
    private Paint C;
    private float D;
    private float E;
    private float F;
    private float G;
    private int[] H;
    private boolean I;
    private Interpolator K;
    private Interpolator L;
    private float M;
    private float N;
    private float O;
    private int P;
    private float Q;
    private float R;
    private float S;
    private int T;
    private final View c;
    private boolean d;
    private float e;
    private ColorStateList m;
    private ColorStateList n;
    private float o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private Typeface u;
    private Typeface v;
    private Typeface w;
    private CharSequence x;
    private CharSequence y;
    private boolean z;
    private int i = 16;
    private int j = 16;
    private float k = 15.0f;
    private float l = 15.0f;
    private final TextPaint J = new TextPaint(129);
    private final Rect g = new Rect();
    private final Rect f = new Rect();
    private final RectF h = new RectF();

    static {
        f110a = Build.VERSION.SDK_INT < 18;
        b = null;
        if (b != null) {
            b.setAntiAlias(true);
            b.setColor(-65281);
        }
    }

    public e(View view) {
        this.c = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Interpolator interpolator) {
        this.L = interpolator;
        i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Interpolator interpolator) {
        this.K = interpolator;
        i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f) {
        if (this.k != f) {
            this.k = f;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, int i3, int i4) {
        if (!a(this.f, i, i2, i3, i4)) {
            this.f.set(i, i2, i3, i4);
            this.I = true;
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i, int i2, int i3, int i4) {
        if (!a(this.g, i, i2, i3, i4)) {
            this.g.set(i, i2, i3, i4);
            this.I = true;
            a();
        }
    }

    void a() {
        this.d = this.g.width() > 0 && this.g.height() > 0 && this.f.width() > 0 && this.f.height() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (this.i != i) {
            this.i = i;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        if (this.j != i) {
            this.j = i;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i) {
        av a2 = av.a(this.c.getContext(), i, R.styleable.TextAppearance);
        if (a2.g(R.styleable.TextAppearance_android_textColor)) {
            this.n = a2.e(R.styleable.TextAppearance_android_textColor);
        }
        if (a2.g(R.styleable.TextAppearance_android_textSize)) {
            this.l = a2.e(R.styleable.TextAppearance_android_textSize, (int) this.l);
        }
        this.P = a2.a(R.styleable.TextAppearance_android_shadowColor, 0);
        this.N = a2.a(R.styleable.TextAppearance_android_shadowDx, BitmapDescriptorFactory.HUE_RED);
        this.O = a2.a(R.styleable.TextAppearance_android_shadowDy, BitmapDescriptorFactory.HUE_RED);
        this.M = a2.a(R.styleable.TextAppearance_android_shadowRadius, BitmapDescriptorFactory.HUE_RED);
        a2.a();
        if (Build.VERSION.SDK_INT >= 16) {
            this.u = e(i);
        }
        i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i) {
        av a2 = av.a(this.c.getContext(), i, R.styleable.TextAppearance);
        if (a2.g(R.styleable.TextAppearance_android_textColor)) {
            this.m = a2.e(R.styleable.TextAppearance_android_textColor);
        }
        if (a2.g(R.styleable.TextAppearance_android_textSize)) {
            this.k = a2.e(R.styleable.TextAppearance_android_textSize, (int) this.k);
        }
        this.T = a2.a(R.styleable.TextAppearance_android_shadowColor, 0);
        this.R = a2.a(R.styleable.TextAppearance_android_shadowDx, BitmapDescriptorFactory.HUE_RED);
        this.S = a2.a(R.styleable.TextAppearance_android_shadowDy, BitmapDescriptorFactory.HUE_RED);
        this.Q = a2.a(R.styleable.TextAppearance_android_shadowRadius, BitmapDescriptorFactory.HUE_RED);
        a2.a();
        if (Build.VERSION.SDK_INT >= 16) {
            this.v = e(i);
        }
        i();
    }

    private Typeface e(int i) {
        TypedArray obtainStyledAttributes = this.c.getContext().obtainStyledAttributes(i, new int[]{16843692});
        try {
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            obtainStyledAttributes.recycle();
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Typeface typeface) {
        if (this.u != typeface) {
            this.u = typeface;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Typeface typeface) {
        if (this.v != typeface) {
            this.v = typeface;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(Typeface typeface) {
        this.v = typeface;
        this.u = typeface;
        i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Typeface d() {
        return this.u != null ? this.u : Typeface.DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Typeface e() {
        return this.v != null ? this.v : Typeface.DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(float f) {
        float a2 = l.a(f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (a2 != this.e) {
            this.e = a2;
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(int[] iArr) {
        this.H = iArr;
        if (f()) {
            i();
            return true;
        }
        return false;
    }

    final boolean f() {
        return (this.n != null && this.n.isStateful()) || (this.m != null && this.m.isStateful());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float h() {
        return this.l;
    }

    private void l() {
        c(this.e);
    }

    private void c(float f) {
        d(f);
        this.s = a(this.q, this.r, f, this.K);
        this.t = a(this.o, this.p, f, this.K);
        e(a(this.k, this.l, f, this.L));
        if (this.n != this.m) {
            this.J.setColor(a(m(), n(), f));
        } else {
            this.J.setColor(n());
        }
        this.J.setShadowLayer(a(this.Q, this.M, f, (Interpolator) null), a(this.R, this.N, f, (Interpolator) null), a(this.S, this.O, f, (Interpolator) null), a(this.T, this.P, f));
        ai.c(this.c);
    }

    private int m() {
        return this.H != null ? this.m.getColorForState(this.H, 0) : this.m.getDefaultColor();
    }

    private int n() {
        return this.H != null ? this.n.getColorForState(this.H, 0) : this.n.getDefaultColor();
    }

    private void o() {
        int i = 1;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = this.G;
        f(this.l);
        float measureText = this.y != null ? this.J.measureText(this.y, 0, this.y.length()) : 0.0f;
        int a2 = android.support.v4.view.f.a(this.j, this.z ? 1 : 0);
        switch (a2 & 112) {
            case 48:
                this.p = this.g.top - this.J.ascent();
                break;
            case 80:
                this.p = this.g.bottom;
                break;
            default:
                this.p = (((this.J.descent() - this.J.ascent()) / 2.0f) - this.J.descent()) + this.g.centerY();
                break;
        }
        switch (a2 & 8388615) {
            case 1:
                this.r = this.g.centerX() - (measureText / 2.0f);
                break;
            case 5:
                this.r = this.g.right - measureText;
                break;
            default:
                this.r = this.g.left;
                break;
        }
        f(this.k);
        if (this.y != null) {
            f = this.J.measureText(this.y, 0, this.y.length());
        }
        int i2 = this.i;
        if (!this.z) {
            i = 0;
        }
        int a3 = android.support.v4.view.f.a(i2, i);
        switch (a3 & 112) {
            case 48:
                this.o = this.f.top - this.J.ascent();
                break;
            case 80:
                this.o = this.f.bottom;
                break;
            default:
                this.o = (((this.J.descent() - this.J.ascent()) / 2.0f) - this.J.descent()) + this.f.centerY();
                break;
        }
        switch (a3 & 8388615) {
            case 1:
                this.q = this.f.centerX() - (f / 2.0f);
                break;
            case 5:
                this.q = this.f.right - f;
                break;
            default:
                this.q = this.f.left;
                break;
        }
        q();
        e(f2);
    }

    private void d(float f) {
        this.h.left = a(this.f.left, this.g.left, f, this.K);
        this.h.top = a(this.o, this.p, f, this.K);
        this.h.right = a(this.f.right, this.g.right, f, this.K);
        this.h.bottom = a(this.f.bottom, this.g.bottom, f, this.K);
    }

    public void a(Canvas canvas) {
        float ascent;
        int save = canvas.save();
        if (this.y != null && this.d) {
            float f = this.s;
            float f2 = this.t;
            boolean z = this.A && this.B != null;
            if (z) {
                ascent = this.D * this.F;
                float f3 = this.E * this.F;
            } else {
                ascent = this.J.ascent() * this.F;
                float descent = this.J.descent() * this.F;
            }
            if (z) {
                f2 += ascent;
            }
            if (this.F != 1.0f) {
                canvas.scale(this.F, this.F, f, f2);
            }
            if (z) {
                canvas.drawBitmap(this.B, f, f2, this.C);
            } else {
                canvas.drawText(this.y, 0, this.y.length(), f, f2, this.J);
            }
        }
        canvas.restoreToCount(save);
    }

    private boolean b(CharSequence charSequence) {
        boolean z = true;
        if (ai.g(this.c) != 1) {
            z = false;
        }
        return (z ? android.support.v4.e.e.d : android.support.v4.e.e.c).a(charSequence, 0, charSequence.length());
    }

    private void e(float f) {
        f(f);
        this.A = f110a && this.F != 1.0f;
        if (this.A) {
            p();
        }
        ai.c(this.c);
    }

    private void f(float f) {
        float f2;
        boolean z;
        boolean z2 = true;
        if (this.x != null) {
            float width = this.g.width();
            float width2 = this.f.width();
            if (a(f, this.l)) {
                f2 = this.l;
                this.F = 1.0f;
                if (this.w != this.u) {
                    this.w = this.u;
                    z = true;
                } else {
                    z = false;
                }
            } else {
                f2 = this.k;
                if (this.w != this.v) {
                    this.w = this.v;
                    z = true;
                } else {
                    z = false;
                }
                if (a(f, this.k)) {
                    this.F = 1.0f;
                } else {
                    this.F = f / this.k;
                }
                float f3 = this.l / this.k;
                width = width2 * f3 > width ? Math.min(width / f3, width2) : width2;
            }
            if (width > BitmapDescriptorFactory.HUE_RED) {
                z = this.G != f2 || this.I || z;
                this.G = f2;
                this.I = false;
            }
            if (this.y == null || z) {
                this.J.setTextSize(this.G);
                this.J.setTypeface(this.w);
                TextPaint textPaint = this.J;
                if (this.F == 1.0f) {
                    z2 = false;
                }
                textPaint.setLinearText(z2);
                CharSequence ellipsize = TextUtils.ellipsize(this.x, this.J, width, TextUtils.TruncateAt.END);
                if (!TextUtils.equals(ellipsize, this.y)) {
                    this.y = ellipsize;
                    this.z = b(this.y);
                }
            }
        }
    }

    private void p() {
        if (this.B == null && !this.f.isEmpty() && !TextUtils.isEmpty(this.y)) {
            c(BitmapDescriptorFactory.HUE_RED);
            this.D = this.J.ascent();
            this.E = this.J.descent();
            int round = Math.round(this.J.measureText(this.y, 0, this.y.length()));
            int round2 = Math.round(this.E - this.D);
            if (round > 0 && round2 > 0) {
                this.B = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
                new Canvas(this.B).drawText(this.y, 0, this.y.length(), BitmapDescriptorFactory.HUE_RED, round2 - this.J.descent(), this.J);
                if (this.C == null) {
                    this.C = new Paint(3);
                }
            }
        }
    }

    public void i() {
        if (this.c.getHeight() > 0 && this.c.getWidth() > 0) {
            o();
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.x)) {
            this.x = charSequence;
            this.y = null;
            q();
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence j() {
        return this.x;
    }

    private void q() {
        if (this.B != null) {
            this.B.recycle();
            this.B = null;
        }
    }

    private static boolean a(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList k() {
        return this.n;
    }

    private static int a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((f2 * Color.blue(i)) + (Color.blue(i2) * f)));
    }

    private static float a(float f, float f2, float f3, Interpolator interpolator) {
        if (interpolator != null) {
            f3 = interpolator.getInterpolation(f3);
        }
        return a.a(f, f2, f3);
    }

    private static boolean a(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }
}
