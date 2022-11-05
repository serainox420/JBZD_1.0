package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Session;
/* loaded from: classes2.dex */
public class zzbe implements Parcelable.Creator<zzbd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbd zzbdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzbdVar.getSession(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzbdVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzbdVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeW */
    public zzbd createFromParcel(Parcel parcel) {
        Session session;
        int zzg;
        IBinder iBinder;
        IBinder iBinder2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Session session2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    Session session3 = (Session) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Session.CREATOR);
                    zzg = i;
                    iBinder = iBinder2;
                    session = session3;
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    session = session2;
                    zzg = i;
                    break;
                case 1000:
                    IBinder iBinder3 = iBinder2;
                    session = session2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder = iBinder3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    iBinder = iBinder2;
                    session = session2;
                    zzg = i;
                    break;
            }
            i = zzg;
            session2 = session;
            iBinder2 = iBinder;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbd(i, session2, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhJ */
    public zzbd[] newArray(int i) {
        return new zzbd[i];
    }
}
