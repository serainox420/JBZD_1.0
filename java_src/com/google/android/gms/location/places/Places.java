package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.location.places.internal.zzh;
import com.google.android.gms.location.places.internal.zzn;
/* loaded from: classes2.dex */
public class Places {
    public static final Api.zzf<com.google.android.gms.location.places.internal.zzh> zzblK = new Api.zzf<>();
    public static final Api.zzf<com.google.android.gms.location.places.internal.zzn> zzblL = new Api.zzf<>();
    public static final Api<PlacesOptions> GEO_DATA_API = new Api<>("Places.GEO_DATA_API", new zzh.zza(), zzblK);
    public static final Api<PlacesOptions> PLACE_DETECTION_API = new Api<>("Places.PLACE_DETECTION_API", new zzn.zza(), zzblL);
    public static final GeoDataApi GeoDataApi = new com.google.android.gms.location.places.internal.zzg();
    public static final PlaceDetectionApi PlaceDetectionApi = new com.google.android.gms.location.places.internal.zzm();

    private Places() {
    }
}
