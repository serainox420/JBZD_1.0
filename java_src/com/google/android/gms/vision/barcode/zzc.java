package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<Barcode.CalendarDateTime> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Barcode.CalendarDateTime calendarDateTime, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, calendarDateTime.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, calendarDateTime.year);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, calendarDateTime.month);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, calendarDateTime.day);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, calendarDateTime.hours);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, calendarDateTime.minutes);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, calendarDateTime.seconds);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, calendarDateTime.isUtc);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, calendarDateTime.rawValue, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjB */
    public Barcode.CalendarDateTime createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i7 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
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
        return new Barcode.CalendarDateTime(i7, i6, i5, i4, i3, i2, i, z, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznV */
    public Barcode.CalendarDateTime[] newArray(int i) {
        return new Barcode.CalendarDateTime[i];
    }
}
