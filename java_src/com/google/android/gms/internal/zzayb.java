package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class zzayb extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzayb> CREATOR = new zzayc();
    private final int zzaiI;
    private final ParcelUuid zzbAg;
    private final ParcelUuid zzbAh;
    private final ParcelUuid zzbAi;
    private final byte[] zzbAj;
    private final byte[] zzbAk;
    private final int zzbAl;
    private final byte[] zzbAm;
    private final byte[] zzbAn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzayb(int i, ParcelUuid parcelUuid, ParcelUuid parcelUuid2, ParcelUuid parcelUuid3, byte[] bArr, byte[] bArr2, int i2, byte[] bArr3, byte[] bArr4) {
        this.zzaiI = i;
        this.zzbAg = parcelUuid;
        this.zzbAh = parcelUuid2;
        this.zzbAi = parcelUuid3;
        this.zzbAj = bArr;
        this.zzbAk = bArr2;
        this.zzbAl = i2;
        this.zzbAm = bArr3;
        this.zzbAn = bArr4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzayb zzaybVar = (zzayb) obj;
        return this.zzbAl == zzaybVar.zzbAl && Arrays.equals(this.zzbAm, zzaybVar.zzbAm) && Arrays.equals(this.zzbAn, zzaybVar.zzbAn) && com.google.android.gms.common.internal.zzaa.equal(this.zzbAi, zzaybVar.zzbAi) && Arrays.equals(this.zzbAj, zzaybVar.zzbAj) && Arrays.equals(this.zzbAk, zzaybVar.zzbAk) && com.google.android.gms.common.internal.zzaa.equal(this.zzbAg, zzaybVar.zzbAg) && com.google.android.gms.common.internal.zzaa.equal(this.zzbAh, zzaybVar.zzbAh);
    }

    public byte[] getManufacturerData() {
        return this.zzbAm;
    }

    public byte[] getManufacturerDataMask() {
        return this.zzbAn;
    }

    public int getManufacturerId() {
        return this.zzbAl;
    }

    public byte[] getServiceData() {
        return this.zzbAj;
    }

    public byte[] getServiceDataMask() {
        return this.zzbAk;
    }

    public ParcelUuid getServiceDataUuid() {
        return this.zzbAi;
    }

    public ParcelUuid getServiceUuid() {
        return this.zzbAg;
    }

    public ParcelUuid getServiceUuidMask() {
        return this.zzbAh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzbAl), Integer.valueOf(Arrays.hashCode(this.zzbAm)), Integer.valueOf(Arrays.hashCode(this.zzbAn)), this.zzbAi, Integer.valueOf(Arrays.hashCode(this.zzbAj)), Integer.valueOf(Arrays.hashCode(this.zzbAk)), this.zzbAg, this.zzbAh);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzayc.zza(this, parcel, i);
    }
}
