package com.revmob;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class d implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ FullscreenActivity f4793a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(FullscreenActivity fullscreenActivity) {
        this.f4793a = fullscreenActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f4793a.c.onRevMobRewardedVideoCompleted();
        this.f4793a.finish();
    }
}
