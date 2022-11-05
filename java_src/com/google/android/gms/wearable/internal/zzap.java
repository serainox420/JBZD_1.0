package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzap implements Parcelable.Creator<zzao> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzao zzaoVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzaoVar.getUri(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaoVar.zzUg(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaoVar.getData(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkY */
    public zzao createFromParcel(Parcel parcel) {
        byte[] zzt;
        Bundle bundle;
        Uri uri;
        byte[] bArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        Bundle bundle2 = null;
        Uri uri2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    byte[] bArr2 = bArr;
                    bundle = bundle2;
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Uri.CREATOR);
                    zzt = bArr2;
                    break;
                case 3:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzt = bArr;
                    bundle = bundle2;
                    uri = uri2;
                    break;
                case 4:
                    Bundle zzs = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    uri = uri2;
                    zzt = bArr;
                    bundle = zzs;
                    break;
                case 5:
                    zzt = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    bundle = bundle2;
                    uri = uri2;
                    break;
            }
            uri2 = uri;
            bundle2 = bundle;
            bArr = zzt;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzao(uri2, bundle2, bArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpA */
    public zzao[] newArray(int i) {
        return new zzao[i];
    }
}
