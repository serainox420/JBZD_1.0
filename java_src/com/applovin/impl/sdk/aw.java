package com.applovin.impl.sdk;

import android.content.DialogInterface;
import com.applovin.sdk.AppLovinAdRewardListener;
/* loaded from: classes.dex */
class aw implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ as f1603a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(as asVar) {
        this.f1603a = asVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        aa aaVar;
        AppLovinAdRewardListener appLovinAdRewardListener;
        dialogInterface.dismiss();
        aaVar = this.f1603a.f1599a.b;
        appLovinAdRewardListener = this.f1603a.f1599a.g;
        aaVar.a(appLovinAdRewardListener);
    }
}
