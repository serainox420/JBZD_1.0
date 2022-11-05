package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.support.design.widget.r;
import android.view.animation.Interpolator;
/* compiled from: ValueAnimatorCompatImplHoneycombMr1.java */
@TargetApi(12)
/* loaded from: classes.dex */
class t extends r.e {

    /* renamed from: a  reason: collision with root package name */
    private final ValueAnimator f137a = new ValueAnimator();

    @Override // android.support.design.widget.r.e
    public void a() {
        this.f137a.start();
    }

    @Override // android.support.design.widget.r.e
    public boolean b() {
        return this.f137a.isRunning();
    }

    @Override // android.support.design.widget.r.e
    public void a(Interpolator interpolator) {
        this.f137a.setInterpolator(interpolator);
    }

    @Override // android.support.design.widget.r.e
    public void a(final r.e.b bVar) {
        this.f137a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.t.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                bVar.a();
            }
        });
    }

    @Override // android.support.design.widget.r.e
    public void a(final r.e.a aVar) {
        this.f137a.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.t.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                aVar.a();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                aVar.b();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                aVar.c();
            }
        });
    }

    @Override // android.support.design.widget.r.e
    public void a(int i, int i2) {
        this.f137a.setIntValues(i, i2);
    }

    @Override // android.support.design.widget.r.e
    public int c() {
        return ((Integer) this.f137a.getAnimatedValue()).intValue();
    }

    @Override // android.support.design.widget.r.e
    public void a(float f, float f2) {
        this.f137a.setFloatValues(f, f2);
    }

    @Override // android.support.design.widget.r.e
    public float d() {
        return ((Float) this.f137a.getAnimatedValue()).floatValue();
    }

    @Override // android.support.design.widget.r.e
    public void a(long j) {
        this.f137a.setDuration(j);
    }

    @Override // android.support.design.widget.r.e
    public void e() {
        this.f137a.cancel();
    }

    @Override // android.support.design.widget.r.e
    public float f() {
        return this.f137a.getAnimatedFraction();
    }

    @Override // android.support.design.widget.r.e
    public void g() {
        this.f137a.end();
    }

    @Override // android.support.design.widget.r.e
    public long h() {
        return this.f137a.getDuration();
    }
}
