package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzq implements Parcelable.Creator<UserMetadata> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(UserMetadata userMetadata, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, userMetadata.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, userMetadata.zzaLy, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, userMetadata.zzakb, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, userMetadata.zzaLz, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, userMetadata.zzaLA);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, userMetadata.zzaLB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbT */
    public UserMetadata createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new UserMetadata(i, str4, str3, str2, z, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeo */
    public UserMetadata[] newArray(int i) {
        return new UserMetadata[i];
    }
}
