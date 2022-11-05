package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzh extends com.google.android.gms.common.internal.safeparcel.zza implements com.google.android.gms.wearable.zzb {
    public static final Parcelable.Creator<zzh> CREATOR = new zzi();
    private final String mValue;
    private byte zzbTB;
    private final byte zzbTC;

    public zzh(byte b, byte b2, String str) {
        this.zzbTB = b;
        this.zzbTC = b2;
        this.mValue = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzh zzhVar = (zzh) obj;
        return this.zzbTB == zzhVar.zzbTB && this.zzbTC == zzhVar.zzbTC && this.mValue.equals(zzhVar.mValue);
    }

    public String getValue() {
        return this.mValue;
    }

    public int hashCode() {
        return ((((this.zzbTB + 31) * 31) + this.zzbTC) * 31) + this.mValue.hashCode();
    }

    public String toString() {
        byte b = this.zzbTB;
        byte b2 = this.zzbTC;
        String str = this.mValue;
        return new StringBuilder(String.valueOf(str).length() + 73).append("AmsEntityUpdateParcelable{, mEntityId=").append((int) b).append(", mAttributeId=").append((int) b2).append(", mValue='").append(str).append("'").append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public byte zzUk() {
        return this.zzbTB;
    }

    public byte zzUl() {
        return this.zzbTC;
    }
}
