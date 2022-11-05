package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<Strategy> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Strategy strategy, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, strategy.zzbzQ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, strategy.zzbzR);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, strategy.zzbzS);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, strategy.zzbzT);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, strategy.zzOJ());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, strategy.zzOc());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, strategy.zzOK());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, strategy.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziI */
    public Strategy createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 1000:
                    i7 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Strategy(i7, i6, i5, i4, z, i3, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmC */
    public Strategy[] newArray(int i) {
        return new Strategy[i];
    }
}
