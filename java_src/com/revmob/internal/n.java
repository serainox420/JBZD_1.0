package com.revmob.internal;

import android.content.DialogInterface;
/* loaded from: classes3.dex */
final class n implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ m f4808a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(m mVar) {
        this.f4808a = mVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f4808a.d();
    }
}
