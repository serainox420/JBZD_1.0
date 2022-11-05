package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzv implements Parcelable.Creator<RawBucket> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(RawBucket rawBucket, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, rawBucket.zzafe);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, rawBucket.zzaSt);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) rawBucket.zzaSj, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, rawBucket.zzaUa);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, rawBucket.zzaSv, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, rawBucket.zzaSw);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, rawBucket.zzaSx);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, rawBucket.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeh */
    public RawBucket createFromParcel(Parcel parcel) {
        long j = 0;
        ArrayList arrayList = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        int i2 = 0;
        Session session = null;
        long j2 = 0;
        int i3 = 0;
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
                    session = (Session) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Session.CREATOR);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, RawDataSet.CREATOR);
                    break;
                case 6:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 1000:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new RawBucket(i3, j2, j, session, i2, arrayList, i, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgR */
    public RawBucket[] newArray(int i) {
        return new RawBucket[i];
    }
}
