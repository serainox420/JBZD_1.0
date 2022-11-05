package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzayd;
import com.google.android.gms.nearby.messages.Message;
/* loaded from: classes2.dex */
public class zzaj implements Parcelable.Creator<Update> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Update update, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, update.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, update.zzbBl);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) update.zzbAO, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) update.zzbBm, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) update.zzbBn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) update.zzbBo, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziZ */
    public Update createFromParcel(Parcel parcel) {
        int i = 0;
        zzayd zzaydVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zza zzaVar = null;
        zze zzeVar = null;
        Message message = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    message = (Message) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Message.CREATOR);
                    break;
                case 4:
                    zzeVar = (zze) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zze.CREATOR);
                    break;
                case 5:
                    zzaVar = (zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zza.CREATOR);
                    break;
                case 6:
                    zzaydVar = (zzayd) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzayd.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Update(i2, i, message, zzeVar, zzaVar, zzaydVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmW */
    public Update[] newArray(int i) {
        return new Update[i];
    }
}
