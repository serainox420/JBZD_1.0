package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.view.ViewGroup;
/* compiled from: VisibilityIcs.java */
@TargetApi(14)
/* loaded from: classes.dex */
class aj extends o implements ak {
    @Override // android.support.transition.o, android.support.transition.p
    public void a(q qVar, Object obj) {
        this.b = qVar;
        if (obj == null) {
            this.f186a = new a((al) qVar);
        } else {
            this.f186a = (an) obj;
        }
    }

    @Override // android.support.transition.ak
    public boolean a(ae aeVar) {
        return ((an) this.f186a).c(aeVar);
    }

    @Override // android.support.transition.ak
    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((an) this.f186a).a(viewGroup, aeVar, i, aeVar2, i2);
    }

    @Override // android.support.transition.ak
    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((an) this.f186a).b(viewGroup, aeVar, i, aeVar2, i2);
    }

    /* compiled from: VisibilityIcs.java */
    /* loaded from: classes.dex */
    private static class a extends an {

        /* renamed from: a  reason: collision with root package name */
        private al f169a;

        a(al alVar) {
            this.f169a = alVar;
        }

        @Override // android.support.transition.an, android.support.transition.y
        public void a(ae aeVar) {
            this.f169a.a(aeVar);
        }

        @Override // android.support.transition.an, android.support.transition.y
        public void b(ae aeVar) {
            this.f169a.b(aeVar);
        }

        @Override // android.support.transition.an, android.support.transition.y
        public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
            return this.f169a.a(viewGroup, aeVar, aeVar2);
        }

        @Override // android.support.transition.an
        public boolean c(ae aeVar) {
            return this.f169a.c(aeVar);
        }

        @Override // android.support.transition.an
        public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
            return this.f169a.a(viewGroup, aeVar, i, aeVar2, i2);
        }

        @Override // android.support.transition.an
        public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
            return this.f169a.b(viewGroup, aeVar, i, aeVar2, i2);
        }
    }
}
