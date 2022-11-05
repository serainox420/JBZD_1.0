package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqy;
import com.google.firebase.database.a;
import com.google.firebase.database.c;
import com.google.firebase.database.o;
/* loaded from: classes2.dex */
public class zzbox extends zzbpc {
    private final zzbpj zzbZZ;
    private final a zzcdG;
    private final zzbrc zzcdH;

    public zzbox(zzbpj zzbpjVar, a aVar, zzbrc zzbrcVar) {
        this.zzbZZ = zzbpjVar;
        this.zzcdG = aVar;
        this.zzcdH = zzbrcVar;
    }

    public boolean equals(Object obj) {
        return (obj instanceof zzbox) && ((zzbox) obj).zzcdG.equals(this.zzcdG) && ((zzbox) obj).zzbZZ.equals(this.zzbZZ) && ((zzbox) obj).zzcdH.equals(this.zzcdH);
    }

    public int hashCode() {
        return (((this.zzcdG.hashCode() * 31) + this.zzbZZ.hashCode()) * 31) + this.zzcdH.hashCode();
    }

    public String toString() {
        return "ChildEventRegistration";
    }

    @Override // com.google.android.gms.internal.zzbpc
    public zzbrc zzYn() {
        return this.zzcdH;
    }

    @Override // com.google.android.gms.internal.zzbpc
    public zzbpc zza(zzbrc zzbrcVar) {
        return new zzbox(this.zzbZZ, this.zzcdG, zzbrcVar);
    }

    @Override // com.google.android.gms.internal.zzbpc
    public zzbqx zza(zzbqw zzbqwVar, zzbrc zzbrcVar) {
        return new zzbqx(zzbqwVar.zzZV(), this, o.a(o.a(this.zzbZZ, zzbrcVar.zzWM().zza(zzbqwVar.zzZU())), zzbqwVar.zzZS()), zzbqwVar.zzZW() != null ? zzbqwVar.zzZW().asString() : null);
    }

    @Override // com.google.android.gms.internal.zzbpc
    public void zza(zzbqx zzbqxVar) {
        if (zzYL()) {
            return;
        }
        switch (zzbqxVar.zzZV()) {
            case CHILD_ADDED:
                this.zzcdG.a(zzbqxVar.zzZY(), zzbqxVar.zzZZ());
                return;
            case CHILD_CHANGED:
                this.zzcdG.b(zzbqxVar.zzZY(), zzbqxVar.zzZZ());
                return;
            case CHILD_MOVED:
                this.zzcdG.c(zzbqxVar.zzZY(), zzbqxVar.zzZZ());
                return;
            case CHILD_REMOVED:
                this.zzcdG.a(zzbqxVar.zzZY());
                return;
            default:
                return;
        }
    }

    @Override // com.google.android.gms.internal.zzbpc
    public void zza(c cVar) {
        this.zzcdG.a(cVar);
    }

    @Override // com.google.android.gms.internal.zzbpc
    public boolean zza(zzbqy.zza zzaVar) {
        return zzaVar != zzbqy.zza.VALUE;
    }

    @Override // com.google.android.gms.internal.zzbpc
    public boolean zzc(zzbpc zzbpcVar) {
        return (zzbpcVar instanceof zzbox) && ((zzbox) zzbpcVar).zzcdG.equals(this.zzcdG);
    }
}
