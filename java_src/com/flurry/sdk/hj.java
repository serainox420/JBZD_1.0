package com.flurry.sdk;

import android.content.Context;
/* loaded from: classes2.dex */
public final class hj extends hl {
    public hj(Context context, r rVar) {
        super(context, rVar);
    }

    @Override // com.flurry.sdk.hl
    public final void a() {
        r rVar = this.b;
        if (!rVar.l().b.g) {
            fo.a(c(), rVar, null, true);
            return;
        }
        gx gxVar = new gx();
        gxVar.f2759a = rVar;
        gxVar.b = null;
        gxVar.c = true;
        ki.a().a(gxVar);
    }
}
