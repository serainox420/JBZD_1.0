package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import com.flurry.sdk.gz;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class gl extends gm {
    private static final String e = gl.class.getSimpleName();
    private int f;
    private boolean g;
    private float h;
    private float i;
    private AtomicBoolean j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gl(Context context, r rVar, gz.a aVar) {
        super(context, rVar, aVar);
        String str = null;
        this.f = 0;
        this.g = false;
        this.h = BitmapDescriptorFactory.HUE_RED;
        this.i = BitmapDescriptorFactory.HUE_RED;
        this.j = new AtomicBoolean(false);
        if (this.f2732a == null) {
            this.f2732a = new gu(context);
        }
        if (this.f2732a != null) {
            this.f2732a.f2749a = this;
        }
        setAutoPlay(rVar.l().b.b.t);
        fr c = rVar.l().c();
        setVideoUri(c(c != null ? mc.a(c.a()) : null));
        fr c2 = rVar.l().c();
        if (c2 != null) {
            String b = c2.b();
            if (!TextUtils.isEmpty(b)) {
                str = mc.a(b);
            }
        }
        this.g = !TextUtils.isEmpty(str);
        this.h = rVar.l().b.b.A / 100.0f;
        this.i = rVar.l().b.b.B / 100.0f;
    }

    @Override // com.flurry.sdk.gm
    protected int getViewParams() {
        if (this.f == 0) {
            this.f = getAdController().f().j;
        }
        return this.f;
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str, float f, float f2) {
        super.a(str, f, f2);
        if (f2 > 3000.0f) {
            this.f = this.g ? this.f | 4 : this.f;
        }
        if (f2 > 3.0f) {
            this.f |= 2;
            this.f &= -9;
        }
        long j = getAdController().b.b.l;
        if (f > 15000.0f) {
            j = getAdController().b.b.m;
        }
        if (f2 > ((float) j)) {
            this.f |= 1;
        }
        gp f3 = getAdController().f();
        if (this.i > BitmapDescriptorFactory.HUE_RED && f2 >= this.i * f && !f3.i) {
            km.a(3, e, "Reward granted: ");
            getAdController().f().i = true;
            a(bc.EV_REWARD_GRANTED, Collections.emptyMap());
        }
        if (!this.j.get()) {
            this.j.set(true);
        }
    }

    @Override // com.flurry.sdk.gm
    public void setAutoPlay(boolean z) {
        super.setAutoPlay(z);
        if (getAdController().f().f2735a <= 3) {
            this.f = z ? this.f : this.f | 8;
        }
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void b() {
        this.f &= -9;
        super.b();
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void b(String str) {
        super.b(str);
        if (this.i == BitmapDescriptorFactory.HUE_RED) {
            a(bc.EV_REWARD_GRANTED, Collections.emptyMap());
        }
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str) {
        super.a(str);
        this.j.set(true);
        km.a(3, e, "Video prepared onVideoPrepared." + this.j.get());
    }

    @Override // com.flurry.sdk.gm
    public final void a(int i) {
        super.a(i);
        if (!this.j.get()) {
            km.a(3, e, "Showing progress bar again. Cant play video as its not prepared yet." + this.j.get());
            showProgressDialog();
        }
    }

    @Override // com.flurry.sdk.gm
    public final void c() {
        super.c();
        this.j.set(false);
        km.a(3, e, "Video prepared suspendVideo." + this.j.get());
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gz
    public void cleanupLayout() {
        super.cleanupLayout();
        this.j.set(false);
        km.a(3, e, "Video prepared cleanupLayout." + this.j.get());
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gz
    public void initLayout() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.f2732a.d, layoutParams);
        showProgressDialog();
    }
}
