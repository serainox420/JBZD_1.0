package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<Bucket> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Bucket bucket, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, bucket.zzqn());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, bucket.zzAm());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) bucket.getSession(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, bucket.zzBW());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, bucket.getDataSets(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, bucket.getBucketType());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, bucket.zzBX());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, bucket.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdU */
    public Bucket createFromParcel(Parcel parcel) {
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
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataSet.CREATOR);
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
        return new Bucket(i3, j2, j, session, i2, arrayList, i, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgx */
    public Bucket[] newArray(int i) {
        return new Bucket[i];
    }
}
