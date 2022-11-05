package android.support.transition;

import android.animation.Animator;
import android.os.Build;
import android.view.ViewGroup;
/* compiled from: TransitionSet.java */
/* loaded from: classes.dex */
public class z extends m {
    public z() {
        super(true);
        if (Build.VERSION.SDK_INT < 19) {
            this.f185a = new aa(this);
        } else {
            this.f185a = new ac(this);
        }
    }

    public z a(int i) {
        ((ab) this.f185a).b(i);
        return this;
    }

    public z a(m mVar) {
        ((ab) this.f185a).b(mVar.f185a);
        return this;
    }

    @Override // android.support.transition.q
    public void b(ae aeVar) {
        this.f185a.b(aeVar);
    }

    @Override // android.support.transition.q
    public void a(ae aeVar) {
        this.f185a.c(aeVar);
    }

    @Override // android.support.transition.m, android.support.transition.q
    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        return this.f185a.a(viewGroup, aeVar, aeVar2);
    }
}
