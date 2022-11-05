package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.RelativeLayout;
import com.flurry.sdk.gz;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class gg extends gm {
    private static final String e = gg.class.getName();
    private int f;
    private AtomicBoolean g;

    public gg(Context context, r rVar, gz.a aVar) {
        super(context, rVar, aVar);
        this.f = 0;
        this.g = new AtomicBoolean(false);
        if (this.f2732a == null) {
            this.f2732a = new gu(context);
        }
        if (this.f2732a != null) {
            this.f2732a.f2749a = this;
        }
        setAutoPlay(rVar.l().b.b.t);
        setVideoUri(c(rVar.l().d().b));
    }

    @Override // com.flurry.sdk.gm
    protected int getViewParams() {
        if (this.f == 0) {
            this.f = getAdController().f().j;
        }
        return this.f;
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a() {
        a(bc.EV_AD_WILL_CLOSE, Collections.emptyMap());
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
    public final void a(String str, float f, float f2) {
        super.a(str, f, f2);
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
        if (!this.g.get()) {
            this.g.set(true);
        }
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gu.a
    public final void a(String str) {
        super.a(str);
        this.g.set(true);
        km.a(3, e, "Video prepared onVideoPrepared." + this.g.get());
    }

    @Override // com.flurry.sdk.gm
    public final void a(int i) {
        super.a(i);
        if (!this.g.get()) {
            km.a(3, e, "Showing progress bar again. Cant play video as its not prepared yet." + this.g.get());
            showProgressDialog();
        }
    }

    @Override // com.flurry.sdk.gm
    public final void c() {
        super.c();
        this.g.set(false);
        km.a(3, e, "Video prepared suspendVideo." + this.g.get());
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gz
    public void cleanupLayout() {
        super.cleanupLayout();
        this.g.set(false);
        km.a(3, e, "Video prepared cleanupLayout." + this.g.get());
    }

    @Override // com.flurry.sdk.gm, com.flurry.sdk.gz
    public void initLayout() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.f2732a.d, layoutParams);
        showProgressDialog();
    }
}
