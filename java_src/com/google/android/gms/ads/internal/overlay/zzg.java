package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzqh;
/* loaded from: classes2.dex */
public class zzg implements Parcelable.Creator<AdOverlayInfoParcel> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AdOverlayInfoParcel adOverlayInfoParcel, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) adOverlayInfoParcel.zzNE, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, adOverlayInfoParcel.zzhN(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, adOverlayInfoParcel.zzhO(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, adOverlayInfoParcel.zzhP(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, adOverlayInfoParcel.zzhQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, adOverlayInfoParcel.zzNJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, adOverlayInfoParcel.zzNK);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, adOverlayInfoParcel.zzNL, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, adOverlayInfoParcel.zzhS(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, adOverlayInfoParcel.orientation);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, adOverlayInfoParcel.zzNN);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, adOverlayInfoParcel.url, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, (Parcelable) adOverlayInfoParcel.zzvn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, adOverlayInfoParcel.zzhR(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 16, adOverlayInfoParcel.zzNP, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 17, (Parcelable) adOverlayInfoParcel.zzNQ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzN */
    public AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzl */
    public AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzc zzcVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        boolean z = false;
        String str2 = null;
        IBinder iBinder5 = null;
        int i = 0;
        int i2 = 0;
        String str3 = null;
        zzqh zzqhVar = null;
        IBinder iBinder6 = null;
        String str4 = null;
        com.google.android.gms.ads.internal.zzn zznVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    zzcVar = (zzc) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzc.CREATOR);
                    break;
                case 3:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 4:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 5:
                    iBinder3 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 6:
                    iBinder4 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 7:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    iBinder5 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 11:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 12:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 13:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 14:
                    zzqhVar = (zzqh) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzqh.CREATOR);
                    break;
                case 15:
                    iBinder6 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 16:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 17:
                    zznVar = (com.google.android.gms.ads.internal.zzn) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.ads.internal.zzn.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AdOverlayInfoParcel(zzcVar, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, zzqhVar, iBinder6, str4, zznVar);
    }
}
