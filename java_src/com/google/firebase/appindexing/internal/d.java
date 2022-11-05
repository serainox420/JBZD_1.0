package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.firebase.appindexing.internal.Thing;
/* loaded from: classes2.dex */
public class d implements Parcelable.Creator<Thing.zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Thing.zza zzaVar, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, zzaVar.a());
        zzc.zzc(parcel, 2, zzaVar.b());
        zzc.zza(parcel, 3, zzaVar.c(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public Thing.zza createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        boolean z = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                case 2:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
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
        return new Thing.zza(z, i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public Thing.zza[] newArray(int i) {
        return new Thing.zza[i];
    }
}
