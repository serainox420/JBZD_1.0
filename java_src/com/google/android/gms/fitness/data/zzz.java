package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzz implements Parcelable.Creator<Session> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Session session, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, session.zzqn());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, session.zzAm());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, session.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, session.getIdentifier(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, session.getDescription(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, session.zzBW());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, session.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) session.zzCi(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, session.zzCy(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzel */
    public Session createFromParcel(Parcel parcel) {
        long j = 0;
        int i = 0;
        Long l = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        zzb zzbVar = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        long j2 = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    zzbVar = (zzb) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzb.CREATOR);
                    break;
                case 9:
                    l = com.google.android.gms.common.internal.safeparcel.zzb.zzj(parcel, zzaX);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Session(i2, j2, j, str3, str2, str, i, zzbVar, l);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgW */
    public Session[] newArray(int i) {
        return new Session[i];
    }
}
