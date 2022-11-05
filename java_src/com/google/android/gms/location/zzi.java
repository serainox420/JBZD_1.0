package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzasm;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<GeofencingRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GeofencingRequest geofencingRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, geofencingRequest.zzIf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, geofencingRequest.getInitialTrigger());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, geofencingRequest.getTag(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgK */
    public GeofencingRequest createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList = null;
        int i = 0;
        String str = "";
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzasm.CREATOR);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new GeofencingRequest(arrayList, i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzki */
    public GeofencingRequest[] newArray(int i) {
        return new GeofencingRequest[i];
    }
}
