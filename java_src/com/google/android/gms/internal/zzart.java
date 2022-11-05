package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzart implements Parcelable.Creator<zzars> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzars zzarsVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzarsVar.zzHT(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzarsVar.zzmY(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzarsVar.getDeveloperName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzarsVar.zzHU(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzarsVar.getPackageName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 7, zzarsVar.zzHV(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) zzarsVar.zzHW(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgE */
    public zzars createFromParcel(Parcel parcel) {
        zzaqw zzaqwVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList<String> arrayList = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        BitmapTeleporter bitmapTeleporter = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    bitmapTeleporter = (BitmapTeleporter) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, BitmapTeleporter.CREATOR);
                    break;
                case 3:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 8:
                    zzaqwVar = (zzaqw) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzaqw.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzars(bitmapTeleporter, str4, str3, str2, str, arrayList, zzaqwVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjZ */
    public zzars[] newArray(int i) {
        return new zzars[i];
    }
}
