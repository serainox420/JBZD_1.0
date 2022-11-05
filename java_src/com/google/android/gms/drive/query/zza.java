package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveSpace;
import com.google.android.gms.drive.query.internal.zzr;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<Query> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Query query, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) query.zzaPY, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, query.zzaPZ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) query.zzaQa, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 5, query.zzaQb, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, query.zzaQc);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, query.zzaLH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, query.zzaNO);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, query.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdo */
    public Query createFromParcel(Parcel parcel) {
        boolean z = false;
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z2 = false;
        ArrayList<String> arrayList2 = null;
        SortOrder sortOrder = null;
        String str = null;
        zzr zzrVar = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzrVar = (zzr) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzr.CREATOR);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    sortOrder = (SortOrder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, SortOrder.CREATOR);
                    break;
                case 5:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 6:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DriveSpace.CREATOR);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
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
        return new Query(i, zzrVar, str, sortOrder, arrayList2, z2, arrayList, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfO */
    public Query[] newArray(int i) {
        return new Query[i];
    }
}
