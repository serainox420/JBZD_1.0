package com.google.android.gms.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.v4.f.k;
/* loaded from: classes2.dex */
public class zzblf extends AnimatorListenerAdapter {
    private k<Animator, Boolean> zzbVV = new k<>();

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.zzbVV.put(animator, true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.zzbVV.put(animator, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzb(Animator animator) {
        return this.zzbVV.containsKey(animator) && this.zzbVV.get(animator).booleanValue();
    }
}
