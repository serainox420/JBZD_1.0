package com.revmob.ads.banner;

import android.view.animation.Animation;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class i implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ boolean f4754a;
    private /* synthetic */ RevMobBanner b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(RevMobBanner revMobBanner, boolean z) {
        this.b = revMobBanner;
        this.f4754a = z;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.b.removeAdViewBlock(this.f4754a);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
