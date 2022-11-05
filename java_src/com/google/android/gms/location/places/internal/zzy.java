package com.google.android.gms.location.places.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.internal.PlaceEntity;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzy extends zzab implements Place {
    private final String zzblE;

    public zzy(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.zzblE = zzO("place_id", "");
    }

    private List<String> zzIU() {
        return zzc("place_attributions", Collections.emptyList());
    }

    private PlaceEntity zzJe() {
        PlaceEntity zzJb = new PlaceEntity.zza().zzeX(mo544getAddress().toString()).zzH(zzIU()).zzeV(getId()).zzaI(zzIV()).zza(getLatLng()).zzg(zzIS()).zzeW(mo545getName().toString()).zzeY(mo546getPhoneNumber().toString()).zzkR(getPriceLevel()).zzh(getRating()).zzG(getPlaceTypes()).zza(getViewport()).zzt(getWebsiteUri()).zza(zzIW()).zzJb();
        zzJb.setLocale(getLocale());
        return zzJb;
    }

    @Override // com.google.android.gms.location.places.Place
    /* renamed from: getAddress */
    public CharSequence mo544getAddress() {
        return zzO("place_address", "");
    }

    @Override // com.google.android.gms.location.places.Place
    public CharSequence getAttributions() {
        return zzf.zzo(zzIU());
    }

    @Override // com.google.android.gms.location.places.Place
    public String getId() {
        return this.zzblE;
    }

    @Override // com.google.android.gms.location.places.Place
    public LatLng getLatLng() {
        return (LatLng) zza("place_lat_lng", LatLng.CREATOR);
    }

    @Override // com.google.android.gms.location.places.Place
    public Locale getLocale() {
        String zzO = zzO("place_locale_language", "");
        if (!TextUtils.isEmpty(zzO)) {
            return new Locale(zzO, zzO("place_locale_country", ""));
        }
        String zzO2 = zzO("place_locale", "");
        return !TextUtils.isEmpty(zzO2) ? new Locale(zzO2) : Locale.getDefault();
    }

    @Override // com.google.android.gms.location.places.Place
    /* renamed from: getName */
    public CharSequence mo545getName() {
        return zzO("place_name", "");
    }

    @Override // com.google.android.gms.location.places.Place
    /* renamed from: getPhoneNumber */
    public CharSequence mo546getPhoneNumber() {
        return zzO("place_phone_number", "");
    }

    @Override // com.google.android.gms.location.places.Place
    public List<Integer> getPlaceTypes() {
        return zzb("place_types", Collections.emptyList());
    }

    @Override // com.google.android.gms.location.places.Place
    public int getPriceLevel() {
        return zzy("place_price_level", -1);
    }

    @Override // com.google.android.gms.location.places.Place
    public float getRating() {
        return zzb("place_rating", -1.0f);
    }

    @Override // com.google.android.gms.location.places.Place
    public LatLngBounds getViewport() {
        return (LatLngBounds) zza("place_viewport", LatLngBounds.CREATOR);
    }

    @Override // com.google.android.gms.location.places.Place
    public Uri getWebsiteUri() {
        String zzO = zzO("place_website_uri", null);
        if (zzO == null) {
            return null;
        }
        return Uri.parse(zzO);
    }

    public float zzIS() {
        return zzb("place_level_number", BitmapDescriptorFactory.HUE_RED);
    }

    public boolean zzIV() {
        return zzk("place_is_permanently_closed", false);
    }

    zzu zzIW() {
        return (zzu) zza("place_opening_hours", zzu.CREATOR);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzJa */
    public Place mo520freeze() {
        return zzJe();
    }
}
