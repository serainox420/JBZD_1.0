package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzari implements Parcelable.Creator<zzarh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzarh zzarhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzarhVar.zzHI());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzarhVar.getAccountName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable[]) zzarhVar.zzHJ(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgz */
    public zzarh createFromParcel(Parcel parcel) {
        Account[] accountArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    accountArr = (Account[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Account.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzarh(i, str, accountArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjT */
    public zzarh[] newArray(int i) {
        return new zzarh[i];
    }
}
