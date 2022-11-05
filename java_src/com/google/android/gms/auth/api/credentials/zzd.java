package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<HintRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(HintRequest hintRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) hintRequest.getHintPickerConfig(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, hintRequest.isEmailAddressIdentifierSupported());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, hintRequest.zzqX());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, hintRequest.getAccountTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, hintRequest.isIdTokenRequested());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, hintRequest.getServerClientId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, hintRequest.getIdTokenNonce(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, hintRequest.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzN */
    public HintRequest createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        String[] strArr = null;
        boolean z2 = false;
        boolean z3 = false;
        CredentialPickerConfig credentialPickerConfig = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    credentialPickerConfig = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, CredentialPickerConfig.CREATOR);
                    break;
                case 2:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
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
        return new HintRequest(i, credentialPickerConfig, z3, z2, strArr, z, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbc */
    public HintRequest[] newArray(int i) {
        return new HintRequest[i];
    }
}
