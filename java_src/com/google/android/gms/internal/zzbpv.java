package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbpv {
    private final zzbph zzcag;
    private final long zzcgp;
    private final zzbsc zzcgq;
    private final zzboy zzcgr;
    private final boolean zzcgs;

    public zzbpv(long j, zzbph zzbphVar, zzboy zzboyVar) {
        this.zzcgp = j;
        this.zzcag = zzbphVar;
        this.zzcgq = null;
        this.zzcgr = zzboyVar;
        this.zzcgs = true;
    }

    public zzbpv(long j, zzbph zzbphVar, zzbsc zzbscVar, boolean z) {
        this.zzcgp = j;
        this.zzcag = zzbphVar;
        this.zzcgq = zzbscVar;
        this.zzcgr = null;
        this.zzcgs = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzbpv zzbpvVar = (zzbpv) obj;
        if (this.zzcgp == zzbpvVar.zzcgp && this.zzcag.equals(zzbpvVar.zzcag) && this.zzcgs == zzbpvVar.zzcgs) {
            if (this.zzcgq == null ? zzbpvVar.zzcgq != null : !this.zzcgq.equals(zzbpvVar.zzcgq)) {
                return false;
            }
            if (this.zzcgr != null) {
                if (this.zzcgr.equals(zzbpvVar.zzcgr)) {
                    return true;
                }
            } else if (zzbpvVar.zzcgr == null) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.zzcgq != null ? this.zzcgq.hashCode() : 0) + (((((Long.valueOf(this.zzcgp).hashCode() * 31) + Boolean.valueOf(this.zzcgs).hashCode()) * 31) + this.zzcag.hashCode()) * 31)) * 31;
        if (this.zzcgr != null) {
            i = this.zzcgr.hashCode();
        }
        return hashCode + i;
    }

    public boolean isVisible() {
        return this.zzcgs;
    }

    public String toString() {
        long j = this.zzcgp;
        String valueOf = String.valueOf(this.zzcag);
        boolean z = this.zzcgs;
        String valueOf2 = String.valueOf(this.zzcgq);
        String valueOf3 = String.valueOf(this.zzcgr);
        return new StringBuilder(String.valueOf(valueOf).length() + 78 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("UserWriteRecord{id=").append(j).append(" path=").append(valueOf).append(" visible=").append(z).append(" overwrite=").append(valueOf2).append(" merge=").append(valueOf3).append("}").toString();
    }

    public zzbph zzWM() {
        return this.zzcag;
    }

    public long zzZm() {
        return this.zzcgp;
    }

    public zzbsc zzZn() {
        if (this.zzcgq == null) {
            throw new IllegalArgumentException("Can't access overwrite when write is a merge!");
        }
        return this.zzcgq;
    }

    public zzboy zzZo() {
        if (this.zzcgr == null) {
            throw new IllegalArgumentException("Can't access merge when write is an overwrite!");
        }
        return this.zzcgr;
    }

    public boolean zzZp() {
        return this.zzcgq != null;
    }
}
