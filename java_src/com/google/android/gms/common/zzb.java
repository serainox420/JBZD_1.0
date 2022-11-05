package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<ConnectionResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ConnectionResult connectionResult, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, connectionResult.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, connectionResult.getErrorCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) connectionResult.getResolution(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, connectionResult.getErrorMessage(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaJ */
    public ConnectionResult createFromParcel(Parcel parcel) {
        String zzq;
        PendingIntent pendingIntent;
        int i;
        int i2;
        String str = null;
        int i3 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        PendingIntent pendingIntent2 = null;
        int i4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    String str2 = str;
                    pendingIntent = pendingIntent2;
                    i = i3;
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzq = str2;
                    break;
                case 2:
                    i2 = i4;
                    PendingIntent pendingIntent3 = pendingIntent2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzq = str;
                    pendingIntent = pendingIntent3;
                    break;
                case 3:
                    i = i3;
                    i2 = i4;
                    String str3 = str;
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    zzq = str3;
                    break;
                case 4:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    pendingIntent = pendingIntent2;
                    i = i3;
                    i2 = i4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str;
                    pendingIntent = pendingIntent2;
                    i = i3;
                    i2 = i4;
                    break;
            }
            i4 = i2;
            i3 = i;
            pendingIntent2 = pendingIntent;
            str = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ConnectionResult(i4, i3, pendingIntent2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcu */
    public ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}
