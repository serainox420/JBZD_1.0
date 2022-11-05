package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<NotificationOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(NotificationOptions notificationOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 2, notificationOptions.getActions(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, notificationOptions.getCompatActionIndices(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, notificationOptions.getSkipStepMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, notificationOptions.getTargetActivityClassName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, notificationOptions.getSmallIconDrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, notificationOptions.getStopLiveStreamDrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, notificationOptions.getPauseDrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, notificationOptions.getPlayDrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, notificationOptions.getSkipNextDrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, notificationOptions.getSkipPrevDrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, notificationOptions.getForwardDrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 13, notificationOptions.getForward10DrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 14, notificationOptions.getForward30DrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 15, notificationOptions.getRewindDrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 16, notificationOptions.getRewind10DrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 17, notificationOptions.getRewind30DrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 18, notificationOptions.getDisconnectDrawableResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 19, notificationOptions.zztr());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 20, notificationOptions.getCastingToDeviceStringResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 21, notificationOptions.getStopLiveStreamTitleResId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 22, notificationOptions.zzts());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 23, notificationOptions.zztt());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 24, notificationOptions.zztu());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 25, notificationOptions.zztv());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 26, notificationOptions.zztw());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 27, notificationOptions.zztx());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 28, notificationOptions.zzty());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 29, notificationOptions.zztz());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 30, notificationOptions.zztA());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 31, notificationOptions.zztB());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 32, notificationOptions.zztC());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaE */
    public NotificationOptions createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList<String> arrayList = null;
        int[] iArr = null;
        long j = 0;
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 3:
                    iArr = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, zzaX);
                    break;
                case 4:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 11:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 12:
                    i7 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 13:
                    i8 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 14:
                    i9 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 15:
                    i10 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 16:
                    i11 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 17:
                    i12 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 18:
                    i13 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 19:
                    i14 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 20:
                    i15 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 21:
                    i16 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 22:
                    i17 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 23:
                    i18 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 24:
                    i19 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 25:
                    i20 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 26:
                    i21 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 27:
                    i22 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 28:
                    i23 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 29:
                    i24 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 30:
                    i25 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 31:
                    i26 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 32:
                    i27 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new NotificationOptions(arrayList, iArr, j, str, i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcd */
    public NotificationOptions[] newArray(int i) {
        return new NotificationOptions[i];
    }
}
