package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.CompoundButton;
/* compiled from: AppCompatCompoundButtonHelper.java */
/* loaded from: classes.dex */
class g {

    /* renamed from: a  reason: collision with root package name */
    private final CompoundButton f900a;
    private ColorStateList b = null;
    private PorterDuff.Mode c = null;
    private boolean d = false;
    private boolean e = false;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(CompoundButton compoundButton) {
        this.f900a = compoundButton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f900a.getContext().obtainStyledAttributes(attributeSet, R.styleable.CompoundButton, i, 0);
        try {
            if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_android_button) && (resourceId = obtainStyledAttributes.getResourceId(R.styleable.CompoundButton_android_button, 0)) != 0) {
                this.f900a.setButtonDrawable(android.support.v7.a.a.b.b(this.f900a.getContext(), resourceId));
            }
            if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTint)) {
                android.support.v4.widget.c.a(this.f900a, obtainStyledAttributes.getColorStateList(R.styleable.CompoundButton_buttonTint));
            }
            if (obtainStyledAttributes.hasValue(R.styleable.CompoundButton_buttonTintMode)) {
                android.support.v4.widget.c.a(this.f900a, w.a(obtainStyledAttributes.getInt(R.styleable.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        this.b = colorStateList;
        this.d = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        this.c = mode;
        this.e = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode b() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.f) {
            this.f = false;
            return;
        }
        this.f = true;
        d();
    }

    void d() {
        Drawable a2 = android.support.v4.widget.c.a(this.f900a);
        if (a2 != null) {
            if (this.d || this.e) {
                Drawable mutate = android.support.v4.b.a.a.g(a2).mutate();
                if (this.d) {
                    android.support.v4.b.a.a.a(mutate, this.b);
                }
                if (this.e) {
                    android.support.v4.b.a.a.a(mutate, this.c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f900a.getDrawableState());
                }
                this.f900a.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i) {
        Drawable a2;
        if (Build.VERSION.SDK_INT < 17 && (a2 = android.support.v4.widget.c.a(this.f900a)) != null) {
            return i + a2.getIntrinsicWidth();
        }
        return i;
    }
}
