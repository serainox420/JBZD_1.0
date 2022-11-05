package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<GoogleSignInOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GoogleSignInOptions googleSignInOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, googleSignInOptions.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, googleSignInOptions.zzrj(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) googleSignInOptions.getAccount(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, googleSignInOptions.isIdTokenRequested());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, googleSignInOptions.zzrk());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, googleSignInOptions.zzrl());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, googleSignInOptions.getServerClientId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, googleSignInOptions.zzrm(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, googleSignInOptions.zzrn(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzX */
    public GoogleSignInOptions createFromParcel(Parcel parcel) {
        boolean z = false;
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        boolean z2 = false;
        boolean z3 = false;
        Account account = null;
        ArrayList arrayList2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Account.CREATOR);
                    break;
                case 4:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzg.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new GoogleSignInOptions(i, arrayList2, account, z3, z2, z, str2, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbm */
    public GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
