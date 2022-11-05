package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<Credential> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Credential credential, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, credential.getId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, credential.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) credential.getProfilePictureUri(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, credential.getIdTokens(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, credential.getPassword(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, credential.getAccountType(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, credential.getGeneratedPassword(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, credential.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, credential.zzqV(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, credential.getGivenName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, credential.getFamilyName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzK */
    public Credential createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList = null;
        Uri uri = null;
        String str7 = null;
        String str8 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, IdToken.CREATOR);
                    break;
                case 5:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 1000:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Credential(i, str8, str7, uri, arrayList, str6, str5, str4, str3, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaZ */
    public Credential[] newArray(int i) {
        return new Credential[i];
    }
}
