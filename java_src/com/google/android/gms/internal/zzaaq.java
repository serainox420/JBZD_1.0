package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaav;
/* loaded from: classes2.dex */
public class zzaaq implements zzaau {
    private final zzaav zzaBk;
    private boolean zzaBl = false;

    public zzaaq(zzaav zzaavVar) {
        this.zzaBk = zzaavVar;
    }

    private <A extends Api.zzb> void zze(zzaad.zza<? extends Result, A> zzaVar) throws DeadObjectException {
        this.zzaBk.zzaAw.zzaBW.zzb(zzaVar);
        Api.zze zzc = this.zzaBk.zzaAw.zzc((Api.zzc<?>) zzaVar.zzvg());
        if (!zzc.isConnected() && this.zzaBk.zzaCf.containsKey(zzaVar.zzvg())) {
            zzaVar.zzB(new Status(17));
            return;
        }
        boolean z = zzc instanceof com.google.android.gms.common.internal.zzal;
        Api.zzg zzgVar = zzc;
        if (z) {
            zzgVar = ((com.google.android.gms.common.internal.zzal) zzc).zzyn();
        }
        zzaVar.zzb((zzaad.zza<? extends Result, A>) zzgVar);
    }

    @Override // com.google.android.gms.internal.zzaau
    public void begin() {
    }

    @Override // com.google.android.gms.internal.zzaau
    public void connect() {
        if (this.zzaBl) {
            this.zzaBl = false;
            this.zzaBk.zza(new zzaav.zza(this) { // from class: com.google.android.gms.internal.zzaaq.2
                @Override // com.google.android.gms.internal.zzaav.zza
                public void zzwe() {
                    zzaaq.this.zzaBk.zzaCj.zzo(null);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzaau
    public boolean disconnect() {
        if (this.zzaBl) {
            return false;
        }
        if (!this.zzaBk.zzaAw.zzwq()) {
            this.zzaBk.zzh(null);
            return true;
        }
        this.zzaBl = true;
        for (zzabx zzabxVar : this.zzaBk.zzaAw.zzaBV) {
            zzabxVar.zzxb();
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzaau
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzaau
    public void onConnectionSuspended(int i) {
        this.zzaBk.zzh(null);
        this.zzaBk.zzaCj.zzc(i, this.zzaBl);
    }

    @Override // com.google.android.gms.internal.zzaau
    public <A extends Api.zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t) {
        return (T) zzb(t);
    }

    @Override // com.google.android.gms.internal.zzaau
    public void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    @Override // com.google.android.gms.internal.zzaau
    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t) {
        try {
            zze(t);
        } catch (DeadObjectException e) {
            this.zzaBk.zza(new zzaav.zza(this) { // from class: com.google.android.gms.internal.zzaaq.1
                @Override // com.google.android.gms.internal.zzaav.zza
                public void zzwe() {
                    zzaaq.this.onConnectionSuspended(1);
                }
            });
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzwd() {
        if (this.zzaBl) {
            this.zzaBl = false;
            this.zzaBk.zzaAw.zzaBW.release();
            disconnect();
        }
    }
}
