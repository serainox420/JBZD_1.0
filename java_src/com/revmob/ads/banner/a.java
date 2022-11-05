package com.revmob.ads.banner;

import android.app.Activity;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ RevMobBanner f4746a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(RevMobBanner revMobBanner) {
        this.f4746a = revMobBanner;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Activity activity;
        activity = this.f4746a.b;
        activity.runOnUiThread(new b(this));
    }
}
