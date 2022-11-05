package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class d implements Parcelable.Creator<zzf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzf zzfVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzfVar.f3572a);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzfVar.b, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzfVar.c, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzfVar.d);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzf createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaY = zzb.zzaY(parcel);
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzf(i, str2, str, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzf[] newArray(int i) {
        return new zzf[i];
    }
}
