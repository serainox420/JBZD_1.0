package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
@Deprecated
/* loaded from: classes.dex */
public final class zzs extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();
    public final String address;
    public final String name;
    public final int versionCode;
    public final String zzbmI;
    public final String zzbmJ;
    public final List<String> zzbmK;

    public zzs(int i, String str, String str2, String str3, String str4, List<String> list) {
        this.versionCode = i;
        this.name = str;
        this.address = str2;
        this.zzbmI = str3;
        this.zzbmJ = str4;
        this.zzbmK = list;
    }

    public static zzs zza(String str, String str2, String str3, String str4, List<String> list) {
        return new zzs(0, str, str2, str3, str4, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzs)) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.name, zzsVar.name) && com.google.android.gms.common.internal.zzaa.equal(this.address, zzsVar.address) && com.google.android.gms.common.internal.zzaa.equal(this.zzbmI, zzsVar.zzbmI) && com.google.android.gms.common.internal.zzaa.equal(this.zzbmJ, zzsVar.zzbmJ) && com.google.android.gms.common.internal.zzaa.equal(this.zzbmK, zzsVar.zzbmK);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.name, this.address, this.zzbmI, this.zzbmJ);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("name", this.name).zzg("address", this.address).zzg("internationalPhoneNumber", this.zzbmI).zzg("regularOpenHours", this.zzbmJ).zzg("attributions", this.zzbmK).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzt.zza(this, parcel, i);
    }
}
