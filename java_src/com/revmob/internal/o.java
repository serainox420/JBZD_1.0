package com.revmob.internal;

import android.content.DialogInterface;
/* loaded from: classes3.dex */
final class o implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ m f4809a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(m mVar) {
        this.f4809a = mVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f4809a.c();
    }
}
