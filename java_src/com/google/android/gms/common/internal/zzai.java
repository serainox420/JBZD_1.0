package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzai implements Parcelable.Creator<zzah> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzah zzahVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzahVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzahVar.zzyk());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzahVar.zzyl());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable[]) zzahVar.zzym(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaV */
    public zzah createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Scope.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzah(i3, i2, i, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzda */
    public zzah[] newArray(int i) {
        return new zzah[i];
    }
}
