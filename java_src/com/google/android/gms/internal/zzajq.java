package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
/* loaded from: classes2.dex */
public class zzajq implements Parcelable.Creator<zzajp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzajp zzajpVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzajpVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzajpVar.zzaHE);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzajpVar.zzaOi, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzajpVar.zzaOj, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzajpVar.zzaOk, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) zzajpVar.zzaOl, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) zzajpVar.zzaOm, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) zzajpVar.zzaOn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcI */
    public zzajp createFromParcel(Parcel parcel) {
        int i = 0;
        com.google.android.gms.drive.events.zzn zznVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        com.google.android.gms.drive.events.zzr zzrVar = null;
        com.google.android.gms.drive.events.zzb zzbVar = null;
        com.google.android.gms.drive.events.zzk zzkVar = null;
        CompletionEvent completionEvent = null;
        ChangeEvent changeEvent = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    changeEvent = (ChangeEvent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ChangeEvent.CREATOR);
                    break;
                case 4:
                case 8:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 5:
                    completionEvent = (CompletionEvent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, CompletionEvent.CREATOR);
                    break;
                case 6:
                    zzkVar = (com.google.android.gms.drive.events.zzk) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.events.zzk.CREATOR);
                    break;
                case 7:
                    zzbVar = (com.google.android.gms.drive.events.zzb) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.events.zzb.CREATOR);
                    break;
                case 9:
                    zzrVar = (com.google.android.gms.drive.events.zzr) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.events.zzr.CREATOR);
                    break;
                case 10:
                    zznVar = (com.google.android.gms.drive.events.zzn) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.events.zzn.CREATOR);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzajp(i2, i, changeEvent, completionEvent, zzkVar, zzbVar, zzrVar, zznVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfi */
    public zzajp[] newArray(int i) {
        return new zzajp[i];
    }
}
