package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<CastMediaOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CastMediaOptions castMediaOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, castMediaOptions.getMediaIntentReceiverClassName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, castMediaOptions.getExpandedControllerActivityClassName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, castMediaOptions.zzto(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) castMediaOptions.getNotificationOptions(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaC */
    public CastMediaOptions createFromParcel(Parcel parcel) {
        NotificationOptions notificationOptions = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        IBinder iBinder = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 5:
                    notificationOptions = (NotificationOptions) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, NotificationOptions.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new CastMediaOptions(str2, str, iBinder, notificationOptions);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcb */
    public CastMediaOptions[] newArray(int i) {
        return new CastMediaOptions[i];
    }
}
