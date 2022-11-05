package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class j implements Parcelable.Creator<UserProfileChangeRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(UserProfileChangeRequest userProfileChangeRequest, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, userProfileChangeRequest.f3538a);
        zzc.zza(parcel, 2, userProfileChangeRequest.a(), false);
        zzc.zza(parcel, 3, userProfileChangeRequest.b(), false);
        zzc.zza(parcel, 4, userProfileChangeRequest.c());
        zzc.zza(parcel, 5, userProfileChangeRequest.d());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public UserProfileChangeRequest createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaY = zzb.zzaY(parcel);
        boolean z2 = false;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    z2 = zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new UserProfileChangeRequest(i, str2, str, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public UserProfileChangeRequest[] newArray(int i) {
        return new UserProfileChangeRequest[i];
    }
}
