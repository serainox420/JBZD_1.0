package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<CredentialRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CredentialRequest credentialRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, credentialRequest.isPasswordLoginSupported());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, credentialRequest.getAccountTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) credentialRequest.getCredentialPickerConfig(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) credentialRequest.getCredentialHintPickerConfig(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, credentialRequest.isIdTokenRequested());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, credentialRequest.getServerClientId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, credentialRequest.getIdTokenNonce(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, credentialRequest.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzM */
    public CredentialRequest createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
        String[] strArr = null;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 2:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 3:
                    credentialPickerConfig2 = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, CredentialPickerConfig.CREATOR);
                    break;
                case 4:
                    credentialPickerConfig = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, CredentialPickerConfig.CREATOR);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
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
        return new CredentialRequest(i, z2, strArr, credentialPickerConfig2, credentialPickerConfig, z, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbb */
    public CredentialRequest[] newArray(int i) {
        return new CredentialRequest[i];
    }
}
