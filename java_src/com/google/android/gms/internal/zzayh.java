package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.nearby.messages.EddystoneUid;
import com.google.android.gms.nearby.messages.IBeaconId;
/* loaded from: classes2.dex */
public class zzayh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzayh> CREATOR = new zzayi();
    public static final zzayh zzbAA = new zzayh();
    final int zzaiI;
    private final int zzakD;
    final byte[] zzbAB;
    private final EddystoneUid zzbAC;
    private final IBeaconId zzbAD;

    private zzayh() {
        this(1, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzayh(int i, int i2, byte[] bArr) {
        IBeaconId iBeaconId = null;
        this.zzaiI = i;
        this.zzakD = i2;
        this.zzbAB = bArr;
        this.zzbAC = i2 == 2 ? new EddystoneUid(bArr) : null;
        this.zzbAD = i2 == 3 ? new IBeaconId(bArr) : iBeaconId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzayh)) {
            return false;
        }
        zzayh zzayhVar = (zzayh) obj;
        return com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.zzakD), Integer.valueOf(zzayhVar.zzakD)) && com.google.android.gms.common.internal.zzaa.equal(this.zzbAB, zzayhVar.zzbAB);
    }

    public int getType() {
        return this.zzakD;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzakD), this.zzbAB);
    }

    public String toString() {
        StringBuilder append = new StringBuilder().append("NearbyDeviceId{");
        switch (this.zzakD) {
            case 1:
                append.append("UNKNOWN");
                break;
            case 2:
                append.append("eddystoneUid=").append(this.zzbAC);
                break;
            case 3:
                append.append("iBeaconId=").append(this.zzbAD);
                break;
        }
        append.append("}");
        return append.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzayi.zza(this, parcel, i);
    }
}
