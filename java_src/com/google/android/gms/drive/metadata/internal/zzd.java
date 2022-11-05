package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<zzc> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzc zzcVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzcVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzcVar.zzaOQ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzcVar.mValue, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdk */
    public zzc createFromParcel(Parcel parcel) {
        String zzq;
        CustomPropertyKey customPropertyKey;
        int i;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        CustomPropertyKey customPropertyKey2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    String str2 = str;
                    customPropertyKey = customPropertyKey2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzq = str2;
                    break;
                case 2:
                    CustomPropertyKey customPropertyKey3 = (CustomPropertyKey) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, CustomPropertyKey.CREATOR);
                    i = i2;
                    zzq = str;
                    customPropertyKey = customPropertyKey3;
                    break;
                case 3:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    customPropertyKey = customPropertyKey2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str;
                    customPropertyKey = customPropertyKey2;
                    i = i2;
                    break;
            }
            i2 = i;
            customPropertyKey2 = customPropertyKey;
            str = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzc(i2, customPropertyKey2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfK */
    public zzc[] newArray(int i) {
        return new zzc[i];
    }
}
