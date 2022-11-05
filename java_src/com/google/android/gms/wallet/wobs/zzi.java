package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<zzf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzf zzfVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzfVar.label, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzfVar.zzbSy, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzfVar.type, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzfVar.zzbQF, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkF */
    public zzf createFromParcel(Parcel parcel) {
        zzl zzlVar;
        String str;
        zzg zzgVar;
        String str2;
        zzl zzlVar2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str3 = null;
        zzg zzgVar2 = null;
        String str4 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    zzl zzlVar3 = zzlVar2;
                    str = str3;
                    zzgVar = zzgVar2;
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    zzlVar = zzlVar3;
                    break;
                case 3:
                    str2 = str4;
                    String str5 = str3;
                    zzgVar = (zzg) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzg.CREATOR);
                    zzlVar = zzlVar2;
                    str = str5;
                    break;
                case 4:
                    zzgVar = zzgVar2;
                    str2 = str4;
                    zzl zzlVar4 = zzlVar2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    zzlVar = zzlVar4;
                    break;
                case 5:
                    zzlVar = (zzl) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzl.CREATOR);
                    str = str3;
                    zzgVar = zzgVar2;
                    str2 = str4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzlVar = zzlVar2;
                    str = str3;
                    zzgVar = zzgVar2;
                    str2 = str4;
                    break;
            }
            str4 = str2;
            zzgVar2 = zzgVar;
            str3 = str;
            zzlVar2 = zzlVar;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzf(str4, zzgVar2, str3, zzlVar2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpe */
    public zzf[] newArray(int i) {
        return new zzf[i];
    }
}
