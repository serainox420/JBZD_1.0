package com.revmob;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ FullscreenActivity f4784a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(FullscreenActivity fullscreenActivity) {
        this.f4784a = fullscreenActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f4784a.j();
    }
}
