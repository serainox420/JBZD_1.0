package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbse extends zzbrw {
    private final zzbph zzcjF;

    public zzbse(zzbph zzbphVar) {
        if (zzbphVar.size() != 1 || !zzbphVar.zzYS().zzaaK()) {
            this.zzcjF = zzbphVar;
            return;
        }
        throw new IllegalArgumentException("Can't create PathIndex with '.priority' as key. Please use PriorityIndex instead!");
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.zzcjF.equals(((zzbse) obj).zzcjF);
    }

    public int hashCode() {
        return this.zzcjF.hashCode();
    }

    @Override // java.util.Comparator
    /* renamed from: zza */
    public int compare(zzbsb zzbsbVar, zzbsb zzbsbVar2) {
        int compareTo = zzbsbVar.zzWI().zzO(this.zzcjF).compareTo(zzbsbVar2.zzWI().zzO(this.zzcjF));
        return compareTo == 0 ? zzbsbVar.zzabj().compareTo(zzbsbVar2.zzabj()) : compareTo;
    }

    @Override // com.google.android.gms.internal.zzbrw
    public zzbsb zzabb() {
        return new zzbsb(zzbrq.zzaaH(), zzbrv.zzaaZ().zzl(this.zzcjF, zzbsc.zzcjB));
    }

    @Override // com.google.android.gms.internal.zzbrw
    public String zzabc() {
        return this.zzcjF.zzYQ();
    }

    @Override // com.google.android.gms.internal.zzbrw
    public zzbsb zzg(zzbrq zzbrqVar, zzbsc zzbscVar) {
        return new zzbsb(zzbrqVar, zzbrv.zzaaZ().zzl(this.zzcjF, zzbscVar));
    }

    @Override // com.google.android.gms.internal.zzbrw
    public boolean zzm(zzbsc zzbscVar) {
        return !zzbscVar.zzO(this.zzcjF).isEmpty();
    }
}
