package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<ApplicationMetadata> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ApplicationMetadata applicationMetadata, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, applicationMetadata.getApplicationId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, applicationMetadata.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, applicationMetadata.getImages(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 5, applicationMetadata.getSupportedNamespaces(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, applicationMetadata.getSenderAppIdentifier(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) applicationMetadata.zzsg(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaq */
    public ApplicationMetadata createFromParcel(Parcel parcel) {
        Uri uri = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        ArrayList<String> arrayList = null;
        ArrayList arrayList2 = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, WebImage.CREATOR);
                    break;
                case 5:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ApplicationMetadata(str3, str2, arrayList2, arrayList, str, uri);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbJ */
    public ApplicationMetadata[] newArray(int i) {
        return new ApplicationMetadata[i];
    }
}
