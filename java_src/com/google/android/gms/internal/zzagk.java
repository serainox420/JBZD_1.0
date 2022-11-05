package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzagk {
    private final com.google.android.gms.drive.events.zzj zzaMb;
    private final long zzaMc;
    private final long zzaMd;

    public zzagk(zzagm zzagmVar) {
        this.zzaMb = new zzagl(zzagmVar);
        this.zzaMc = zzagmVar.getBytesTransferred();
        this.zzaMd = zzagmVar.getTotalBytes();
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzagk zzagkVar = (zzagk) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaMb, zzagkVar.zzaMb) && this.zzaMc == zzagkVar.zzaMc && this.zzaMd == zzagkVar.zzaMd;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Long.valueOf(this.zzaMd), Long.valueOf(this.zzaMc), Long.valueOf(this.zzaMd));
    }

    public String toString() {
        return String.format("FileTransferProgress[FileTransferState: %s, BytesTransferred: %d, TotalBytes: %d]", this.zzaMb.toString(), Long.valueOf(this.zzaMc), Long.valueOf(this.zzaMd));
    }
}
