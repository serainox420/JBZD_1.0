package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.os.Build;
import android.view.ViewGroup;
/* compiled from: Transition.java */
/* loaded from: classes.dex */
public abstract class m implements q {

    /* renamed from: a  reason: collision with root package name */
    p f185a;

    public m() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(boolean z) {
        if (!z) {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f185a = new n();
            } else if (Build.VERSION.SDK_INT >= 19) {
                this.f185a = new s();
            } else {
                this.f185a = new o();
            }
            this.f185a.a(this);
        }
    }

    @Override // android.support.transition.q
    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        return null;
    }

    public m a(long j) {
        this.f185a.a(j);
        return this;
    }

    public m a(TimeInterpolator timeInterpolator) {
        this.f185a.a(timeInterpolator);
        return this;
    }

    public String toString() {
        return this.f185a.toString();
    }
}
