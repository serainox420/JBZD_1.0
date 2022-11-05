package android.support.transition;

import android.animation.Animator;
import android.os.Build;
import android.view.ViewGroup;
/* compiled from: Fade.java */
/* loaded from: classes.dex */
public class g extends ai {
    public g(int i) {
        super(true);
        if (Build.VERSION.SDK_INT >= 19) {
            if (i > 0) {
                this.f185a = new i(this, i);
            } else {
                this.f185a = new i(this);
            }
        } else if (i > 0) {
            this.f185a = new h(this, i);
        } else {
            this.f185a = new h(this);
        }
    }

    public g() {
        this(-1);
    }

    @Override // android.support.transition.ai, android.support.transition.q
    public void b(ae aeVar) {
        this.f185a.b(aeVar);
    }

    @Override // android.support.transition.ai, android.support.transition.q
    public void a(ae aeVar) {
        this.f185a.c(aeVar);
    }

    @Override // android.support.transition.m, android.support.transition.q
    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        return this.f185a.a(viewGroup, aeVar, aeVar2);
    }
}
