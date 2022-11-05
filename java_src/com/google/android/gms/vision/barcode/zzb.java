package com.google.android.gms.vision.barcode;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<Barcode> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Barcode barcode, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, barcode.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, barcode.format);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, barcode.rawValue, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, barcode.displayValue, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, barcode.valueFormat);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable[]) barcode.cornerPoints, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) barcode.email, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) barcode.phone, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) barcode.sms, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) barcode.wifi, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, (Parcelable) barcode.url, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, (Parcelable) barcode.geoPoint, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, (Parcelable) barcode.calendarEvent, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, (Parcelable) barcode.contactInfo, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, (Parcelable) barcode.driverLicense, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjA */
    public Barcode createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        int i2 = 0;
        String str = null;
        String str2 = null;
        int i3 = 0;
        Point[] pointArr = null;
        Barcode.Email email = null;
        Barcode.Phone phone = null;
        Barcode.Sms sms = null;
        Barcode.WiFi wiFi = null;
        Barcode.UrlBookmark urlBookmark = null;
        Barcode.GeoPoint geoPoint = null;
        Barcode.CalendarEvent calendarEvent = null;
        Barcode.ContactInfo contactInfo = null;
        Barcode.DriverLicense driverLicense = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    pointArr = (Point[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Point.CREATOR);
                    break;
                case 7:
                    email = (Barcode.Email) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.Email.CREATOR);
                    break;
                case 8:
                    phone = (Barcode.Phone) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.Phone.CREATOR);
                    break;
                case 9:
                    sms = (Barcode.Sms) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.Sms.CREATOR);
                    break;
                case 10:
                    wiFi = (Barcode.WiFi) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.WiFi.CREATOR);
                    break;
                case 11:
                    urlBookmark = (Barcode.UrlBookmark) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.UrlBookmark.CREATOR);
                    break;
                case 12:
                    geoPoint = (Barcode.GeoPoint) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.GeoPoint.CREATOR);
                    break;
                case 13:
                    calendarEvent = (Barcode.CalendarEvent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.CalendarEvent.CREATOR);
                    break;
                case 14:
                    contactInfo = (Barcode.ContactInfo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.ContactInfo.CREATOR);
                    break;
                case 15:
                    driverLicense = (Barcode.DriverLicense) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.DriverLicense.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Barcode(i, i2, str, str2, i3, pointArr, email, phone, sms, wiFi, urlBookmark, geoPoint, calendarEvent, contactInfo, driverLicense);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznU */
    public Barcode[] newArray(int i) {
        return new Barcode[i];
    }
}
