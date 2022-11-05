package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<Asset> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Asset asset, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, asset.getData(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, asset.getDigest(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) asset.zzbSM, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) asset.uri, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkK */
    public Asset createFromParcel(Parcel parcel) {
        Uri uri;
        ParcelFileDescriptor parcelFileDescriptor;
        String str;
        byte[] bArr;
        Uri uri2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        String str2 = null;
        byte[] bArr2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    Uri uri3 = uri2;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    str = str2;
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    uri = uri3;
                    break;
                case 3:
                    bArr = bArr2;
                    ParcelFileDescriptor parcelFileDescriptor3 = parcelFileDescriptor2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    uri = uri2;
                    parcelFileDescriptor = parcelFileDescriptor3;
                    break;
                case 4:
                    str = str2;
                    bArr = bArr2;
                    Uri uri4 = uri2;
                    parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelFileDescriptor.CREATOR);
                    uri = uri4;
                    break;
                case 5:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Uri.CREATOR);
                    parcelFileDescriptor = parcelFileDescriptor2;
                    str = str2;
                    bArr = bArr2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    uri = uri2;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    str = str2;
                    bArr = bArr2;
                    break;
            }
            bArr2 = bArr;
            str2 = str;
            parcelFileDescriptor2 = parcelFileDescriptor;
            uri2 = uri;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Asset(bArr2, str2, parcelFileDescriptor2, uri2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpj */
    public Asset[] newArray(int i) {
        return new Asset[i];
    }
}
