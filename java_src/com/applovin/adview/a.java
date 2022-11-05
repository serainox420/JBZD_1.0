package com.applovin.adview;

import android.content.DialogInterface;
/* loaded from: classes.dex */
class a implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinConfirmationActivity f1512a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AppLovinConfirmationActivity appLovinConfirmationActivity) {
        this.f1512a = appLovinConfirmationActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f1512a.finish();
    }
}
