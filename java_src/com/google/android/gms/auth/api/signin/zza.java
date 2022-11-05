package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<GoogleSignInAccount> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GoogleSignInAccount googleSignInAccount, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, googleSignInAccount.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, googleSignInAccount.getId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, googleSignInAccount.getIdToken(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, googleSignInAccount.getEmail(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, googleSignInAccount.getDisplayName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) googleSignInAccount.getPhotoUrl(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, googleSignInAccount.getServerAuthCode(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, googleSignInAccount.zzre());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, googleSignInAccount.zzrf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, googleSignInAccount.zzaiN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, googleSignInAccount.getGivenName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, googleSignInAccount.getFamilyName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzW */
    public GoogleSignInAccount createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        long j = 0;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 7:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 9:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, Scope.CREATOR);
                    break;
                case 11:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 12:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbl */
    public GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
