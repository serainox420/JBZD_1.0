package com.google.android.gms.location.places.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzo implements Parcelable.Creator<PlaceEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(PlaceEntity placeEntity, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, placeEntity.getId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, placeEntity.zzIX(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) placeEntity.zzIZ(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) placeEntity.getLatLng(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, placeEntity.zzIS());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) placeEntity.getViewport(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, placeEntity.zzIY(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, placeEntity.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) placeEntity.getWebsiteUri(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, placeEntity.zzIV());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, placeEntity.getRating());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, placeEntity.getPriceLevel());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, placeEntity.zzIR(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, (String) placeEntity.mo544getAddress(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, (String) placeEntity.mo546getPhoneNumber(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 16, placeEntity.zzIT(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 17, placeEntity.zzIU(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 19, (String) placeEntity.mo545getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 20, placeEntity.getPlaceTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 21, (Parcelable) placeEntity.zzIW(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhl */
    public PlaceEntity createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        ArrayList<Integer> arrayList = null;
        ArrayList<Integer> arrayList2 = null;
        Bundle bundle = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        ArrayList<String> arrayList3 = null;
        LatLng latLng = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        LatLngBounds latLngBounds = null;
        String str6 = null;
        Uri uri = null;
        boolean z = false;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        int i2 = 0;
        zzs zzsVar = null;
        zzu zzuVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 3:
                    zzsVar = (zzs) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzs.CREATOR);
                    break;
                case 4:
                    latLng = (LatLng) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 5:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LatLngBounds.CREATOR);
                    break;
                case 7:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 9:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 11:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 13:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 14:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 15:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 16:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 17:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 19:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 20:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 21:
                    zzuVar = (zzu) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzu.CREATOR);
                    break;
                case 1000:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new PlaceEntity(i, str, arrayList, arrayList2, bundle, str2, str3, str4, str5, arrayList3, latLng, f, latLngBounds, str6, uri, z, f2, i2, zzsVar, zzuVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkS */
    public PlaceEntity[] newArray(int i) {
        return new PlaceEntity[i];
    }
}
