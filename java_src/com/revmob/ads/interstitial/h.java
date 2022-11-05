package com.revmob.ads.interstitial;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class h implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4772a = false;
    private /* synthetic */ com.revmob.ads.interstitial.b.a b;
    private /* synthetic */ a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(a aVar, com.revmob.ads.interstitial.b.a aVar2) {
        this.c = aVar;
        this.b = aVar2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.c.d = true;
        if (!this.f4772a) {
            if (!this.c.l.booleanValue()) {
                this.c.b("clicks");
            }
            this.f4772a = true;
            this.b.b(String.format("%.2f", Double.valueOf(this.c.m)));
            this.c.b();
        }
    }
}
