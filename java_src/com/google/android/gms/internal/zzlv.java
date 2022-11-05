package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzlq;
import com.google.android.gms.internal.zzpb;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
@zzme
/* loaded from: classes.dex */
public class zzlv extends zzpj {
    private final zzlq.zza zzPQ;
    private final zzpb.zza zzPR;
    private final zzmn zzPS;
    private final zzlx zzQi;
    private Future<zzpb> zzQj;
    private final Object zzrJ;

    public zzlv(Context context, com.google.android.gms.ads.internal.zzs zzsVar, zzpb.zza zzaVar, zzaw zzawVar, zzlq.zza zzaVar2, zzgl zzglVar) {
        this(zzaVar, zzaVar2, new zzlx(context, zzsVar, new zzpv(context), zzawVar, zzaVar, zzglVar));
    }

    zzlv(zzpb.zza zzaVar, zzlq.zza zzaVar2, zzlx zzlxVar) {
        this.zzrJ = new Object();
        this.zzPR = zzaVar;
        this.zzPS = zzaVar.zzWm;
        this.zzPQ = zzaVar2;
        this.zzQi = zzlxVar;
    }

    private zzpb zzS(int i) {
        return new zzpb(this.zzPR.zzTi.zzRy, null, null, i, null, null, this.zzPS.orientation, this.zzPS.zzKL, this.zzPR.zzTi.zzRB, false, null, null, null, null, null, this.zzPS.zzSo, this.zzPR.zzvr, this.zzPS.zzSm, this.zzPR.zzWg, this.zzPS.zzSr, this.zzPS.zzSs, this.zzPR.zzWa, null, null, null, null, this.zzPR.zzWm.zzSF, this.zzPR.zzWm.zzSG, null, null, this.zzPS.zzSJ);
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
        synchronized (this.zzrJ) {
            if (this.zzQj != null) {
                this.zzQj.cancel(true);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        int i;
        final zzpb zzpbVar;
        try {
            synchronized (this.zzrJ) {
                this.zzQj = zzpn.zza(this.zzQi);
            }
            zzpbVar = this.zzQj.get(60000L, TimeUnit.MILLISECONDS);
            i = -2;
        } catch (InterruptedException e) {
            zzpbVar = null;
            i = 0;
        } catch (CancellationException e2) {
            zzpbVar = null;
            i = 0;
        } catch (ExecutionException e3) {
            zzpbVar = null;
            i = 0;
        } catch (TimeoutException e4) {
            zzpk.zzbh("Timed out waiting for native ad.");
            this.zzQj.cancel(true);
            i = 2;
            zzpbVar = null;
        }
        if (zzpbVar == null) {
            zzpbVar = zzS(i);
        }
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzlv.1
            @Override // java.lang.Runnable
            public void run() {
                zzlv.this.zzPQ.zzb(zzpbVar);
            }
        });
    }
}
