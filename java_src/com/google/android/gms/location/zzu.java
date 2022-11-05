package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzu implements Parcelable.Creator<zzt> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzt zztVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 1, zztVar.zzIm(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zztVar.zzvu(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zztVar.getTag(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgS */
    public zzt createFromParcel(Parcel parcel) {
        String zzq;
        PendingIntent pendingIntent;
        ArrayList<String> arrayList;
        PendingIntent pendingIntent2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = "";
        ArrayList<String> arrayList2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    String str2 = str;
                    pendingIntent = pendingIntent2;
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    zzq = str2;
                    break;
                case 2:
                    PendingIntent pendingIntent3 = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    arrayList = arrayList2;
                    zzq = str;
                    pendingIntent = pendingIntent3;
                    break;
                case 3:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    pendingIntent = pendingIntent2;
                    arrayList = arrayList2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str;
                    pendingIntent = pendingIntent2;
                    arrayList = arrayList2;
                    break;
            }
            arrayList2 = arrayList;
            pendingIntent2 = pendingIntent;
            str = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzt(arrayList2, pendingIntent2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzku */
    public zzt[] newArray(int i) {
        return new zzt[i];
    }
}
