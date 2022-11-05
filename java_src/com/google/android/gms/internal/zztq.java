package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zztq implements Parcelable.Creator<zztp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zztp zztpVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable[]) zztpVar.zzahb, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zztpVar.zzahc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zztpVar.zzahd);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zztpVar.account, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaJ */
    public zztp[] newArray(int i) {
        return new zztp[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzy */
    public zztp createFromParcel(Parcel parcel) {
        Account account;
        boolean z;
        String str;
        zztt[] zzttVarArr;
        Account account2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z2 = false;
        String str2 = null;
        zztt[] zzttVarArr2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    Account account3 = account2;
                    z = z2;
                    str = str2;
                    zzttVarArr = (zztt[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zztt.CREATOR);
                    account = account3;
                    break;
                case 2:
                    zzttVarArr = zzttVarArr2;
                    boolean z3 = z2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    account = account2;
                    z = z3;
                    break;
                case 3:
                    str = str2;
                    zzttVarArr = zzttVarArr2;
                    Account account4 = account2;
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    account = account4;
                    break;
                case 4:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Account.CREATOR);
                    z = z2;
                    str = str2;
                    zzttVarArr = zzttVarArr2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    account = account2;
                    z = z2;
                    str = str2;
                    zzttVarArr = zzttVarArr2;
                    break;
            }
            zzttVarArr2 = zzttVarArr;
            str2 = str;
            z2 = z;
            account2 = account;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zztp(zzttVarArr2, str2, z2, account2);
    }
}
