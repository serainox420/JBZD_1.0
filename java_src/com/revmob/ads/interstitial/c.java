package com.revmob.ads.interstitial;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4767a = false;
    private /* synthetic */ com.revmob.ads.interstitial.b.a b;
    private /* synthetic */ a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar, com.revmob.ads.interstitial.b.a aVar2) {
        this.c = aVar;
        this.b = aVar2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (!this.f4767a) {
            this.f4767a = true;
            if (!this.c.l.booleanValue()) {
                this.c.b("clicks");
            }
            String format = String.format("%.2f", Double.valueOf(this.c.m));
            if (this.c.j.booleanValue()) {
                this.c.h.c.onRevMobRewardedVideoCompleted();
            }
            this.b.b(format);
        }
    }
}
