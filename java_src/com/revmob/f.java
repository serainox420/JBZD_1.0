package com.revmob;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ FullscreenActivity f4795a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(FullscreenActivity fullscreenActivity) {
        this.f4795a = fullscreenActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f4795a.c != null) {
            this.f4795a.c.onRevMobAdDismissed();
        }
        this.f4795a.finish();
    }
}
