package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
/* compiled from: AppCompatBackgroundHelper.java */
/* loaded from: classes.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private final View f899a;
    private at d;
    private at e;
    private at f;
    private int c = -1;
    private final h b = h.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(View view) {
        this.f899a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AttributeSet attributeSet, int i) {
        av a2 = av.a(this.f899a.getContext(), attributeSet, R.styleable.ViewBackgroundHelper, i, 0);
        try {
            if (a2.g(R.styleable.ViewBackgroundHelper_android_background)) {
                this.c = a2.g(R.styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList b = this.b.b(this.f899a.getContext(), this.c);
                if (b != null) {
                    b(b);
                }
            }
            if (a2.g(R.styleable.ViewBackgroundHelper_backgroundTint)) {
                android.support.v4.view.ai.a(this.f899a, a2.e(R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (a2.g(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                android.support.v4.view.ai.a(this.f899a, w.a(a2.a(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            a2.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.c = i;
        b(this.b != null ? this.b.b(this.f899a.getContext(), i) : null);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Drawable drawable) {
        this.c = -1;
        b((ColorStateList) null);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new at();
        }
        this.e.f880a = colorStateList;
        this.e.d = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList a() {
        if (this.e != null) {
            return this.e.f880a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new at();
        }
        this.e.b = mode;
        this.e.c = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode b() {
        if (this.e != null) {
            return this.e.b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Drawable background = this.f899a.getBackground();
        if (background != null) {
            if (!d() || !b(background)) {
                if (this.e != null) {
                    h.a(background, this.e, this.f899a.getDrawableState());
                } else if (this.d != null) {
                    h.a(background, this.d, this.f899a.getDrawableState());
                }
            }
        }
    }

    void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new at();
            }
            this.d.f880a = colorStateList;
            this.d.d = true;
        } else {
            this.d = null;
        }
        c();
    }

    private boolean d() {
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            return false;
        }
        return i == 21 || this.d != null;
    }

    private boolean b(Drawable drawable) {
        if (this.f == null) {
            this.f = new at();
        }
        at atVar = this.f;
        atVar.a();
        ColorStateList B = android.support.v4.view.ai.B(this.f899a);
        if (B != null) {
            atVar.d = true;
            atVar.f880a = B;
        }
        PorterDuff.Mode C = android.support.v4.view.ai.C(this.f899a);
        if (C != null) {
            atVar.c = true;
            atVar.b = C;
        }
        if (atVar.d || atVar.c) {
            h.a(drawable, atVar, this.f899a.getDrawableState());
            return true;
        }
        return false;
    }
}
