package com.inmobi.monetization.internal;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.AnimationType;
import com.inmobi.monetization.internal.anim.Rotate3dAnimation;
import com.inmobi.monetization.internal.anim.Rotate3dAnimationVert;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnimationController.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private BannerAd f3886a;
    private Animation.AnimationListener b;

    public d(BannerAd bannerAd, Animation.AnimationListener animationListener) {
        this.f3886a = bannerAd;
        this.b = animationListener;
    }

    public void a(AnimationType animationType) {
        if (animationType == AnimationType.ANIMATION_ALPHA) {
            AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 0.5f);
            AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.5f, 1.0f);
            alphaAnimation.setDuration(1000L);
            alphaAnimation.setFillAfter(false);
            alphaAnimation.setAnimationListener(this.b);
            alphaAnimation.setInterpolator(new DecelerateInterpolator());
            alphaAnimation2.setDuration(500L);
            alphaAnimation2.setFillAfter(false);
            alphaAnimation2.setAnimationListener(this.b);
            alphaAnimation2.setInterpolator(new DecelerateInterpolator());
            this.f3886a.a(alphaAnimation);
            this.f3886a.b(alphaAnimation2);
        } else if (animationType == AnimationType.ROTATE_HORIZONTAL_AXIS) {
            Rotate3dAnimation rotate3dAnimation = new Rotate3dAnimation(BitmapDescriptorFactory.HUE_RED, 90.0f, this.f3886a.b() / 2.0f, this.f3886a.c() / 2.0f, BitmapDescriptorFactory.HUE_RED, true);
            Rotate3dAnimation rotate3dAnimation2 = new Rotate3dAnimation(270.0f, 360.0f, this.f3886a.b() / 2.0f, this.f3886a.c() / 2.0f, BitmapDescriptorFactory.HUE_RED, true);
            rotate3dAnimation.setDuration(500L);
            rotate3dAnimation.setFillAfter(false);
            rotate3dAnimation.setAnimationListener(this.b);
            rotate3dAnimation.setInterpolator(new AccelerateInterpolator());
            rotate3dAnimation2.setDuration(500L);
            rotate3dAnimation2.setFillAfter(false);
            rotate3dAnimation2.setAnimationListener(this.b);
            rotate3dAnimation2.setInterpolator(new DecelerateInterpolator());
            this.f3886a.a(rotate3dAnimation);
            this.f3886a.b(rotate3dAnimation2);
        } else if (animationType == AnimationType.ROTATE_VERTICAL_AXIS) {
            Rotate3dAnimationVert rotate3dAnimationVert = new Rotate3dAnimationVert(BitmapDescriptorFactory.HUE_RED, 90.0f, this.f3886a.b() / 2.0f, this.f3886a.c() / 2.0f, BitmapDescriptorFactory.HUE_RED, true);
            Rotate3dAnimationVert rotate3dAnimationVert2 = new Rotate3dAnimationVert(270.0f, 360.0f, this.f3886a.b() / 2.0f, this.f3886a.c() / 2.0f, BitmapDescriptorFactory.HUE_RED, true);
            rotate3dAnimationVert.setDuration(500L);
            rotate3dAnimationVert.setFillAfter(false);
            rotate3dAnimationVert.setAnimationListener(this.b);
            rotate3dAnimationVert.setInterpolator(new AccelerateInterpolator());
            rotate3dAnimationVert2.setDuration(500L);
            rotate3dAnimationVert2.setFillAfter(false);
            rotate3dAnimationVert2.setAnimationListener(this.b);
            rotate3dAnimationVert2.setInterpolator(new DecelerateInterpolator());
            this.f3886a.a(rotate3dAnimationVert);
            this.f3886a.b(rotate3dAnimationVert2);
        }
        this.f3886a.c(this.f3886a.a());
    }
}
