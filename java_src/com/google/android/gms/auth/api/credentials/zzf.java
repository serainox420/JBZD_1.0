package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzf implements Parcelable.Creator<PasswordSpecification> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PasswordSpecification passwordSpecification, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, passwordSpecification.zzajE, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 2, passwordSpecification.zzajF, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, passwordSpecification.zzajG, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, passwordSpecification.zzajH);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, passwordSpecification.zzajI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, passwordSpecification.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzP */
    public PasswordSpecification createFromParcel(Parcel parcel) {
        ArrayList<Integer> arrayList = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        ArrayList<String> arrayList2 = null;
        String str = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 3:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 1000:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PasswordSpecification(i3, str, arrayList2, arrayList, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbe */
    public PasswordSpecification[] newArray(int i) {
        return new PasswordSpecification[i];
    }
}
