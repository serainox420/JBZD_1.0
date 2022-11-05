package android.support.transition;

import android.animation.Animator;
import android.os.Build;
import android.view.ViewGroup;
/* compiled from: ChangeBounds.java */
/* loaded from: classes.dex */
public class c extends m {
    public c() {
        super(true);
        if (Build.VERSION.SDK_INT < 19) {
            this.f185a = new d(this);
        } else {
            this.f185a = new e(this);
        }
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
