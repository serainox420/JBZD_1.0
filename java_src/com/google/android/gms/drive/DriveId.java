package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzahz;
import com.google.android.gms.internal.zzaib;
import com.google.android.gms.internal.zzaic;
import com.google.android.gms.internal.zzaie;
import com.google.android.gms.internal.zzals;
import com.google.android.gms.internal.zzalt;
import com.google.android.gms.internal.zzbxs;
import com.google.android.gms.internal.zzbxt;
/* loaded from: classes2.dex */
public class DriveId extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<DriveId> CREATOR = new zzh();
    public static final int RESOURCE_TYPE_FILE = 0;
    public static final int RESOURCE_TYPE_FOLDER = 1;
    public static final int RESOURCE_TYPE_UNKNOWN = -1;
    final long zzaKB;
    private volatile String zzaKD;
    final String zzaKS;
    final long zzaKT;
    final int zzaKU;
    private volatile String zzaKV;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DriveId(int i, String str, long j, long j2, int i2) {
        boolean z = false;
        this.zzaKD = null;
        this.zzaKV = null;
        this.zzaiI = i;
        this.zzaKS = str;
        zzac.zzax(!"".equals(str));
        zzac.zzax((str == null && j == -1) ? z : true);
        this.zzaKT = j;
        this.zzaKB = j2;
        this.zzaKU = i2;
    }

    public DriveId(String str, long j, long j2, int i) {
        this(1, str, j, j2, i);
    }

    public static DriveId decodeFromString(String str) {
        boolean startsWith = str.startsWith("DriveId:");
        String valueOf = String.valueOf(str);
        zzac.zzb(startsWith, valueOf.length() != 0 ? "Invalid DriveId: ".concat(valueOf) : new String("Invalid DriveId: "));
        return zzt(Base64.decode(str.substring("DriveId:".length()), 10));
    }

    private byte[] zzAt() {
        zzalt zzaltVar = new zzalt();
        zzaltVar.zzaOG = this.zzaKT;
        zzaltVar.zzaOD = this.zzaKB;
        return zzbxt.zzf(zzaltVar);
    }

    public static DriveId zzdD(String str) {
        zzac.zzw(str);
        return new DriveId(str, -1L, -1L, -1);
    }

    static DriveId zzt(byte[] bArr) {
        try {
            zzals zzu = zzals.zzu(bArr);
            return new DriveId(zzu.versionCode, "".equals(zzu.zzaOF) ? null : zzu.zzaOF, zzu.zzaOG, zzu.zzaOD, zzu.zzaOH);
        } catch (zzbxs e) {
            throw new IllegalArgumentException();
        }
    }

    public DriveFile asDriveFile() {
        if (this.zzaKU == 1) {
            throw new IllegalStateException("This DriveId corresponds to a folder. Call asDriveFolder instead.");
        }
        return new zzahz(this);
    }

    public DriveFolder asDriveFolder() {
        if (this.zzaKU == 0) {
            throw new IllegalStateException("This DriveId corresponds to a file. Call asDriveFile instead.");
        }
        return new zzaib(this);
    }

    public DriveResource asDriveResource() {
        return this.zzaKU == 1 ? asDriveFolder() : this.zzaKU == 0 ? asDriveFile() : new zzaie(this);
    }

    public final String encodeToString() {
        if (this.zzaKD == null) {
            String encodeToString = Base64.encodeToString(zzAn(), 10);
            String valueOf = String.valueOf("DriveId:");
            String valueOf2 = String.valueOf(encodeToString);
            this.zzaKD = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        return this.zzaKD;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (!(obj instanceof DriveId)) {
            return false;
        }
        DriveId driveId = (DriveId) obj;
        if (driveId.zzaKB != this.zzaKB) {
            return false;
        }
        if (driveId.zzaKT == -1 && this.zzaKT == -1) {
            return driveId.zzaKS.equals(this.zzaKS);
        }
        if (this.zzaKS == null || driveId.zzaKS == null) {
            if (driveId.zzaKT != this.zzaKT) {
                z = false;
            }
            return z;
        } else if (driveId.zzaKT != this.zzaKT) {
            return false;
        } else {
            if (driveId.zzaKS.equals(this.zzaKS)) {
                return true;
            }
            zzaic.zzF("DriveId", "Unexpected unequal resourceId for same DriveId object.");
            return false;
        }
    }

    public String getResourceId() {
        return this.zzaKS;
    }

    public int getResourceType() {
        return this.zzaKU;
    }

    public int hashCode() {
        if (this.zzaKT == -1) {
            return this.zzaKS.hashCode();
        }
        String valueOf = String.valueOf(String.valueOf(this.zzaKB));
        String valueOf2 = String.valueOf(String.valueOf(this.zzaKT));
        return (valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).hashCode();
    }

    public final String toInvariantString() {
        if (this.zzaKV == null) {
            this.zzaKV = Base64.encodeToString(zzAt(), 10);
        }
        return this.zzaKV;
    }

    public String toString() {
        return encodeToString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    final byte[] zzAn() {
        zzals zzalsVar = new zzals();
        zzalsVar.versionCode = this.zzaiI;
        zzalsVar.zzaOF = this.zzaKS == null ? "" : this.zzaKS;
        zzalsVar.zzaOG = this.zzaKT;
        zzalsVar.zzaOD = this.zzaKB;
        zzalsVar.zzaOH = this.zzaKU;
        return zzbxt.zzf(zzalsVar);
    }
}
