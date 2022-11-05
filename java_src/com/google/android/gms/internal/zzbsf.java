package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbsf extends zzbrw {
    private static final zzbsf zzcjG = new zzbsf();

    private zzbsf() {
    }

    public static zzbsf zzabk() {
        return zzcjG;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        return obj instanceof zzbsf;
    }

    public int hashCode() {
        return 3155577;
    }

    public String toString() {
        return "PriorityIndex";
    }

    @Override // java.util.Comparator
    /* renamed from: zza */
    public int compare(zzbsb zzbsbVar, zzbsb zzbsbVar2) {
        return zzbsd.zza(zzbsbVar.zzabj(), zzbsbVar.zzWI().zzaaO(), zzbsbVar2.zzabj(), zzbsbVar2.zzWI().zzaaO());
    }

    @Override // com.google.android.gms.internal.zzbrw
    public zzbsb zzabb() {
        return zzg(zzbrq.zzaaH(), zzbsc.zzcjB);
    }

    @Override // com.google.android.gms.internal.zzbrw
    public String zzabc() {
        throw new IllegalArgumentException("Can't get query definition on priority index!");
    }

    @Override // com.google.android.gms.internal.zzbrw
    public zzbsb zzg(zzbrq zzbrqVar, zzbsc zzbscVar) {
        return new zzbsb(zzbrqVar, new zzbsi("[PRIORITY-POST]", zzbscVar));
    }

    @Override // com.google.android.gms.internal.zzbrw
    public boolean zzm(zzbsc zzbscVar) {
        return !zzbscVar.zzaaO().isEmpty();
    }
}
