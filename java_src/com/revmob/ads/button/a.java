package com.revmob.ads.button;

import android.app.Activity;
import android.view.View;
import com.revmob.a.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ RevMobButton f4757a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(RevMobButton revMobButton) {
        this.f4757a = revMobButton;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Activity activity;
        Activity activity2;
        this.f4757a.f4756a = (Activity) e.f4738a;
        activity = this.f4757a.f4756a;
        if (activity == null) {
            this.f4757a.performLinkClick();
            return;
        }
        activity2 = this.f4757a.f4756a;
        activity2.runOnUiThread(new b(this));
    }
}
