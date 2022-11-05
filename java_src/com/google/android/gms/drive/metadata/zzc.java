package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<CustomPropertyKey> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CustomPropertyKey customPropertyKey, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, customPropertyKey.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, customPropertyKey.zzAX, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, customPropertyKey.mVisibility);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdi */
    public CustomPropertyKey createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new CustomPropertyKey(i2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfI */
    public CustomPropertyKey[] newArray(int i) {
        return new CustomPropertyKey[i];
    }
}
