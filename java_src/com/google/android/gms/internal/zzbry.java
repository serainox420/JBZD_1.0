package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbry extends zzbrw {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final zzbry zzcjs;

    static {
        $assertionsDisabled = !zzbry.class.desiredAssertionStatus();
        zzcjs = new zzbry();
    }

    private zzbry() {
    }

    public static zzbry zzabg() {
        return zzcjs;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        return obj instanceof zzbry;
    }

    public int hashCode() {
        return 37;
    }

    public String toString() {
        return "KeyIndex";
    }

    @Override // java.util.Comparator
    /* renamed from: zza */
    public int compare(zzbsb zzbsbVar, zzbsb zzbsbVar2) {
        return zzbsbVar.zzabj().compareTo(zzbsbVar2.zzabj());
    }

    @Override // com.google.android.gms.internal.zzbrw
    public zzbsb zzabb() {
        return zzbsb.zzabi();
    }

    @Override // com.google.android.gms.internal.zzbrw
    public String zzabc() {
        return ".key";
    }

    @Override // com.google.android.gms.internal.zzbrw
    public zzbsb zzg(zzbrq zzbrqVar, zzbsc zzbscVar) {
        if ($assertionsDisabled || (zzbscVar instanceof zzbsi)) {
            return new zzbsb(zzbrq.zzja((String) zzbscVar.getValue()), zzbrv.zzaaZ());
        }
        throw new AssertionError();
    }

    @Override // com.google.android.gms.internal.zzbrw
    public boolean zzm(zzbsc zzbscVar) {
        return true;
    }
}
