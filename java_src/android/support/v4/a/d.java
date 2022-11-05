package android.support.v4.a;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.view.View;
/* compiled from: HoneycombMr1AnimatorCompatProvider.java */
@TargetApi(12)
/* loaded from: classes.dex */
class d implements b {

    /* renamed from: a  reason: collision with root package name */
    private TimeInterpolator f199a;

    @Override // android.support.v4.a.b
    public void a(View view) {
        if (this.f199a == null) {
            this.f199a = new ValueAnimator().getInterpolator();
        }
        view.animate().setInterpolator(this.f199a);
    }
}
