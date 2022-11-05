package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes.dex */
public class zzb implements Parcelable.Creator<CredentialPickerConfig> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CredentialPickerConfig credentialPickerConfig, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, credentialPickerConfig.shouldShowAddAccountButton());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, credentialPickerConfig.shouldShowCancelButton());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, credentialPickerConfig.isForNewAccount());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, credentialPickerConfig.zzqW());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, credentialPickerConfig.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzL */
    public CredentialPickerConfig createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 2:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new CredentialPickerConfig(i2, z3, z2, z, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzba */
    public CredentialPickerConfig[] newArray(int i) {
        return new CredentialPickerConfig[i];
    }
}
