package com.revmob.ads.interstitial;

import android.view.View;
import android.widget.ImageView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class d implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4768a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar) {
        this.f4768a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ImageView imageView;
        imageView = this.f4768a.p;
        imageView.bringToFront();
        this.f4768a.f();
    }
}
