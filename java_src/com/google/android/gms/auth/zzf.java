package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzf implements Parcelable.Creator<TokenData> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(TokenData tokenData, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, tokenData.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, tokenData.getToken(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, tokenData.zzqO(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, tokenData.zzqP());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, tokenData.zzqQ());
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 6, tokenData.zzqR(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzJ */
    public TokenData createFromParcel(Parcel parcel) {
        ArrayList<String> arrayList = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z2 = false;
        Long l = null;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    l = com.google.android.gms.common.internal.safeparcel.zzb.zzj(parcel, zzaX);
                    break;
                case 4:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new TokenData(i, str, l, z2, z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaY */
    public TokenData[] newArray(int i) {
        return new TokenData[i];
    }
}
