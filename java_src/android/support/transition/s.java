package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.ViewGroup;
/* compiled from: TransitionKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class s extends p {

    /* renamed from: a  reason: collision with root package name */
    Transition f188a;
    q b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(TransitionValues transitionValues, ae aeVar) {
        if (transitionValues != null) {
            aeVar.b = transitionValues.view;
            if (transitionValues.values.size() > 0) {
                aeVar.f165a.putAll(transitionValues.values);
            }
        }
    }

    static void a(ae aeVar, TransitionValues transitionValues) {
        if (aeVar != null) {
            transitionValues.view = aeVar.b;
            if (aeVar.f165a.size() > 0) {
                transitionValues.values.putAll(aeVar.f165a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(q qVar, TransitionValues transitionValues) {
        ae aeVar = new ae();
        a(transitionValues, aeVar);
        qVar.a(aeVar);
        a(aeVar, transitionValues);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(q qVar, TransitionValues transitionValues) {
        ae aeVar = new ae();
        a(transitionValues, aeVar);
        qVar.b(aeVar);
        a(aeVar, transitionValues);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ae a(TransitionValues transitionValues) {
        if (transitionValues == null) {
            return null;
        }
        ae aeVar = new ae();
        a(transitionValues, aeVar);
        return aeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TransitionValues d(ae aeVar) {
        if (aeVar == null) {
            return null;
        }
        TransitionValues transitionValues = new TransitionValues();
        a(aeVar, transitionValues);
        return transitionValues;
    }

    @Override // android.support.transition.p
    public void a(q qVar, Object obj) {
        this.b = qVar;
        if (obj == null) {
            this.f188a = new a(qVar);
        } else {
            this.f188a = (Transition) obj;
        }
    }

    @Override // android.support.transition.p
    public void b(ae aeVar) {
        TransitionValues transitionValues = new TransitionValues();
        a(aeVar, transitionValues);
        this.f188a.captureEndValues(transitionValues);
        a(transitionValues, aeVar);
    }

    @Override // android.support.transition.p
    public void c(ae aeVar) {
        TransitionValues transitionValues = new TransitionValues();
        a(aeVar, transitionValues);
        this.f188a.captureStartValues(transitionValues);
        a(transitionValues, aeVar);
    }

    @Override // android.support.transition.p
    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        TransitionValues transitionValues;
        TransitionValues transitionValues2 = null;
        if (aeVar != null) {
            transitionValues = new TransitionValues();
            a(aeVar, transitionValues);
        } else {
            transitionValues = null;
        }
        if (aeVar2 != null) {
            transitionValues2 = new TransitionValues();
            a(aeVar2, transitionValues2);
        }
        return this.f188a.createAnimator(viewGroup, transitionValues, transitionValues2);
    }

    @Override // android.support.transition.p
    public p a(long j) {
        this.f188a.setDuration(j);
        return this;
    }

    @Override // android.support.transition.p
    public p a(TimeInterpolator timeInterpolator) {
        this.f188a.setInterpolator(timeInterpolator);
        return this;
    }

    public String toString() {
        return this.f188a.toString();
    }

    /* compiled from: TransitionKitKat.java */
    /* loaded from: classes.dex */
    private static class a extends Transition {

        /* renamed from: a  reason: collision with root package name */
        private q f189a;

        public a(q qVar) {
            this.f189a = qVar;
        }

        @Override // android.transition.Transition
        public void captureStartValues(TransitionValues transitionValues) {
            s.a(this.f189a, transitionValues);
        }

        @Override // android.transition.Transition
        public void captureEndValues(TransitionValues transitionValues) {
            s.b(this.f189a, transitionValues);
        }

        @Override // android.transition.Transition
        public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            return this.f189a.a(viewGroup, s.a(transitionValues), s.a(transitionValues2));
        }
    }
}
