package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zztx;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zztz implements Parcelable.Creator<zztx.zzb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zztx.zzb zzbVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzbVar.zzahw, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzbVar.zzahx, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzbVar.zzahy, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzD */
    public zztx.zzb createFromParcel(Parcel parcel) {
        String[] zzC;
        ArrayList arrayList;
        Status status;
        String[] strArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList2 = null;
        Status status2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    String[] strArr2 = strArr;
                    arrayList = arrayList2;
                    status = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    zzC = strArr2;
                    break;
                case 2:
                    ArrayList zzc = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzud.CREATOR);
                    status = status2;
                    zzC = strArr;
                    arrayList = zzc;
                    break;
                case 3:
                    zzC = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    arrayList = arrayList2;
                    status = status2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzC = strArr;
                    arrayList = arrayList2;
                    status = status2;
                    break;
            }
            status2 = status;
            arrayList2 = arrayList;
            strArr = zzC;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zztx.zzb(status2, arrayList2, strArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaO */
    public zztx.zzb[] newArray(int i) {
        return new zztx.zzb[i];
    }
}
