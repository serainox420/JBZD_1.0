package com.facebook.ads.internal.view.d.a;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes.dex */
public class q extends com.facebook.ads.internal.g.q {

    /* renamed from: a  reason: collision with root package name */
    private final View f2281a;
    private final MotionEvent b;

    public q(View view, MotionEvent motionEvent) {
        this.f2281a = view;
        this.b = motionEvent;
    }

    public View a() {
        return this.f2281a;
    }

    public MotionEvent b() {
        return this.b;
    }
}
