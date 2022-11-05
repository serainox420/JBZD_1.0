package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.firebase.appindexing.internal.zza;
/* loaded from: classes2.dex */
public class e implements Parcelable.Creator<zza.C0498zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zza.C0498zza c0498zza, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, c0498zza.a());
        zzc.zza(parcel, 2, c0498zza.b());
        zzc.zza(parcel, 3, c0498zza.c(), false);
        zzc.zza(parcel, 4, c0498zza.d(), false);
        zzc.zza(parcel, 5, c0498zza.e(), false);
        zzc.zza(parcel, 6, c0498zza.f());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zza.C0498zza createFromParcel(Parcel parcel) {
        byte[] bArr = null;
        boolean z = false;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        boolean z2 = false;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    z2 = zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    bArr = zzb.zzt(parcel, zzaX);
                    break;
                case 6:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zza.C0498zza(i, z2, str2, str, bArr, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zza.C0498zza[] newArray(int i) {
        return new zza.C0498zza[i];
    }
}
