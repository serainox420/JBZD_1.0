package com.revmob;

import android.view.View;
import android.view.animation.Animation;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class g implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ FullscreenActivity f4796a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(FullscreenActivity fullscreenActivity) {
        this.f4796a = fullscreenActivity;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f4796a.d.removeView((View) this.f4796a.f4732a);
        this.f4796a.d.removeAllViews();
        this.f4796a.finish();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
