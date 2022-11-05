package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbsj extends zzbrw {
    private static final zzbsj zzcjK = new zzbsj();

    private zzbsj() {
    }

    public static zzbsj zzabm() {
        return zzcjK;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        return obj instanceof zzbsj;
    }

    public int hashCode() {
        return 4;
    }

    public String toString() {
        return "ValueIndex";
    }

    @Override // java.util.Comparator
    /* renamed from: zza */
    public int compare(zzbsb zzbsbVar, zzbsb zzbsbVar2) {
        int compareTo = zzbsbVar.zzWI().compareTo(zzbsbVar2.zzWI());
        return compareTo == 0 ? zzbsbVar.zzabj().compareTo(zzbsbVar2.zzabj()) : compareTo;
    }

    @Override // com.google.android.gms.internal.zzbrw
    public zzbsb zzabb() {
        return new zzbsb(zzbrq.zzaaH(), zzbsc.zzcjB);
    }

    @Override // com.google.android.gms.internal.zzbrw
    public String zzabc() {
        return ".value";
    }

    @Override // com.google.android.gms.internal.zzbrw
    public zzbsb zzg(zzbrq zzbrqVar, zzbsc zzbscVar) {
        return new zzbsb(zzbrqVar, zzbscVar);
    }

    @Override // com.google.android.gms.internal.zzbrw
    public boolean zzm(zzbsc zzbscVar) {
        return true;
    }
}
