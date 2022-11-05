package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
/* loaded from: classes2.dex */
public final class StreetViewPanoramaOptions extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = new zzb();
    private Boolean zzbnZ;
    private StreetViewPanoramaCamera zzboJ;
    private String zzboK;
    private LatLng zzboL;
    private Integer zzboM;
    private Boolean zzboN;
    private Boolean zzboO;
    private Boolean zzboP;
    private Boolean zzbof;

    public StreetViewPanoramaOptions() {
        this.zzboN = true;
        this.zzbof = true;
        this.zzboO = true;
        this.zzboP = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StreetViewPanoramaOptions(StreetViewPanoramaCamera streetViewPanoramaCamera, String str, LatLng latLng, Integer num, byte b, byte b2, byte b3, byte b4, byte b5) {
        this.zzboN = true;
        this.zzbof = true;
        this.zzboO = true;
        this.zzboP = true;
        this.zzboJ = streetViewPanoramaCamera;
        this.zzboL = latLng;
        this.zzboM = num;
        this.zzboK = str;
        this.zzboN = com.google.android.gms.maps.internal.zza.zza(b);
        this.zzbof = com.google.android.gms.maps.internal.zza.zza(b2);
        this.zzboO = com.google.android.gms.maps.internal.zza.zza(b3);
        this.zzboP = com.google.android.gms.maps.internal.zza.zza(b4);
        this.zzbnZ = com.google.android.gms.maps.internal.zza.zza(b5);
    }

    public Boolean getPanningGesturesEnabled() {
        return this.zzboO;
    }

    public String getPanoramaId() {
        return this.zzboK;
    }

    public LatLng getPosition() {
        return this.zzboL;
    }

    public Integer getRadius() {
        return this.zzboM;
    }

    public Boolean getStreetNamesEnabled() {
        return this.zzboP;
    }

    public StreetViewPanoramaCamera getStreetViewPanoramaCamera() {
        return this.zzboJ;
    }

    public Boolean getUseViewLifecycleInFragment() {
        return this.zzbnZ;
    }

    public Boolean getUserNavigationEnabled() {
        return this.zzboN;
    }

    public Boolean getZoomGesturesEnabled() {
        return this.zzbof;
    }

    public StreetViewPanoramaOptions panningGesturesEnabled(boolean z) {
        this.zzboO = Boolean.valueOf(z);
        return this;
    }

    public StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.zzboJ = streetViewPanoramaCamera;
        return this;
    }

    public StreetViewPanoramaOptions panoramaId(String str) {
        this.zzboK = str;
        return this;
    }

    public StreetViewPanoramaOptions position(LatLng latLng) {
        this.zzboL = latLng;
        return this;
    }

    public StreetViewPanoramaOptions position(LatLng latLng, Integer num) {
        this.zzboL = latLng;
        this.zzboM = num;
        return this;
    }

    public StreetViewPanoramaOptions streetNamesEnabled(boolean z) {
        this.zzboP = Boolean.valueOf(z);
        return this;
    }

    public StreetViewPanoramaOptions useViewLifecycleInFragment(boolean z) {
        this.zzbnZ = Boolean.valueOf(z);
        return this;
    }

    public StreetViewPanoramaOptions userNavigationEnabled(boolean z) {
        this.zzboN = Boolean.valueOf(z);
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public StreetViewPanoramaOptions zoomGesturesEnabled(boolean z) {
        this.zzbof = Boolean.valueOf(z);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte zzJB() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboN);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte zzJC() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboO);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte zzJD() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzboP);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte zzJp() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzbnZ);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte zzJt() {
        return com.google.android.gms.maps.internal.zza.zzd(this.zzbof);
    }
}
