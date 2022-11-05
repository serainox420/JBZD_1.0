package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataType;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzapv extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzapv> CREATOR = new zzapw();
    private final List<DataType> zzaSs;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapv(int i, List<DataType> list) {
        this.zzaiI = i;
        this.zzaSs = list;
    }

    public List<DataType> getDataTypes() {
        return Collections.unmodifiableList(this.zzaSs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("dataTypes", this.zzaSs).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzapw.zza(this, parcel, i);
    }
}
