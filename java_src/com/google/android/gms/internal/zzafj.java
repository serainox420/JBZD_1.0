package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzafk;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzafj implements Parcelable.Creator<zzafk> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzafk zzafkVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzafkVar.zzaJK, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 3, zzafkVar.zzaJL, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzafkVar.zzaJM, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbA */
    public zzafk createFromParcel(Parcel parcel) {
        zzaga zzagaVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList<String> arrayList = null;
        ArrayList arrayList2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzafk.zza.CREATOR);
                    break;
                case 3:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 4:
                    zzagaVar = (zzaga) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzaga.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzafk(arrayList2, arrayList, zzagaVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdP */
    public zzafk[] newArray(int i) {
        return new zzafk[i];
    }
}
