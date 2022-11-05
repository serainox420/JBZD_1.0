package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzn implements Parcelable.Creator<TextTrackStyle> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(TextTrackStyle textTrackStyle, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, textTrackStyle.getFontScale());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, textTrackStyle.getForegroundColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, textTrackStyle.getBackgroundColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, textTrackStyle.getEdgeType());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, textTrackStyle.getEdgeColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, textTrackStyle.getWindowType());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, textTrackStyle.getWindowColor());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, textTrackStyle.getWindowCornerRadius());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, textTrackStyle.getFontFamily(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, textTrackStyle.getFontGenericFamily());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, textTrackStyle.getFontStyle());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, textTrackStyle.zzamN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaz */
    public TextTrackStyle createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        float f = BitmapDescriptorFactory.HUE_RED;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        String str = null;
        int i8 = 0;
        int i9 = 0;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                    i7 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 11:
                    i8 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 12:
                    i9 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 13:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new TextTrackStyle(f, i, i2, i3, i4, i5, i6, i7, str, i8, i9, str2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbV */
    public TextTrackStyle[] newArray(int i) {
        return new TextTrackStyle[i];
    }
}
