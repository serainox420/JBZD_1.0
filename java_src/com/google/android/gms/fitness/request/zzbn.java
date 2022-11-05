package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Subscription;
/* loaded from: classes2.dex */
public class zzbn implements Parcelable.Creator<zzbm> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbm zzbmVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzbmVar.zzDn(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzbmVar.zzDo());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzbmVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzbmVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfb */
    public zzbm createFromParcel(Parcel parcel) {
        boolean z;
        Subscription subscription;
        int zzg;
        IBinder iBinder;
        IBinder iBinder2 = null;
        boolean z2 = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        Subscription subscription2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzg = i;
                    boolean z3 = z2;
                    subscription = (Subscription) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Subscription.CREATOR);
                    iBinder = iBinder2;
                    z = z3;
                    break;
                case 2:
                    subscription = subscription2;
                    zzg = i;
                    IBinder iBinder3 = iBinder2;
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    iBinder = iBinder3;
                    break;
                case 3:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    z = z2;
                    subscription = subscription2;
                    zzg = i;
                    break;
                case 1000:
                    IBinder iBinder4 = iBinder2;
                    z = z2;
                    subscription = subscription2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder = iBinder4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    iBinder = iBinder2;
                    z = z2;
                    subscription = subscription2;
                    zzg = i;
                    break;
            }
            i = zzg;
            subscription2 = subscription;
            z2 = z;
            iBinder2 = iBinder;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbm(i, subscription2, z2, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhO */
    public zzbm[] newArray(int i) {
        return new zzbm[i];
    }
}
