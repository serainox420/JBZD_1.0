package android.support.transition;

import android.annotation.TargetApi;
import android.transition.TransitionSet;
/* compiled from: TransitionSetKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class ac extends s implements ab {
    private TransitionSet c = new TransitionSet();

    public ac(q qVar) {
        a(qVar, this.c);
    }

    @Override // android.support.transition.ab
    /* renamed from: a */
    public ac b(int i) {
        this.c.setOrdering(i);
        return this;
    }

    @Override // android.support.transition.ab
    /* renamed from: a */
    public ac b(p pVar) {
        this.c.addTransition(((s) pVar).f188a);
        return this;
    }
}
