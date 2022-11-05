package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbsb {
    private final zzbrq zzchD;
    private final zzbsc zzcjq;
    private static final zzbsb zzcjz = new zzbsb(zzbrq.zzaaG(), zzbrv.zzaaZ());
    private static final zzbsb zzcjA = new zzbsb(zzbrq.zzaaH(), zzbsc.zzcjB);

    public zzbsb(zzbrq zzbrqVar, zzbsc zzbscVar) {
        this.zzchD = zzbrqVar;
        this.zzcjq = zzbscVar;
    }

    public static zzbsb zzabh() {
        return zzcjz;
    }

    public static zzbsb zzabi() {
        return zzcjA;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzbsb zzbsbVar = (zzbsb) obj;
        return this.zzchD.equals(zzbsbVar.zzchD) && this.zzcjq.equals(zzbsbVar.zzcjq);
    }

    public int hashCode() {
        return (this.zzchD.hashCode() * 31) + this.zzcjq.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzchD);
        String valueOf2 = String.valueOf(this.zzcjq);
        return new StringBuilder(String.valueOf(valueOf).length() + 23 + String.valueOf(valueOf2).length()).append("NamedNode{name=").append(valueOf).append(", node=").append(valueOf2).append("}").toString();
    }

    public zzbsc zzWI() {
        return this.zzcjq;
    }

    public zzbrq zzabj() {
        return this.zzchD;
    }
}
