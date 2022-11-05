package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class f implements Parcelable.Creator<RemoteMessage> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(RemoteMessage remoteMessage, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, remoteMessage.f3596a, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public RemoteMessage createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new RemoteMessage(bundle);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public RemoteMessage[] newArray(int i) {
        return new RemoteMessage[i];
    }
}
