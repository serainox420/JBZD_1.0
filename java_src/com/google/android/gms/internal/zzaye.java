package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaye implements Parcelable.Creator<zzayd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzayd zzaydVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzaydVar.zzbAs, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaydVar.zzE, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaydVar.zzOL(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable[]) zzaydVar.zzbAu, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaydVar.zzbAv, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzaydVar.zzOM(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzaydVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziK */
    public zzayd createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String[] strArr = null;
        zzayh[] zzayhVarArr = null;
        String str2 = null;
        String str3 = null;
        zzayh zzayhVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzayhVar = (zzayh) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzayh.CREATOR);
                    break;
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    zzayhVarArr = (zzayh[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zzayh.CREATOR);
                    break;
                case 5:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 1000:
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
        return new zzayd(i, zzayhVar, str3, str2, zzayhVarArr, strArr, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmE */
    public zzayd[] newArray(int i) {
        return new zzayd[i];
    }
}
