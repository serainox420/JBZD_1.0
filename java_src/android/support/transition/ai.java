package android.support.transition;

import android.animation.Animator;
import android.os.Build;
import android.view.ViewGroup;
/* compiled from: Visibility.java */
/* loaded from: classes.dex */
public abstract class ai extends m implements al {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(boolean z) {
        super(true);
        if (!z) {
            if (Build.VERSION.SDK_INT >= 19) {
                this.f185a = new am();
            } else {
                this.f185a = new aj();
            }
            this.f185a.a(this);
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

    @Override // android.support.transition.al
    public boolean c(ae aeVar) {
        return ((ak) this.f185a).a(aeVar);
    }

    @Override // android.support.transition.al
    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((ak) this.f185a).a(viewGroup, aeVar, i, aeVar2, i2);
    }

    @Override // android.support.transition.al
    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((ak) this.f185a).b(viewGroup, aeVar, i, aeVar2, i2);
    }
}
