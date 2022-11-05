package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaro implements Parcelable.Creator<zzarn> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzarn zzarnVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzarnVar.zzHO(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzarnVar.getPort());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzarnVar.getPath(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzarnVar.zzHP(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzarnVar.zzHQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzarnVar.zzHu(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzarnVar.zzHS(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzarnVar.zzHR(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgC */
    public zzarn createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzarn(str7, i, str6, str5, str4, str3, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjX */
    public zzarn[] newArray(int i) {
        return new zzarn[i];
    }
}
