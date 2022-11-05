package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zze extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();
    public final long zzbDb;
    public final zzc[] zzbDc;

    public zze(long j, zzc[] zzcVarArr) {
        this.zzbDb = j;
        this.zzbDc = zzcVarArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
