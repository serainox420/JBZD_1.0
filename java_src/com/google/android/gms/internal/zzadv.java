package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzadv implements Parcelable.Creator<zzadu> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzadu zzaduVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaduVar.getPackageName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaduVar.zzzG());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzaduVar.zzzH(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaduVar.zzzI(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzaduVar.getAppInstanceId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzaduVar.zzzJ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 8, zzaduVar.zzzK(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, zzaduVar.zzzA());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, zzaduVar.zzzL(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, zzaduVar.zzzB());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, zzaduVar.zzzC());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbn */
    public zzadu createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        long j = 0;
        DataHolder dataHolder = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        ArrayList<String> arrayList = null;
        int i = 0;
        ArrayList arrayList2 = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    dataHolder = (DataHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataHolder.CREATOR);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 9:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzadk.CREATOR);
                    break;
                case 11:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 12:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzadu(str, j, dataHolder, str2, str3, str4, arrayList, i, arrayList2, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdz */
    public zzadu[] newArray(int i) {
        return new zzadu[i];
    }
}
