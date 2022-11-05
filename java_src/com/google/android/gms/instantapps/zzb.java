package com.google.android.gms.instantapps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<LaunchSettings> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LaunchSettings launchSettings, Parcel parcel, int i) {
        zzc.zzJ(parcel, zzc.zzaZ(parcel));
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgu */
    public LaunchSettings createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        while (parcel.dataPosition() < zzaY) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel));
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LaunchSettings();
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjM */
    public LaunchSettings[] newArray(int i) {
        return new LaunchSettings[i];
    }
}
