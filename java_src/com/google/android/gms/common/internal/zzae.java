package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzae implements Parcelable.Creator<zzad> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzad zzadVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzadVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzadVar.getAccount(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzadVar.getSessionId());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzadVar.zzyf(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaT */
    public zzad createFromParcel(Parcel parcel) {
        GoogleSignInAccount googleSignInAccount;
        int i;
        Account account;
        int i2;
        GoogleSignInAccount googleSignInAccount2 = null;
        int i3 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        Account account2 = null;
        int i4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    GoogleSignInAccount googleSignInAccount3 = googleSignInAccount2;
                    i = i3;
                    account = account2;
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    googleSignInAccount = googleSignInAccount3;
                    break;
                case 2:
                    i2 = i4;
                    int i5 = i3;
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Account.CREATOR);
                    googleSignInAccount = googleSignInAccount2;
                    i = i5;
                    break;
                case 3:
                    account = account2;
                    i2 = i4;
                    GoogleSignInAccount googleSignInAccount4 = googleSignInAccount2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    googleSignInAccount = googleSignInAccount4;
                    break;
                case 4:
                    googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, GoogleSignInAccount.CREATOR);
                    i = i3;
                    account = account2;
                    i2 = i4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    googleSignInAccount = googleSignInAccount2;
                    i = i3;
                    account = account2;
                    i2 = i4;
                    break;
            }
            i4 = i2;
            account2 = account;
            i3 = i;
            googleSignInAccount2 = googleSignInAccount;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzad(i4, account2, i3, googleSignInAccount2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcY */
    public zzad[] newArray(int i) {
        return new zzad[i];
    }
}
