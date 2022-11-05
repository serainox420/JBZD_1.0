package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzk implements Parcelable.Creator<zzj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzj zzjVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzjVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzjVar.zzbAM, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzjVar.zzbAN);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziR */
    public zzj createFromParcel(Parcel parcel) {
        int zzg;
        ClientAppContext clientAppContext;
        int i;
        int i2 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ClientAppContext clientAppContext2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    int i4 = i2;
                    clientAppContext = clientAppContext2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzg = i4;
                    break;
                case 2:
                    ClientAppContext clientAppContext3 = (ClientAppContext) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ClientAppContext.CREATOR);
                    i = i3;
                    zzg = i2;
                    clientAppContext = clientAppContext3;
                    break;
                case 3:
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    clientAppContext = clientAppContext2;
                    i = i3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzg = i2;
                    clientAppContext = clientAppContext2;
                    i = i3;
                    break;
            }
            i3 = i;
            clientAppContext2 = clientAppContext;
            i2 = zzg;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzj(i3, clientAppContext2, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmM */
    public zzj[] newArray(int i) {
        return new zzj[i];
    }
}
