package com.revmob.ads.interstitial;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class b implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4761a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f4761a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f4761a.e = true;
        if (!this.f4761a.l.booleanValue()) {
            this.f4761a.a("close");
        }
        this.f4761a.d();
        this.f4761a.b();
        this.f4761a.b.stopPlayback();
        if (!this.f4761a.k.booleanValue() && this.f4761a.h.c != null) {
            if (this.f4761a.j.booleanValue()) {
                this.f4761a.h.c.onRevMobRewardedVideoCompleted();
            } else {
                this.f4761a.h.c.onRevMobAdDismissed();
            }
        }
        this.f4761a.h.setRequestedOrientation(-1);
        this.f4761a.h.b();
        if (!this.f4761a.k.booleanValue()) {
            this.f4761a.h.finish();
        }
    }
}
