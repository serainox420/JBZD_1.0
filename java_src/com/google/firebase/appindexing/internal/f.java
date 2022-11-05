package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.firebase.appindexing.internal.Thing;
/* loaded from: classes2.dex */
public class f implements Parcelable.Creator<Thing> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Thing thing, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, thing.b(), false);
        zzc.zza(parcel, 2, (Parcelable) thing.c(), i, false);
        zzc.zza(parcel, 3, thing.d(), false);
        zzc.zza(parcel, 4, thing.e(), false);
        zzc.zzc(parcel, 1000, thing.a());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public Thing createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        String str2 = null;
        Thing.zza zzaVar = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 2:
                    zzaVar = (Thing.zza) zzb.zza(parcel, zzaX, Thing.zza.CREATOR);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 1000:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Thing(i, bundle, zzaVar, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public Thing[] newArray(int i) {
        return new Thing[i];
    }
}
