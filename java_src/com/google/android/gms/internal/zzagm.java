package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzagm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzagm> CREATOR = new zzagn();
    final int zzJO;
    final DriveId zzaKG;
    final int zzaLZ;
    final long zzaMc;
    final long zzaMd;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagm(int i, int i2, DriveId driveId, int i3, long j, long j2) {
        this.zzaiI = i;
        this.zzaLZ = i2;
        this.zzaKG = driveId;
        this.zzJO = i3;
        this.zzaMc = j;
        this.zzaMd = j2;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzagm zzagmVar = (zzagm) obj;
        return this.zzaLZ == zzagmVar.zzaLZ && com.google.android.gms.common.internal.zzaa.equal(this.zzaKG, zzagmVar.zzaKG) && this.zzJO == zzagmVar.zzJO && this.zzaMc == zzagmVar.zzaMc && this.zzaMd == zzagmVar.zzaMd;
    }

    public long getBytesTransferred() {
        return this.zzaMc;
    }

    public DriveId getDriveId() {
        return this.zzaKG;
    }

    public int getStatus() {
        return this.zzJO;
    }

    public long getTotalBytes() {
        return this.zzaMd;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzaLZ), this.zzaKG, Integer.valueOf(this.zzJO), Long.valueOf(this.zzaMc), Long.valueOf(this.zzaMd));
    }

    public String toString() {
        return String.format("TransferProgressData[TransferType: %d, DriveId: %s, status: %d, bytes transferred: %d, total bytes: %d]", Integer.valueOf(this.zzaLZ), this.zzaKG, Integer.valueOf(this.zzJO), Long.valueOf(this.zzaMc), Long.valueOf(this.zzaMd));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzagn.zza(this, parcel, i);
    }

    public int zzAU() {
        return this.zzaLZ;
    }
}
