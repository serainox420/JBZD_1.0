package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Subscription;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzo implements Parcelable.Creator<ListSubscriptionsResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ListSubscriptionsResult listSubscriptionsResult, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, listSubscriptionsResult.getSubscriptions(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) listSubscriptionsResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, listSubscriptionsResult.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfp */
    public ListSubscriptionsResult createFromParcel(Parcel parcel) {
        Status status = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, Subscription.CREATOR);
                    break;
                case 2:
                    status = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
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
        return new ListSubscriptionsResult(i, arrayList, status);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzic */
    public ListSubscriptionsResult[] newArray(int i) {
        return new ListSubscriptionsResult[i];
    }
}
