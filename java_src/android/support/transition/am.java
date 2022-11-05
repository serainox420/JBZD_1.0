package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.ViewGroup;
/* compiled from: VisibilityKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class am extends s implements ak {
    @Override // android.support.transition.s, android.support.transition.p
    public void a(q qVar, Object obj) {
        this.b = qVar;
        if (obj == null) {
            this.f188a = new a((al) qVar);
        } else {
            this.f188a = (Visibility) obj;
        }
    }

    @Override // android.support.transition.ak
    public boolean a(ae aeVar) {
        return ((Visibility) this.f188a).isVisible(d(aeVar));
    }

    @Override // android.support.transition.ak
    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((Visibility) this.f188a).onAppear(viewGroup, d(aeVar), i, d(aeVar2), i2);
    }

    @Override // android.support.transition.ak
    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((Visibility) this.f188a).onDisappear(viewGroup, d(aeVar), i, d(aeVar2), i2);
    }

    /* compiled from: VisibilityKitKat.java */
    /* loaded from: classes.dex */
    private static class a extends Visibility {

        /* renamed from: a  reason: collision with root package name */
        private final al f170a;

        a(al alVar) {
            this.f170a = alVar;
        }

        @Override // android.transition.Visibility, android.transition.Transition
        public void captureStartValues(TransitionValues transitionValues) {
            s.a((q) this.f170a, transitionValues);
        }

        @Override // android.transition.Visibility, android.transition.Transition
        public void captureEndValues(TransitionValues transitionValues) {
            s.b(this.f170a, transitionValues);
        }

        @Override // android.transition.Visibility, android.transition.Transition
        public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            return this.f170a.a(viewGroup, s.a(transitionValues), s.a(transitionValues2));
        }

        @Override // android.transition.Visibility
        public boolean isVisible(TransitionValues transitionValues) {
            if (transitionValues == null) {
                return false;
            }
            ae aeVar = new ae();
            s.a(transitionValues, aeVar);
            return this.f170a.c(aeVar);
        }

        @Override // android.transition.Visibility
        public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
            return this.f170a.a(viewGroup, s.a(transitionValues), i, s.a(transitionValues2), i2);
        }

        @Override // android.transition.Visibility
        public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
            return this.f170a.b(viewGroup, s.a(transitionValues), i, s.a(transitionValues2), i2);
        }
    }
}
