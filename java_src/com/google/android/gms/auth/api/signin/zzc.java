package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<SignInAccount> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SignInAccount signInAccount, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, signInAccount.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, signInAccount.zzaka, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) signInAccount.zzro(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, signInAccount.zzadi, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzY */
    public SignInAccount createFromParcel(Parcel parcel) {
        String zzq;
        GoogleSignInAccount googleSignInAccount;
        String str;
        int i;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        String str2 = "";
        GoogleSignInAccount googleSignInAccount2 = null;
        String str3 = "";
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    String str4 = str3;
                    googleSignInAccount = googleSignInAccount2;
                    str = str2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzq = str4;
                    break;
                case 2:
                case 3:
                case 5:
                case 6:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str3;
                    googleSignInAccount = googleSignInAccount2;
                    str = str2;
                    i = i2;
                    break;
                case 4:
                    i = i2;
                    GoogleSignInAccount googleSignInAccount3 = googleSignInAccount2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    zzq = str3;
                    googleSignInAccount = googleSignInAccount3;
                    break;
                case 7:
                    str = str2;
                    i = i2;
                    String str5 = str3;
                    googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, GoogleSignInAccount.CREATOR);
                    zzq = str5;
                    break;
                case 8:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    googleSignInAccount = googleSignInAccount2;
                    str = str2;
                    i = i2;
                    break;
            }
            i2 = i;
            str2 = str;
            googleSignInAccount2 = googleSignInAccount;
            str3 = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new SignInAccount(i2, str2, googleSignInAccount2, str3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbn */
    public SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
