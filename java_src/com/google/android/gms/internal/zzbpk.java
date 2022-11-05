package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbpk {
    public String zzaGP;
    public String zzcbI;
    public boolean zzcbJ;
    public String zzcfu;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzbpk zzbpkVar = (zzbpk) obj;
        if (this.zzcbJ == zzbpkVar.zzcbJ && this.zzcbI.equals(zzbpkVar.zzcbI)) {
            return this.zzaGP.equals(zzbpkVar.zzaGP);
        }
        return false;
    }

    public int hashCode() {
        return (((this.zzcbJ ? 1 : 0) + (this.zzcbI.hashCode() * 31)) * 31) + this.zzaGP.hashCode();
    }

    public String toString() {
        String str = this.zzcbJ ? "s" : "";
        String str2 = this.zzcbI;
        return new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(str2).length()).append("http").append(str).append("://").append(str2).toString();
    }
}
