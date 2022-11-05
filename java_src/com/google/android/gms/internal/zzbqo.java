package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbqo {
    public final long id;
    public final boolean zzbqY;
    public final zzbrc zzchm;
    public final long zzchn;
    public final boolean zzcho;

    public zzbqo(long j, zzbrc zzbrcVar, long j2, boolean z, boolean z2) {
        this.id = j;
        if (!zzbrcVar.zzaan() || zzbrcVar.isDefault()) {
            this.zzchm = zzbrcVar;
            this.zzchn = j2;
            this.zzcho = z;
            this.zzbqY = z2;
            return;
        }
        throw new IllegalArgumentException("Can't create TrackedQuery for a non-default query that loads all data");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        zzbqo zzbqoVar = (zzbqo) obj;
        return this.id == zzbqoVar.id && this.zzchm.equals(zzbqoVar.zzchm) && this.zzchn == zzbqoVar.zzchn && this.zzcho == zzbqoVar.zzcho && this.zzbqY == zzbqoVar.zzbqY;
    }

    public int hashCode() {
        return (((((((Long.valueOf(this.id).hashCode() * 31) + this.zzchm.hashCode()) * 31) + Long.valueOf(this.zzchn).hashCode()) * 31) + Boolean.valueOf(this.zzcho).hashCode()) * 31) + Boolean.valueOf(this.zzbqY).hashCode();
    }

    public String toString() {
        long j = this.id;
        String valueOf = String.valueOf(this.zzchm);
        long j2 = this.zzchn;
        boolean z = this.zzcho;
        return new StringBuilder(String.valueOf(valueOf).length() + 109).append("TrackedQuery{id=").append(j).append(", querySpec=").append(valueOf).append(", lastUse=").append(j2).append(", complete=").append(z).append(", active=").append(this.zzbqY).append("}").toString();
    }

    public zzbqo zzZJ() {
        return new zzbqo(this.id, this.zzchm, this.zzchn, true, this.zzbqY);
    }

    public zzbqo zzaR(long j) {
        return new zzbqo(this.id, this.zzchm, j, this.zzcho, this.zzbqY);
    }

    public zzbqo zzbg(boolean z) {
        return new zzbqo(this.id, this.zzchm, this.zzchn, this.zzcho, z);
    }
}
