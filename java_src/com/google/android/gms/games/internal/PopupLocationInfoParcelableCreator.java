package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class PopupLocationInfoParcelableCreator implements Parcelable.Creator<PopupLocationInfoParcelable> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PopupLocationInfoParcelable popupLocationInfoParcelable, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, popupLocationInfoParcelable.zzFA(), false);
        zzc.zza(parcel, 2, popupLocationInfoParcelable.getWindowToken(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfJ */
    public PopupLocationInfoParcelable createFromParcel(Parcel parcel) {
        IBinder iBinder = null;
        int zzaY = zzb.zzaY(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 2:
                    iBinder = zzb.zzr(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PopupLocationInfoParcelable(bundle, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziJ */
    public PopupLocationInfoParcelable[] newArray(int i) {
        return new PopupLocationInfoParcelable[i];
    }
}
