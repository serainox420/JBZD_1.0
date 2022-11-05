package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.view.ViewGroup;
/* compiled from: TransitionIcs.java */
@TargetApi(14)
/* loaded from: classes.dex */
class o extends p {

    /* renamed from: a  reason: collision with root package name */
    y f186a;
    q b;

    @Override // android.support.transition.p
    public void a(q qVar, Object obj) {
        this.b = qVar;
        if (obj == null) {
            this.f186a = new a(qVar);
        } else {
            this.f186a = (y) obj;
        }
    }

    @Override // android.support.transition.p
    public void b(ae aeVar) {
        this.f186a.b(aeVar);
    }

    @Override // android.support.transition.p
    public void c(ae aeVar) {
        this.f186a.a(aeVar);
    }

    @Override // android.support.transition.p
    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        return this.f186a.a(viewGroup, aeVar, aeVar2);
    }

    @Override // android.support.transition.p
    public p a(long j) {
        this.f186a.a(j);
        return this;
    }

    @Override // android.support.transition.p
    public p a(TimeInterpolator timeInterpolator) {
        this.f186a.a(timeInterpolator);
        return this;
    }

    public String toString() {
        return this.f186a.toString();
    }

    /* compiled from: TransitionIcs.java */
    /* loaded from: classes.dex */
    private static class a extends y {

        /* renamed from: a  reason: collision with root package name */
        private q f187a;

        public a(q qVar) {
            this.f187a = qVar;
        }

        @Override // android.support.transition.y
        public void a(ae aeVar) {
            this.f187a.a(aeVar);
        }

        @Override // android.support.transition.y
        public void b(ae aeVar) {
            this.f187a.b(aeVar);
        }

        @Override // android.support.transition.y
        public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
            return this.f187a.a(viewGroup, aeVar, aeVar2);
        }
    }
}
