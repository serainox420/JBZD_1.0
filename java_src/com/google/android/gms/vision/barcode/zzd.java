package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<Barcode.CalendarEvent> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Barcode.CalendarEvent calendarEvent, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, calendarEvent.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, calendarEvent.summary, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, calendarEvent.description, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, calendarEvent.location, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, calendarEvent.organizer, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, calendarEvent.status, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) calendarEvent.start, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) calendarEvent.end, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjC */
    public Barcode.CalendarEvent createFromParcel(Parcel parcel) {
        Barcode.CalendarDateTime calendarDateTime = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Barcode.CalendarDateTime calendarDateTime2 = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    calendarDateTime2 = (Barcode.CalendarDateTime) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.CalendarDateTime.CREATOR);
                    break;
                case 8:
                    calendarDateTime = (Barcode.CalendarDateTime) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.CalendarDateTime.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Barcode.CalendarEvent(i, str5, str4, str3, str2, str, calendarDateTime2, calendarDateTime);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznW */
    public Barcode.CalendarEvent[] newArray(int i) {
        return new Barcode.CalendarEvent[i];
    }
}
