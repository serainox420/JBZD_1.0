package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzacs;
/* loaded from: classes2.dex */
public class zzacu implements Parcelable.Creator<zzacs.zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzacs.zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzaVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzaVar.zzys());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaVar.zzyt());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzaVar.zzyu());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaVar.zzyv());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzaVar.zzyw(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzaVar.zzyx());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzaVar.zzyz(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) zzaVar.zzyB(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbe */
    public zzacs.zza createFromParcel(Parcel parcel) {
        zzacn zzacnVar = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    zzacnVar = (zzacn) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzacn.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzacs.zza(i4, i3, z2, i2, z, str2, i, str, zzacnVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdi */
    public zzacs.zza[] newArray(int i) {
        return new zzacs.zza[i];
    }
}
