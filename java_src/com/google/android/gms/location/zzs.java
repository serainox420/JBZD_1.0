package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzs implements Parcelable.Creator<LocationSettingsStates> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LocationSettingsStates locationSettingsStates, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, locationSettingsStates.isGpsUsable());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, locationSettingsStates.isNetworkLocationUsable());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, locationSettingsStates.isBleUsable());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, locationSettingsStates.isGpsPresent());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, locationSettingsStates.isNetworkLocationPresent());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, locationSettingsStates.isBlePresent());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgR */
    public LocationSettingsStates createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    z6 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 2:
                    z5 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    z4 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LocationSettingsStates(z6, z5, z4, z3, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkr */
    public LocationSettingsStates[] newArray(int i) {
        return new LocationSettingsStates[i];
    }
}
