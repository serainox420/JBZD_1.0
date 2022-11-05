package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class k implements Parcelable.Creator<zzn> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzn zznVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zznVar.f3573a);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 2, zznVar.b, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 3, zznVar.c, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzn createFromParcel(Parcel parcel) {
        ArrayList<String> arrayList = null;
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        ArrayList<String> arrayList2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    arrayList2 = zzb.zzE(parcel, zzaX);
                    break;
                case 3:
                    arrayList = zzb.zzE(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzn(i, arrayList2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzn[] newArray(int i) {
        return new zzn[i];
    }
}
