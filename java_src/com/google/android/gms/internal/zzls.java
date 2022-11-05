package com.google.android.gms.internal;

import com.google.android.gms.internal.zzlq;
import com.google.android.gms.internal.zzpb;
@zzme
/* loaded from: classes.dex */
public class zzls extends zzpj {
    private final zzlq.zza zzPQ;
    private final zzpb.zza zzPR;
    private final zzmn zzPS;

    public zzls(zzpb.zza zzaVar, zzlq.zza zzaVar2) {
        this.zzPR = zzaVar;
        this.zzPS = this.zzPR.zzWm;
        this.zzPQ = zzaVar2;
    }

    private zzpb zzS(int i) {
        return new zzpb(this.zzPR.zzTi.zzRy, null, null, i, null, null, this.zzPS.orientation, this.zzPS.zzKL, this.zzPR.zzTi.zzRB, false, null, null, null, null, null, this.zzPS.zzSo, this.zzPR.zzvr, this.zzPS.zzSm, this.zzPR.zzWg, this.zzPS.zzSr, this.zzPS.zzSs, this.zzPR.zzWa, null, null, null, null, this.zzPR.zzWm.zzSF, this.zzPR.zzWm.zzSG, null, null, null);
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
    }

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        final zzpb zzS = zzS(0);
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzls.1
            @Override // java.lang.Runnable
            public void run() {
                zzls.this.zzPQ.zzb(zzS);
            }
        });
    }
}
