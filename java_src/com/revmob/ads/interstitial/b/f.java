package com.revmob.ads.interstitial.b;

import android.view.View;
import android.widget.ImageView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4766a;
    private /* synthetic */ e b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar, a aVar) {
        this.b = eVar;
        this.f4766a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ImageView imageView;
        imageView = this.b.f4765a;
        imageView.setOnClickListener(null);
        this.f4766a.b();
    }
}
