package com.applovin.adview;

import android.view.animation.Animation;
/* loaded from: classes.dex */
class o implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f1526a;
    final /* synthetic */ n b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar, boolean z) {
        this.b = nVar;
        this.f1526a = z;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        com.applovin.impl.adview.s sVar;
        if (!this.f1526a) {
            sVar = this.b.f1525a.B;
            sVar.setVisibility(4);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        com.applovin.impl.adview.s sVar;
        sVar = this.b.f1525a.B;
        sVar.setVisibility(0);
    }
}
