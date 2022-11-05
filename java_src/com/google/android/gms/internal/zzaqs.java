package com.google.android.gms.internal;

import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzaqs implements Parcelable.Creator<zzaqr> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaqr zzaqrVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaqrVar.getPackageName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaqrVar.getTitle(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzaqrVar.zzbij, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzaqrVar.getRoutes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzaqrVar.zzHp(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzaqrVar.zzHr());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzaqrVar.zzHs(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) zzaqrVar.zzHt(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, zzaqrVar.zzHq(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgv */
    public zzaqr createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        PackageInfo packageInfo = null;
        byte[] bArr = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        BitmapTeleporter bitmapTeleporter = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    bitmapTeleporter = (BitmapTeleporter) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, BitmapTeleporter.CREATOR);
                    break;
                case 5:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzarn.CREATOR);
                    break;
                case 6:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzaqt.CREATOR);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 9:
                    packageInfo = (PackageInfo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PackageInfo.CREATOR);
                    break;
                case 10:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzarq.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaqr(str2, str, bitmapTeleporter, arrayList3, arrayList2, i, bArr, packageInfo, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjN */
    public zzaqr[] newArray(int i) {
        return new zzaqr[i];
    }
}
