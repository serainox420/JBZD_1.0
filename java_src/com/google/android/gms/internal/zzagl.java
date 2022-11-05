package com.google.android.gms.internal;

import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzagl implements com.google.android.gms.drive.events.zzj {
    private final int zzJO;
    private final DriveId zzaKG;
    private final int zzaLZ;

    public zzagl(zzagm zzagmVar) {
        this.zzaKG = zzagmVar.getDriveId();
        this.zzaLZ = zzagmVar.zzAU();
        this.zzJO = zzagmVar.getStatus();
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzagl zzaglVar = (zzagl) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaKG, zzaglVar.zzaKG) && this.zzaLZ == zzaglVar.zzaLZ && this.zzJO == zzaglVar.zzJO;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaKG, Integer.valueOf(this.zzaLZ), Integer.valueOf(this.zzJO));
    }

    public String toString() {
        return String.format("FileTransferState[TransferType: %d, DriveId: %s, status: %d]", Integer.valueOf(this.zzaLZ), this.zzaKG, Integer.valueOf(this.zzJO));
    }
}
