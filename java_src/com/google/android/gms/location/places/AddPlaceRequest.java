package com.google.android.gms.location.places;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public class AddPlaceRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<AddPlaceRequest> CREATOR = new zzb();
    private final String mName;
    private final String zzaSq;
    final int zzaiI;
    private final LatLng zzbkX;
    private final List<Integer> zzbkY;
    private final String zzbkZ;
    private final Uri zzbla;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AddPlaceRequest(int i, String str, LatLng latLng, String str2, List<Integer> list, String str3, Uri uri) {
        boolean z = false;
        this.zzaiI = i;
        this.mName = zzac.zzdr(str);
        this.zzbkX = (LatLng) zzac.zzw(latLng);
        this.zzaSq = zzac.zzdr(str2);
        this.zzbkY = new ArrayList((Collection) zzac.zzw(list));
        zzac.zzb(!this.zzbkY.isEmpty(), "At least one place type should be provided.");
        zzac.zzb((!TextUtils.isEmpty(str3) || uri != null) ? true : z, "One of phone number or URI should be provided.");
        this.zzbkZ = str3;
        this.zzbla = uri;
    }

    public AddPlaceRequest(String str, LatLng latLng, String str2, List<Integer> list, Uri uri) {
        this(str, latLng, str2, list, null, (Uri) zzac.zzw(uri));
    }

    public AddPlaceRequest(String str, LatLng latLng, String str2, List<Integer> list, String str3) {
        this(str, latLng, str2, list, zzac.zzdr(str3), null);
    }

    public AddPlaceRequest(String str, LatLng latLng, String str2, List<Integer> list, String str3, Uri uri) {
        this(0, str, latLng, str2, list, str3, uri);
    }

    public String getAddress() {
        return this.zzaSq;
    }

    public LatLng getLatLng() {
        return this.zzbkX;
    }

    public String getName() {
        return this.mName;
    }

    public String getPhoneNumber() {
        return this.zzbkZ;
    }

    public List<Integer> getPlaceTypes() {
        return this.zzbkY;
    }

    public Uri getWebsiteUri() {
        return this.zzbla;
    }

    public String toString() {
        return zzaa.zzv(this).zzg("name", this.mName).zzg("latLng", this.zzbkX).zzg("address", this.zzaSq).zzg("placeTypes", this.zzbkY).zzg("phoneNumer", this.zzbkZ).zzg("websiteUri", this.zzbla).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
