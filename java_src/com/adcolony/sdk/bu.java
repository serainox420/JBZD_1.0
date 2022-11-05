package com.adcolony.sdk;

import com.adcolony.sdk.bn;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bu {

    /* renamed from: a  reason: collision with root package name */
    private final bt f1216a = new bt() { // from class: com.adcolony.sdk.bu.1
        @Override // com.adcolony.sdk.bt
        public void a(Exception exc) {
            bz.aK().a(exc, bn.a.YVOLVER_ERROR_UNCAUGHT_EXCEPTION, "Caught fatal exception", true);
        }
    };

    private void b(bv bvVar, bt btVar) {
        try {
            bvVar.a();
        } catch (Exception e) {
            e.printStackTrace();
            btVar.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(bv bvVar) {
        b(bvVar, this.f1216a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(bv bvVar, bt btVar) {
        b(bvVar, btVar);
    }
}
