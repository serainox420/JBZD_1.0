package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
/* compiled from: AnimationUtils.java */
/* loaded from: classes.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    static final Interpolator f97a = new LinearInterpolator();
    static final Interpolator b = new android.support.v4.view.b.b();
    static final Interpolator c = new android.support.v4.view.b.a();
    static final Interpolator d = new android.support.v4.view.b.c();
    static final Interpolator e = new DecelerateInterpolator();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2, float f) {
        return Math.round((i2 - i) * f) + i;
    }

    /* compiled from: AnimationUtils.java */
    /* renamed from: android.support.design.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class animation.Animation$AnimationListenerC0005a implements Animation.AnimationListener {
        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }
    }
}
