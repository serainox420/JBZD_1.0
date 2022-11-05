package com.revmob.ads.interstitial;

import android.view.View;
import android.view.animation.Animation;
/* loaded from: classes3.dex */
final class n implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ View f4778a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(View view) {
        this.f4778a = view;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f4778a.setVisibility(4);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
