package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Session;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzs implements Parcelable.Creator<SessionStopResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SessionStopResult sessionStopResult, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) sessionStopResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, sessionStopResult.getSessions(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, sessionStopResult.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfs */
    public SessionStopResult createFromParcel(Parcel parcel) {
        Status status;
        int zzg;
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Status status2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    Status status3 = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    zzg = i;
                    arrayList = arrayList2;
                    status = status3;
                    break;
                case 3:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, Session.CREATOR);
                    status = status2;
                    zzg = i;
                    break;
                case 1000:
                    ArrayList arrayList3 = arrayList2;
                    status = status2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    arrayList = arrayList3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    arrayList = arrayList2;
                    status = status2;
                    zzg = i;
                    break;
            }
            i = zzg;
            status2 = status;
            arrayList2 = arrayList;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new SessionStopResult(i, status2, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzif */
    public SessionStopResult[] newArray(int i) {
        return new SessionStopResult[i];
    }
}
