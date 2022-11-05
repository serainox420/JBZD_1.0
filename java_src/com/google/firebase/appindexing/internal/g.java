package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class g implements Parcelable.Creator<zzq> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzq zzqVar, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, zzqVar.a(), false);
        zzc.zza(parcel, 2, zzqVar.b(), false);
        zzc.zza(parcel, 3, zzqVar.c(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzq createFromParcel(Parcel parcel) {
        String[] strArr = null;
        int zzaY = zzb.zzaY(parcel);
        String[] strArr2 = null;
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    strArr2 = zzb.zzC(parcel, zzaX);
                    break;
                case 3:
                    strArr = zzb.zzC(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzq(str, strArr2, strArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzq[] newArray(int i) {
        return new zzq[i];
    }
}
