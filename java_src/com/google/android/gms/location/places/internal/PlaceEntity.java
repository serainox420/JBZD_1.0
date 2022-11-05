package com.google.android.gms.location.places.internal;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class PlaceEntity extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable, Place {
    public static final Parcelable.Creator<PlaceEntity> CREATOR = new zzo();
    private final String mName;
    private final String zzGV;
    private final String zzaSq;
    final int zzaiI;
    private final LatLng zzbkX;
    private final List<Integer> zzbkY;
    private final String zzbkZ;
    private Locale zzblU;
    private final Uri zzbla;
    private final String zzbmA;
    private final List<String> zzbmB;
    private final zzu zzbmC;
    private final Map<Integer, String> zzbmD;
    private final TimeZone zzbmE;
    private final Bundle zzbmr;
    @Deprecated
    private final zzs zzbms;
    private final float zzbmt;
    private final LatLngBounds zzbmu;
    private final String zzbmv;
    private final boolean zzbmw;
    private final float zzbmx;
    private final int zzbmy;
    private final List<Integer> zzbmz;

    /* loaded from: classes2.dex */
    public static class zza {
        private String mName;
        private String zzGV;
        private String zzaSq;
        private int zzaiI = 0;
        private LatLng zzbkX;
        private String zzbkZ;
        private Uri zzbla;
        private List<String> zzbmB;
        private zzu zzbmC;
        private List<Integer> zzbmF;
        private float zzbmt;
        private LatLngBounds zzbmu;
        private boolean zzbmw;
        private float zzbmx;
        private int zzbmy;

        public zza zzG(List<Integer> list) {
            this.zzbmF = list;
            return this;
        }

        public zza zzH(List<String> list) {
            this.zzbmB = list;
            return this;
        }

        public PlaceEntity zzJb() {
            return new PlaceEntity(0, this.zzGV, this.zzbmF, Collections.emptyList(), null, this.mName, this.zzaSq, this.zzbkZ, null, this.zzbmB, this.zzbkX, this.zzbmt, this.zzbmu, null, this.zzbla, this.zzbmw, this.zzbmx, this.zzbmy, zzs.zza(this.mName, this.zzaSq, this.zzbkZ, null, this.zzbmB), this.zzbmC);
        }

        public zza zza(zzu zzuVar) {
            this.zzbmC = zzuVar;
            return this;
        }

        public zza zza(LatLng latLng) {
            this.zzbkX = latLng;
            return this;
        }

        public zza zza(LatLngBounds latLngBounds) {
            this.zzbmu = latLngBounds;
            return this;
        }

        public zza zzaI(boolean z) {
            this.zzbmw = z;
            return this;
        }

        public zza zzeV(String str) {
            this.zzGV = str;
            return this;
        }

        public zza zzeW(String str) {
            this.mName = str;
            return this;
        }

        public zza zzeX(String str) {
            this.zzaSq = str;
            return this;
        }

        public zza zzeY(String str) {
            this.zzbkZ = str;
            return this;
        }

        public zza zzg(float f) {
            this.zzbmt = f;
            return this;
        }

        public zza zzh(float f) {
            this.zzbmx = f;
            return this;
        }

        public zza zzkR(int i) {
            this.zzbmy = i;
            return this;
        }

        public zza zzt(Uri uri) {
            this.zzbla = uri;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaceEntity(int i, String str, List<Integer> list, List<Integer> list2, Bundle bundle, String str2, String str3, String str4, String str5, List<String> list3, LatLng latLng, float f, LatLngBounds latLngBounds, String str6, Uri uri, boolean z, float f2, int i2, zzs zzsVar, zzu zzuVar) {
        this.zzaiI = i;
        this.zzGV = str;
        this.zzbkY = Collections.unmodifiableList(list);
        this.zzbmz = list2;
        this.zzbmr = bundle == null ? new Bundle() : bundle;
        this.mName = str2;
        this.zzaSq = str3;
        this.zzbkZ = str4;
        this.zzbmA = str5;
        this.zzbmB = list3 == null ? Collections.emptyList() : list3;
        this.zzbkX = latLng;
        this.zzbmt = f;
        this.zzbmu = latLngBounds;
        this.zzbmv = str6 == null ? "UTC" : str6;
        this.zzbla = uri;
        this.zzbmw = z;
        this.zzbmx = f2;
        this.zzbmy = i2;
        this.zzbmD = Collections.unmodifiableMap(new HashMap());
        this.zzbmE = null;
        this.zzblU = null;
        this.zzbms = zzsVar;
        this.zzbmC = zzuVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceEntity)) {
            return false;
        }
        PlaceEntity placeEntity = (PlaceEntity) obj;
        return this.zzGV.equals(placeEntity.zzGV) && com.google.android.gms.common.internal.zzaa.equal(this.zzblU, placeEntity.zzblU);
    }

    @Override // com.google.android.gms.location.places.Place
    /* renamed from: getAddress  reason: collision with other method in class */
    public String mo544getAddress() {
        return this.zzaSq;
    }

    @Override // com.google.android.gms.location.places.Place
    public CharSequence getAttributions() {
        return zzf.zzo(this.zzbmB);
    }

    @Override // com.google.android.gms.location.places.Place
    public String getId() {
        return this.zzGV;
    }

    @Override // com.google.android.gms.location.places.Place
    public LatLng getLatLng() {
        return this.zzbkX;
    }

    @Override // com.google.android.gms.location.places.Place
    public Locale getLocale() {
        return this.zzblU;
    }

    @Override // com.google.android.gms.location.places.Place
    /* renamed from: getName  reason: collision with other method in class */
    public String mo545getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.location.places.Place
    /* renamed from: getPhoneNumber  reason: collision with other method in class */
    public String mo546getPhoneNumber() {
        return this.zzbkZ;
    }

    @Override // com.google.android.gms.location.places.Place
    public List<Integer> getPlaceTypes() {
        return this.zzbkY;
    }

    @Override // com.google.android.gms.location.places.Place
    public int getPriceLevel() {
        return this.zzbmy;
    }

    @Override // com.google.android.gms.location.places.Place
    public float getRating() {
        return this.zzbmx;
    }

    @Override // com.google.android.gms.location.places.Place
    public LatLngBounds getViewport() {
        return this.zzbmu;
    }

    @Override // com.google.android.gms.location.places.Place
    public Uri getWebsiteUri() {
        return this.zzbla;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzGV, this.zzblU);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public void setLocale(Locale locale) {
        this.zzblU = locale;
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("id", this.zzGV).zzg("placeTypes", this.zzbkY).zzg("locale", this.zzblU).zzg("name", this.mName).zzg("address", this.zzaSq).zzg("phoneNumber", this.zzbkZ).zzg("latlng", this.zzbkX).zzg("viewport", this.zzbmu).zzg("websiteUri", this.zzbla).zzg("isPermanentlyClosed", Boolean.valueOf(this.zzbmw)).zzg("priceLevel", Integer.valueOf(this.zzbmy)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }

    public List<Integer> zzIR() {
        return this.zzbmz;
    }

    public float zzIS() {
        return this.zzbmt;
    }

    public String zzIT() {
        return this.zzbmA;
    }

    public List<String> zzIU() {
        return this.zzbmB;
    }

    public boolean zzIV() {
        return this.zzbmw;
    }

    public zzu zzIW() {
        return this.zzbmC;
    }

    public Bundle zzIX() {
        return this.zzbmr;
    }

    public String zzIY() {
        return this.zzbmv;
    }

    @Deprecated
    public zzs zzIZ() {
        return this.zzbms;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzJa */
    public Place mo520freeze() {
        return this;
    }
}
