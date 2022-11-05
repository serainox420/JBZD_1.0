package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbey extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        zzbjb zzbjbVar = zzbitVarArr[0];
        zzbit<?> zzbitVar = zzbitVarArr[1];
        if ((!(zzbjbVar instanceof zzbix) || zzbjbVar == zzbix.zzbMS || zzbjbVar == zzbix.zzbMR) && (!(zzbitVar instanceof zzbix) || zzbitVar == zzbix.zzbMS || zzbitVar == zzbix.zzbMR)) {
            if ((zzbjbVar instanceof zzbiz) || (zzbjbVar instanceof zzbiy) || (zzbjbVar instanceof zzbiw)) {
                zzbjbVar = new zzbjb(zzbcr.zzd(zzbjbVar));
            }
            zzbit<?> zzbjbVar2 = ((zzbitVar instanceof zzbiz) || (zzbitVar instanceof zzbiy) || (zzbitVar instanceof zzbiw)) ? new zzbjb(zzbcr.zzd(zzbitVar)) : zzbitVar;
            if (!(zzbjbVar instanceof zzbjb) && !(zzbjbVar2 instanceof zzbjb)) {
                return new zzbiv(Double.valueOf(zzbcr.zza(zzbjbVar, zzbjbVar2)));
            }
            String valueOf = String.valueOf(zzbcr.zzd(zzbjbVar));
            String valueOf2 = String.valueOf(zzbcr.zzd(zzbjbVar2));
            return new zzbjb(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        }
        throw new IllegalArgumentException("Illegal InternalType passed to Add.");
    }
}
