package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zztu implements Parcelable.Creator<zztt> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zztt zzttVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzttVar.zzahm, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzttVar.zzahn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzttVar.zzaho);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzttVar.zzahp, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzA */
    public zztt createFromParcel(Parcel parcel) {
        byte[] zzt;
        int i;
        zzub zzubVar;
        String str;
        byte[] bArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = -1;
        zzub zzubVar2 = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    byte[] bArr2 = bArr;
                    i = i2;
                    zzubVar = zzubVar2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    zzt = bArr2;
                    break;
                case 2:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzt = bArr;
                    i = i2;
                    zzubVar = zzubVar2;
                    str = str2;
                    break;
                case 3:
                    str = str2;
                    int i3 = i2;
                    zzubVar = (zzub) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzub.CREATOR);
                    zzt = bArr;
                    i = i3;
                    break;
                case 4:
                    zzubVar = zzubVar2;
                    str = str2;
                    byte[] bArr3 = bArr;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzt = bArr3;
                    break;
                case 5:
                    zzt = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    i = i2;
                    zzubVar = zzubVar2;
                    str = str2;
                    break;
            }
            str2 = str;
            zzubVar2 = zzubVar;
            i2 = i;
            bArr = zzt;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zztt(str2, zzubVar2, i2, bArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaL */
    public zztt[] newArray(int i) {
        return new zztt[i];
    }
}
