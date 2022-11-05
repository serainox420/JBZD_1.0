package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzm implements Parcelable.Creator<SignInConfiguration> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SignInConfiguration signInConfiguration, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, signInConfiguration.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, signInConfiguration.zzry(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) signInConfiguration.zzrz(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaa */
    public SignInConfiguration createFromParcel(Parcel parcel) {
        GoogleSignInOptions googleSignInOptions = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
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
                case 4:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 5:
                    googleSignInOptions = (GoogleSignInOptions) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, GoogleSignInOptions.CREATOR);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new SignInConfiguration(i, str, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbp */
    public SignInConfiguration[] newArray(int i) {
        return new SignInConfiguration[i];
    }
}
