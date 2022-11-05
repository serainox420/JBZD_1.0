package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.nearby.messages.BleSignal;
/* loaded from: classes2.dex */
public class zza extends com.google.android.gms.common.internal.safeparcel.zza implements BleSignal {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    final int zzaiI;
    public final int zzbAE;
    public final int zzbAF;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(int i, int i2, int i3) {
        this.zzaiI = i;
        this.zzbAE = i2;
        this.zzbAF = (-128 >= i3 || i3 >= 128) ? Integer.MIN_VALUE : i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BleSignal)) {
            return false;
        }
        BleSignal bleSignal = (BleSignal) obj;
        return this.zzbAE == bleSignal.getRssi() && this.zzbAF == bleSignal.getTxPower();
    }

    @Override // com.google.android.gms.nearby.messages.BleSignal
    public int getRssi() {
        return this.zzbAE;
    }

    @Override // com.google.android.gms.nearby.messages.BleSignal
    public int getTxPower() {
        return this.zzbAF;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzbAE), Integer.valueOf(this.zzbAF));
    }

    public String toString() {
        int i = this.zzbAE;
        return new StringBuilder(48).append("BleSignal{rssi=").append(i).append(", txPower=").append(this.zzbAF).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
