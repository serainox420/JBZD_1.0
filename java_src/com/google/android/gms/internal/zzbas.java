package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzbas implements Parcelable.Creator<zzbar> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbar zzbarVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbarVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzbarVar.getAccount(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable[]) zzbarVar.zzPR(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzbarVar.getServerClientId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjw */
    public zzbar createFromParcel(Parcel parcel) {
        String zzq;
        Scope[] scopeArr;
        Account account;
        int i;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        Scope[] scopeArr2 = null;
        Account account2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    String str2 = str;
                    scopeArr = scopeArr2;
                    account = account2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzq = str2;
                    break;
                case 2:
                    i = i2;
                    Scope[] scopeArr3 = scopeArr2;
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Account.CREATOR);
                    zzq = str;
                    scopeArr = scopeArr3;
                    break;
                case 3:
                    account = account2;
                    i = i2;
                    String str3 = str;
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Scope.CREATOR);
                    zzq = str3;
                    break;
                case 4:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    scopeArr = scopeArr2;
                    account = account2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str;
                    scopeArr = scopeArr2;
                    account = account2;
                    i = i2;
                    break;
            }
            i2 = i;
            account2 = account;
            scopeArr2 = scopeArr;
            str = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbar(i2, account2, scopeArr2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznw */
    public zzbar[] newArray(int i) {
        return new zzbar[i];
    }
}
