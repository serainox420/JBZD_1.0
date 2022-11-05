package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.transition.Fade;
import android.view.ViewGroup;
/* compiled from: FadeKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class i extends s implements ak {
    public i(q qVar) {
        a(qVar, new Fade());
    }

    public i(q qVar, int i) {
        a(qVar, new Fade(i));
    }

    @Override // android.support.transition.ak
    public boolean a(ae aeVar) {
        return ((Fade) this.f188a).isVisible(d(aeVar));
    }

    @Override // android.support.transition.ak
    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((Fade) this.f188a).onAppear(viewGroup, d(aeVar), i, d(aeVar2), i2);
    }

    @Override // android.support.transition.ak
    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((Fade) this.f188a).onDisappear(viewGroup, d(aeVar), i, d(aeVar2), i2);
    }
}
