package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqy;
import com.google.firebase.database.c;
import com.google.firebase.database.n;
import com.google.firebase.database.o;
/* loaded from: classes2.dex */
public class zzbpx extends zzbpc {
    private final zzbpj zzbZZ;
    private final zzbrc zzcdH;
    private final n zzcgv;

    public zzbpx(zzbpj zzbpjVar, n nVar, zzbrc zzbrcVar) {
        this.zzbZZ = zzbpjVar;
        this.zzcgv = nVar;
        this.zzcdH = zzbrcVar;
    }

    public boolean equals(Object obj) {
        return (obj instanceof zzbpx) && ((zzbpx) obj).zzcgv.equals(this.zzcgv) && ((zzbpx) obj).zzbZZ.equals(this.zzbZZ) && ((zzbpx) obj).zzcdH.equals(this.zzcdH);
    }

    public int hashCode() {
        return (((this.zzcgv.hashCode() * 31) + this.zzbZZ.hashCode()) * 31) + this.zzcdH.hashCode();
    }

    public String toString() {
        return "ValueEventRegistration";
    }

    @Override // com.google.android.gms.internal.zzbpc
    public zzbrc zzYn() {
        return this.zzcdH;
    }

    @Override // com.google.android.gms.internal.zzbpc
    public zzbpc zza(zzbrc zzbrcVar) {
        return new zzbpx(this.zzbZZ, this.zzcgv, zzbrcVar);
    }

    @Override // com.google.android.gms.internal.zzbpc
    public zzbqx zza(zzbqw zzbqwVar, zzbrc zzbrcVar) {
        return new zzbqx(zzbqy.zza.VALUE, this, o.a(o.a(this.zzbZZ, zzbrcVar.zzWM()), zzbqwVar.zzZS()), null);
    }

    @Override // com.google.android.gms.internal.zzbpc
    public void zza(zzbqx zzbqxVar) {
        if (zzYL()) {
            return;
        }
        this.zzcgv.onDataChange(zzbqxVar.zzZY());
    }

    @Override // com.google.android.gms.internal.zzbpc
    public void zza(c cVar) {
        this.zzcgv.onCancelled(cVar);
    }

    @Override // com.google.android.gms.internal.zzbpc
    public boolean zza(zzbqy.zza zzaVar) {
        return zzaVar == zzbqy.zza.VALUE;
    }

    @Override // com.google.android.gms.internal.zzbpc
    public boolean zzc(zzbpc zzbpcVar) {
        return (zzbpcVar instanceof zzbpx) && ((zzbpx) zzbpcVar).zzcgv.equals(this.zzcgv);
    }
}
