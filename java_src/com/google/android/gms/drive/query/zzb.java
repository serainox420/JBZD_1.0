package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.query.internal.zzf;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<SortOrder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SortOrder sortOrder, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, sortOrder.zzaQg, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, sortOrder.zzaQh);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, sortOrder.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdp */
    public SortOrder createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzf.CREATOR);
                    break;
                case 2:
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
        return new SortOrder(i, arrayList, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfP */
    public SortOrder[] newArray(int i) {
        return new SortOrder[i];
    }
}
