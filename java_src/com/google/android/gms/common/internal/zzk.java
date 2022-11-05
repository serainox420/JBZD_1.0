package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzk implements Parcelable.Creator<zzj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzj zzjVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzjVar.version);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzjVar.zzaFK);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzjVar.zzaFL);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzjVar.zzaFM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzjVar.zzaFN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable[]) zzjVar.zzaFO, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzjVar.zzaFP, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) zzjVar.zzaFQ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable[]) zzjVar.zzaFR, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaS */
    public zzj createFromParcel(Parcel parcel) {
        int i = 0;
        com.google.android.gms.common.zzc[] zzcVarArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        Account account = null;
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        String str = null;
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
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 6:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Scope.CREATOR);
                    break;
                case 7:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 8:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Account.CREATOR);
                    break;
                case 9:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 10:
                    zzcVarArr = (com.google.android.gms.common.zzc[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, com.google.android.gms.common.zzc.CREATOR);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzj(i3, i2, i, str, iBinder, scopeArr, bundle, account, zzcVarArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcU */
    public zzj[] newArray(int i) {
        return new zzj[i];
    }
}
