package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<UserAddressRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(UserAddressRequest userAddressRequest, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 2, userAddressRequest.zzbhs, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgp */
    public UserAddressRequest createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 2:
                    arrayList = zzb.zzc(parcel, zzaX, CountrySpecification.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new UserAddressRequest(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjH */
    public UserAddressRequest[] newArray(int i) {
        return new UserAddressRequest[i];
    }
}
