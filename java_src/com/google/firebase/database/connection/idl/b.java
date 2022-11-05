package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class b implements Parcelable.Creator<zzc> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzc zzcVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzcVar.f3570a);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzcVar.b, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzcVar.c);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 4, zzcVar.d, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzcVar.e);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzcVar.f, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzcVar.g, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzc createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = zzb.zzaY(parcel);
        String str2 = null;
        ArrayList<String> arrayList = null;
        int i = 0;
        zzf zzfVar = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    zzfVar = (zzf) zzb.zza(parcel, zzaX, zzf.CREATOR);
                    break;
                case 3:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    arrayList = zzb.zzE(parcel, zzaX);
                    break;
                case 5:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzc(i2, zzfVar, i, arrayList, z, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzc[] newArray(int i) {
        return new zzc[i];
    }
}
