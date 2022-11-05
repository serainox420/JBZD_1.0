package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.firebase.appindexing.internal.zza;
/* loaded from: classes2.dex */
public class a implements Parcelable.Creator<zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zza zzaVar, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, zzaVar.a(), false);
        zzc.zza(parcel, 2, zzaVar.b(), false);
        zzc.zza(parcel, 3, zzaVar.c(), false);
        zzc.zza(parcel, 4, zzaVar.d(), false);
        zzc.zza(parcel, 5, (Parcelable) zzaVar.e(), i, false);
        zzc.zza(parcel, 6, zzaVar.f(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zza createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = zzb.zzaY(parcel);
        zza.C0498zza c0498zza = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    c0498zza = (zza.C0498zza) zzb.zza(parcel, zzaX, zza.C0498zza.CREATOR);
                    break;
                case 6:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zza(str5, str4, str3, str2, c0498zza, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zza[] newArray(int i) {
        return new zza[i];
    }
}
