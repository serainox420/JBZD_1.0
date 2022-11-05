package com.google.android.gms.internal;

import com.openx.view.mraid.JSInterface;
/* loaded from: classes2.dex */
public class zzss extends zzsa {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzss(zzsc zzscVar) {
        super(zzscVar);
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
    }

    public zzrp zzpB() {
        zzob();
        return zznU().zzmQ();
    }

    public String zzpC() {
        zzob();
        zzrp zzpB = zzpB();
        int zznl = zzpB.zznl();
        return new StringBuilder(23).append(zznl).append(JSInterface.JSON_X).append(zzpB.zznm()).toString();
    }
}
