package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<ClientAppContext> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ClientAppContext clientAppContext, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, clientAppContext.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, clientAppContext.zzbAH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, clientAppContext.zzbAI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, clientAppContext.zzbzJ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, clientAppContext.zzbAJ);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, clientAppContext.zzbzL, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziO */
    public ClientAppContext createFromParcel(Parcel parcel) {
        String str = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = false;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ClientAppContext(i2, str3, str2, z, i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmI */
    public ClientAppContext[] newArray(int i) {
        return new ClientAppContext[i];
    }
}
