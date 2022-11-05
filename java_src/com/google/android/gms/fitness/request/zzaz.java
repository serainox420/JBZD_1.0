package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.Session;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzaz implements Parcelable.Creator<SessionInsertRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SessionInsertRequest sessionInsertRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) sessionInsertRequest.getSession(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, sessionInsertRequest.getDataSets(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, sessionInsertRequest.getAggregateDataPoints(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, sessionInsertRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, sessionInsertRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeT */
    public SessionInsertRequest createFromParcel(Parcel parcel) {
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        Session session = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    session = (Session) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Session.CREATOR);
                    break;
                case 2:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataSet.CREATOR);
                    break;
                case 3:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataPoint.CREATOR);
                    break;
                case 4:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 1000:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new SessionInsertRequest(i, session, arrayList2, arrayList, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhG */
    public SessionInsertRequest[] newArray(int i) {
        return new SessionInsertRequest[i];
    }
}
