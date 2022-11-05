package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzast implements Parcelable.Creator<zzass> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzass zzassVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzassVar.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzassVar.zzJg(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzassVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhs */
    public zzass createFromParcel(Parcel parcel) {
        Status status;
        int zzg;
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Status status2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    Status status3 = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    zzg = i;
                    arrayList = arrayList2;
                    status = status3;
                    break;
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzasq.CREATOR);
                    status = status2;
                    zzg = i;
                    break;
                case 1000:
                    ArrayList arrayList3 = arrayList2;
                    status = status2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    arrayList = arrayList3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    arrayList = arrayList2;
                    status = status2;
                    zzg = i;
                    break;
            }
            i = zzg;
            status2 = status;
            arrayList2 = arrayList;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzass(i, status2, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkZ */
    public zzass[] newArray(int i) {
        return new zzass[i];
    }
}
