package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class c implements Parcelable.Creator<zzi> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzi zziVar, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) zziVar.getStatus(), i, false);
        zzc.zza(parcel, 2, (Parcelable) zziVar.a(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzi createFromParcel(Parcel parcel) {
        Thing thing;
        Status status;
        Thing thing2 = null;
        int zzaY = zzb.zzaY(parcel);
        Status status2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    Thing thing3 = thing2;
                    status = (Status) zzb.zza(parcel, zzaX, Status.CREATOR);
                    thing = thing3;
                    break;
                case 2:
                    thing = (Thing) zzb.zza(parcel, zzaX, Thing.CREATOR);
                    status = status2;
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    thing = thing2;
                    status = status2;
                    break;
            }
            status2 = status;
            thing2 = thing;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzi(status2, thing2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzi[] newArray(int i) {
        return new zzi[i];
    }
}
