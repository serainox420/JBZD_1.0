package com.revmob.ads.a;

import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private long f4743a = 500;
    private List b = new ArrayList();

    public abstract Animation a();

    public final void a(long j) {
        this.f4743a = j;
    }

    public final void a(String str) {
        this.b.add(str);
    }

    public abstract Animation b();

    public abstract Animation c();

    public abstract Animation d();

    public abstract Animation e();

    public abstract Animation f();

    public abstract Animation g();

    public abstract Animation h();

    public abstract Animation i();

    public abstract Animation j();

    public final Animation k() {
        AnimationSet animationSet = new AnimationSet(true);
        for (String str : this.b) {
            if (str.equals("fade_in")) {
                animationSet.addAnimation(a());
            } else if (str.equals("fade_out")) {
                animationSet.addAnimation(b());
            } else if (str.equals("zoom_in")) {
                animationSet.addAnimation(g());
            } else if (str.equals("zoom_out")) {
                animationSet.addAnimation(h());
            } else if (str.equals("slide_up")) {
                animationSet.addAnimation(c());
            } else if (str.equals("slide_down")) {
                animationSet.addAnimation(d());
            } else if (str.equals("slide_right")) {
                animationSet.addAnimation(e());
            } else if (str.equals("slide_left")) {
                animationSet.addAnimation(f());
            } else if (str.equals("rotate_clockwise")) {
                animationSet.addAnimation(i());
            } else if (str.equals("rotate_counterclockwise")) {
                animationSet.addAnimation(j());
            }
        }
        animationSet.setDuration(this.f4743a);
        return animationSet;
    }
}
