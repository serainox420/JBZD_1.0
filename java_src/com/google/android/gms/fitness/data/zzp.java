package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzp implements Parcelable.Creator<Field> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Field field, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, field.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, field.getFormat());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, field.isOptional(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, field.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzec */
    public Field createFromParcel(Parcel parcel) {
        Boolean bool = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    bool = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel, zzaX);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Field(i2, str, i, bool);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgJ */
    public Field[] newArray(int i) {
        return new Field[i];
    }
}
