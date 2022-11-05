package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.view.ViewGroup;
/* compiled from: FadeIcs.java */
@TargetApi(14)
/* loaded from: classes.dex */
class h extends o implements ak {
    public h(q qVar) {
        a(qVar, new j());
    }

    public h(q qVar, int i) {
        a(qVar, new j(i));
    }

    @Override // android.support.transition.ak
    public boolean a(ae aeVar) {
        return ((j) this.f186a).c(aeVar);
    }

    @Override // android.support.transition.ak
    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((j) this.f186a).a(viewGroup, aeVar, i, aeVar2, i2);
    }

    @Override // android.support.transition.ak
    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((j) this.f186a).b(viewGroup, aeVar, i, aeVar, i);
    }
}
