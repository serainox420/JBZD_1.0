package com.revmob.ads.banner;

import android.view.View;
import android.view.animation.Animation;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class f implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ RevMobBanner f4751a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(RevMobBanner revMobBanner) {
        this.f4751a = revMobBanner;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f4751a.j = false;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        View view;
        view = this.f4751a.e;
        view.setVisibility(0);
    }
}
