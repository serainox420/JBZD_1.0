package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<zzc> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzc zzcVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzcVar.zzAh(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable[]) zzcVar.zzbTy, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzcVar.zzbTz, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzcVar.zzbTA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkN */
    public zzc createFromParcel(Parcel parcel) {
        String zzq;
        String str;
        IntentFilter[] intentFilterArr;
        IBinder iBinder;
        String str2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str3 = null;
        IntentFilter[] intentFilterArr2 = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    String str4 = str2;
                    str = str3;
                    intentFilterArr = intentFilterArr2;
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    zzq = str4;
                    break;
                case 3:
                    iBinder = iBinder2;
                    String str5 = str3;
                    intentFilterArr = (IntentFilter[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, IntentFilter.CREATOR);
                    zzq = str2;
                    str = str5;
                    break;
                case 4:
                    intentFilterArr = intentFilterArr2;
                    iBinder = iBinder2;
                    String str6 = str2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    zzq = str6;
                    break;
                case 5:
                    zzq = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    str = str3;
                    intentFilterArr = intentFilterArr2;
                    iBinder = iBinder2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzq = str2;
                    str = str3;
                    intentFilterArr = intentFilterArr2;
                    iBinder = iBinder2;
                    break;
            }
            iBinder2 = iBinder;
            intentFilterArr2 = intentFilterArr;
            str3 = str;
            str2 = zzq;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzc(iBinder2, intentFilterArr2, str3, str2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpm */
    public zzc[] newArray(int i) {
        return new zzc[i];
    }
}
