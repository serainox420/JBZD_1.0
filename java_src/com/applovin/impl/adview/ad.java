package com.applovin.impl.adview;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ x f1540a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(x xVar) {
        this.f1540a = xVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        u uVar;
        u uVar2;
        uVar = this.f1540a.g;
        if (uVar.isClickable()) {
            uVar2 = this.f1540a.g;
            uVar2.performClick();
        }
    }
}
