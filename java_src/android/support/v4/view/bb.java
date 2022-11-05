package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.view.View;
/* compiled from: ViewPropertyAnimatorCompatJB.java */
@TargetApi(16)
/* loaded from: classes.dex */
class bb {
    public static void a(final View view, final bd bdVar) {
        if (bdVar != null) {
            view.animate().setListener(new AnimatorListenerAdapter() { // from class: android.support.v4.view.bb.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    bd.this.c(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    bd.this.b(view);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    bd.this.a(view);
                }
            });
        } else {
            view.animate().setListener(null);
        }
    }
}
