package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzans;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class BleDevice extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<BleDevice> CREATOR = new zzd();
    private final String mName;
    private final String zzaSq;
    private final List<String> zzaSr;
    private final List<DataType> zzaSs;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BleDevice(int i, String str, String str2, List<String> list, List<DataType> list2) {
        this.zzaiI = i;
        this.zzaSq = str;
        this.mName = str2;
        this.zzaSr = Collections.unmodifiableList(list);
        this.zzaSs = Collections.unmodifiableList(list2);
    }

    private boolean zza(BleDevice bleDevice) {
        return this.mName.equals(bleDevice.mName) && this.zzaSq.equals(bleDevice.zzaSq) && zzans.zza(bleDevice.zzaSr, this.zzaSr) && zzans.zza(this.zzaSs, bleDevice.zzaSs);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof BleDevice) && zza((BleDevice) obj));
    }

    public String getAddress() {
        return this.zzaSq;
    }

    public List<DataType> getDataTypes() {
        return this.zzaSs;
    }

    public String getName() {
        return this.mName;
    }

    public List<String> getSupportedProfiles() {
        return this.zzaSr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.mName, this.zzaSq, this.zzaSr, this.zzaSs);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("name", this.mName).zzg("address", this.zzaSq).zzg("dataTypes", this.zzaSs).zzg("supportedProfiles", this.zzaSr).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
