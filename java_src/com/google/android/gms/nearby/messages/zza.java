package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzayd;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<Message> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Message message, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, message.getContent(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, message.getType(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, message.getNamespace(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable[]) message.zzbzz, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, message.zzOD());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, message.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziG */
    public Message createFromParcel(Parcel parcel) {
        zzayd[] zzaydVarArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j = 0;
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    zzaydVarArr = (zzayd[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zzayd.CREATOR);
                    break;
                case 5:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 1000:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Message(i, bArr, str2, str, zzaydVarArr, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmv */
    public Message[] newArray(int i) {
        return new Message[i];
    }
}
