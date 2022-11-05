package android.support.transition;

import android.annotation.TargetApi;
import android.transition.TransitionManager;
import android.view.ViewGroup;
/* compiled from: TransitionManagerStaticsKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class x extends w {
    @Override // android.support.transition.w
    public void a(ViewGroup viewGroup, p pVar) {
        TransitionManager.beginDelayedTransition(viewGroup, pVar == null ? null : ((s) pVar).f188a);
    }
}
