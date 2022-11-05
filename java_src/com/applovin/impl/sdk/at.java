package com.applovin.impl.sdk;

import android.content.DialogInterface;
import java.util.Timer;
/* loaded from: classes.dex */
class at implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ as f1600a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(as asVar) {
        this.f1600a = asVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Timer timer;
        dialogInterface.dismiss();
        timer = this.f1600a.f1599a.h;
        timer.schedule(new au(this), 200L);
    }
}
