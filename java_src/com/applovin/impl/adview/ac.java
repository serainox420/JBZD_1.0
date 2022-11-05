package com.applovin.impl.adview;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ x f1539a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(x xVar) {
        this.f1539a = xVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1539a.dismiss();
    }
}
