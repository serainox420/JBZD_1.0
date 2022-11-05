package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzr implements Parcelable.Creator<LocationSettingsResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LocationSettingsResult locationSettingsResult, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) locationSettingsResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) locationSettingsResult.getLocationSettingsStates(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgQ */
    public LocationSettingsResult createFromParcel(Parcel parcel) {
        LocationSettingsStates locationSettingsStates;
        Status status;
        LocationSettingsStates locationSettingsStates2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        Status status2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    LocationSettingsStates locationSettingsStates3 = locationSettingsStates2;
                    status = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    locationSettingsStates = locationSettingsStates3;
                    break;
                case 2:
                    locationSettingsStates = (LocationSettingsStates) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LocationSettingsStates.CREATOR);
                    status = status2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    locationSettingsStates = locationSettingsStates2;
                    status = status2;
                    break;
            }
            status2 = status;
            locationSettingsStates2 = locationSettingsStates;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LocationSettingsResult(status2, locationSettingsStates2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkq */
    public LocationSettingsResult[] newArray(int i) {
        return new LocationSettingsResult[i];
    }
}
