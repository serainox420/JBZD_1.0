package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrj;
/* loaded from: classes2.dex */
public class zzbrh implements zzbrj {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final zzbrw zzcia;

    static {
        $assertionsDisabled = !zzbrh.class.desiredAssertionStatus();
    }

    public zzbrh(zzbrw zzbrwVar) {
        this.zzcia = zzbrwVar;
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrx zza(zzbrx zzbrxVar, zzbrq zzbrqVar, zzbsc zzbscVar, zzbph zzbphVar, zzbrj.zza zzaVar, zzbrg zzbrgVar) {
        if ($assertionsDisabled || zzbrxVar.zzb(this.zzcia)) {
            zzbsc zzWI = zzbrxVar.zzWI();
            zzbsc zzm = zzWI.zzm(zzbrqVar);
            if (zzm.zzO(zzbphVar).equals(zzbscVar.zzO(zzbphVar)) && zzm.isEmpty() == zzbscVar.isEmpty()) {
                return zzbrxVar;
            }
            if (zzbrgVar != null) {
                if (zzbscVar.isEmpty()) {
                    if (zzWI.zzk(zzbrqVar)) {
                        zzbrgVar.zza(zzbqw.zzd(zzbrqVar, zzm));
                    } else if (!$assertionsDisabled && !zzWI.zzaaN()) {
                        throw new AssertionError("A child remove without an old child only makes sense on a leaf node");
                    }
                } else if (zzm.isEmpty()) {
                    zzbrgVar.zza(zzbqw.zzc(zzbrqVar, zzbscVar));
                } else {
                    zzbrgVar.zza(zzbqw.zza(zzbrqVar, zzbscVar, zzm));
                }
            }
            return (!zzWI.zzaaN() || !zzbscVar.isEmpty()) ? zzbrxVar.zzh(zzbrqVar, zzbscVar) : zzbrxVar;
        }
        throw new AssertionError("The index must match the filter");
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrx zza(zzbrx zzbrxVar, zzbrx zzbrxVar2, zzbrg zzbrgVar) {
        if ($assertionsDisabled || zzbrxVar2.zzb(this.zzcia)) {
            if (zzbrgVar != null) {
                for (zzbsb zzbsbVar : zzbrxVar.zzWI()) {
                    if (!zzbrxVar2.zzWI().zzk(zzbsbVar.zzabj())) {
                        zzbrgVar.zza(zzbqw.zzd(zzbsbVar.zzabj(), zzbsbVar.zzWI()));
                    }
                }
                if (!zzbrxVar2.zzWI().zzaaN()) {
                    for (zzbsb zzbsbVar2 : zzbrxVar2.zzWI()) {
                        if (zzbrxVar.zzWI().zzk(zzbsbVar2.zzabj())) {
                            zzbsc zzm = zzbrxVar.zzWI().zzm(zzbsbVar2.zzabj());
                            if (!zzm.equals(zzbsbVar2.zzWI())) {
                                zzbrgVar.zza(zzbqw.zza(zzbsbVar2.zzabj(), zzbsbVar2.zzWI(), zzm));
                            }
                        } else {
                            zzbrgVar.zza(zzbqw.zzc(zzbsbVar2.zzabj(), zzbsbVar2.zzWI()));
                        }
                    }
                }
            }
            return zzbrxVar2;
        }
        throw new AssertionError("Can't use IndexedNode that doesn't have filter's index");
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrx zza(zzbrx zzbrxVar, zzbsc zzbscVar) {
        return zzbrxVar.zzWI().isEmpty() ? zzbrxVar : zzbrxVar.zzo(zzbscVar);
    }

    @Override // com.google.android.gms.internal.zzbrj
    public boolean zzaaA() {
        return false;
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrw zzaaj() {
        return this.zzcia;
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrj zzaaz() {
        return this;
    }
}
