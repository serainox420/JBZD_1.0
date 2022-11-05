package android.support.design.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.design.widget.r;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: FloatingActionButtonLollipop.java */
@TargetApi(21)
/* loaded from: classes.dex */
class k extends i {
    private InsetDrawable q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(VisibilityAwareImageButton visibilityAwareImageButton, n nVar, r.d dVar) {
        super(visibilityAwareImageButton, nVar, dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.h, android.support.design.widget.j
    public void a(ColorStateList colorStateList, PorterDuff.Mode mode, int i, int i2) {
        Drawable drawable;
        this.d = android.support.v4.b.a.a.g(k());
        android.support.v4.b.a.a.a(this.d, colorStateList);
        if (mode != null) {
            android.support.v4.b.a.a.a(this.d, mode);
        }
        if (i2 > 0) {
            this.f = a(i2, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{this.f, this.d});
        } else {
            this.f = null;
            drawable = this.d;
        }
        this.e = new RippleDrawable(ColorStateList.valueOf(i), drawable, null);
        this.g = this.e;
        this.o.a(this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.h, android.support.design.widget.j
    public void a(int i) {
        if (this.e instanceof RippleDrawable) {
            ((RippleDrawable) this.e).setColor(ColorStateList.valueOf(i));
        } else {
            super.a(i);
        }
    }

    @Override // android.support.design.widget.h, android.support.design.widget.j
    void a(float f, float f2) {
        if (Build.VERSION.SDK_INT == 21) {
            if (this.n.isEnabled()) {
                this.n.setElevation(f);
                if (this.n.isFocused() || this.n.isPressed()) {
                    this.n.setTranslationZ(f2);
                } else {
                    this.n.setTranslationZ(BitmapDescriptorFactory.HUE_RED);
                }
            } else {
                this.n.setElevation(BitmapDescriptorFactory.HUE_RED);
                this.n.setTranslationZ(BitmapDescriptorFactory.HUE_RED);
            }
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(ObjectAnimator.ofFloat(this.n, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.n, View.TRANSLATION_Z, f2).setDuration(100L));
            animatorSet.setInterpolator(b);
            stateListAnimator.addState(j, animatorSet);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.play(ObjectAnimator.ofFloat(this.n, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.n, View.TRANSLATION_Z, f2).setDuration(100L));
            animatorSet2.setInterpolator(b);
            stateListAnimator.addState(k, animatorSet2);
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playSequentially(ObjectAnimator.ofFloat(this.n, "elevation", f).setDuration(0L), ObjectAnimator.ofFloat(this.n, View.TRANSLATION_Z, this.n.getTranslationZ()).setDuration(100L), ObjectAnimator.ofFloat(this.n, View.TRANSLATION_Z, BitmapDescriptorFactory.HUE_RED).setDuration(100L));
            animatorSet3.setInterpolator(b);
            stateListAnimator.addState(l, animatorSet3);
            AnimatorSet animatorSet4 = new AnimatorSet();
            animatorSet4.play(ObjectAnimator.ofFloat(this.n, "elevation", BitmapDescriptorFactory.HUE_RED).setDuration(0L)).with(ObjectAnimator.ofFloat(this.n, View.TRANSLATION_Z, BitmapDescriptorFactory.HUE_RED).setDuration(0L));
            animatorSet4.setInterpolator(b);
            stateListAnimator.addState(m, animatorSet4);
            this.n.setStateListAnimator(stateListAnimator);
        }
        if (this.o.b()) {
            g();
        }
    }

    @Override // android.support.design.widget.h, android.support.design.widget.j
    public float a() {
        return this.n.getElevation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.h, android.support.design.widget.j
    public void c() {
        g();
    }

    @Override // android.support.design.widget.j
    void b(Rect rect) {
        if (this.o.b()) {
            this.q = new InsetDrawable(this.e, rect.left, rect.top, rect.right, rect.bottom);
            this.o.a(this.q);
            return;
        }
        this.o.a(this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.h, android.support.design.widget.j
    public void a(int[] iArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.h, android.support.design.widget.j
    public void b() {
    }

    @Override // android.support.design.widget.i, android.support.design.widget.j
    boolean d() {
        return false;
    }

    @Override // android.support.design.widget.j
    c j() {
        return new d();
    }

    @Override // android.support.design.widget.j
    GradientDrawable l() {
        return new a();
    }

    @Override // android.support.design.widget.h, android.support.design.widget.j
    void a(Rect rect) {
        if (this.o.b()) {
            float a2 = this.o.a();
            float a3 = a() + this.i;
            int ceil = (int) Math.ceil(m.b(a3, a2, false));
            int ceil2 = (int) Math.ceil(m.a(a3, a2, false));
            rect.set(ceil, ceil2, ceil, ceil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }

    /* compiled from: FloatingActionButtonLollipop.java */
    /* loaded from: classes.dex */
    static class a extends GradientDrawable {
        a() {
        }

        @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }
}
