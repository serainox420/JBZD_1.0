package android.support.v4.view;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.view.View;
/* compiled from: ViewPropertyAnimatorCompatKK.java */
@TargetApi(19)
/* loaded from: classes.dex */
class bc {
    public static void a(final View view, final bf bfVar) {
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
        if (bfVar != null) {
            animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.v4.view.bc.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    bf.this.a(view);
                }
            };
        }
        view.animate().setUpdateListener(animatorUpdateListener);
    }
}
