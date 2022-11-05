package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public final class GroundOverlayOptions extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<GroundOverlayOptions> CREATOR = new zzd();
    public static final float NO_DIMENSION = -1.0f;
    private LatLngBounds zzbnp;
    private float zzbpd;
    private float zzbpi;
    private boolean zzbpj;
    private boolean zzbpk;
    private BitmapDescriptor zzbpn;
    private LatLng zzbpo;
    private float zzbpp;
    private float zzbpq;
    private float zzbpr;
    private float zzbps;
    private float zzbpt;

    public GroundOverlayOptions() {
        this.zzbpj = true;
        this.zzbpr = BitmapDescriptorFactory.HUE_RED;
        this.zzbps = 0.5f;
        this.zzbpt = 0.5f;
        this.zzbpk = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GroundOverlayOptions(IBinder iBinder, LatLng latLng, float f, float f2, LatLngBounds latLngBounds, float f3, float f4, boolean z, float f5, float f6, float f7, boolean z2) {
        this.zzbpj = true;
        this.zzbpr = BitmapDescriptorFactory.HUE_RED;
        this.zzbps = 0.5f;
        this.zzbpt = 0.5f;
        this.zzbpk = false;
        this.zzbpn = new BitmapDescriptor(IObjectWrapper.zza.zzcd(iBinder));
        this.zzbpo = latLng;
        this.zzbpp = f;
        this.zzbpq = f2;
        this.zzbnp = latLngBounds;
        this.zzbpd = f3;
        this.zzbpi = f4;
        this.zzbpj = z;
        this.zzbpr = f5;
        this.zzbps = f6;
        this.zzbpt = f7;
        this.zzbpk = z2;
    }

    private GroundOverlayOptions zza(LatLng latLng, float f, float f2) {
        this.zzbpo = latLng;
        this.zzbpp = f;
        this.zzbpq = f2;
        return this;
    }

    public GroundOverlayOptions anchor(float f, float f2) {
        this.zzbps = f;
        this.zzbpt = f2;
        return this;
    }

    public GroundOverlayOptions bearing(float f) {
        this.zzbpd = ((f % 360.0f) + 360.0f) % 360.0f;
        return this;
    }

    public GroundOverlayOptions clickable(boolean z) {
        this.zzbpk = z;
        return this;
    }

    public float getAnchorU() {
        return this.zzbps;
    }

    public float getAnchorV() {
        return this.zzbpt;
    }

    public float getBearing() {
        return this.zzbpd;
    }

    public LatLngBounds getBounds() {
        return this.zzbnp;
    }

    public float getHeight() {
        return this.zzbpq;
    }

    public BitmapDescriptor getImage() {
        return this.zzbpn;
    }

    public LatLng getLocation() {
        return this.zzbpo;
    }

    public float getTransparency() {
        return this.zzbpr;
    }

    public float getWidth() {
        return this.zzbpp;
    }

    public float getZIndex() {
        return this.zzbpi;
    }

    public GroundOverlayOptions image(BitmapDescriptor bitmapDescriptor) {
        zzac.zzb(bitmapDescriptor, "imageDescriptor must not be null");
        this.zzbpn = bitmapDescriptor;
        return this;
    }

    public boolean isClickable() {
        return this.zzbpk;
    }

    public boolean isVisible() {
        return this.zzbpj;
    }

    public GroundOverlayOptions position(LatLng latLng, float f) {
        boolean z = true;
        zzac.zza(this.zzbnp == null, "Position has already been set using positionFromBounds");
        zzac.zzb(latLng != null, "Location must be specified");
        if (f < BitmapDescriptorFactory.HUE_RED) {
            z = false;
        }
        zzac.zzb(z, "Width must be non-negative");
        return zza(latLng, f, -1.0f);
    }

    public GroundOverlayOptions position(LatLng latLng, float f, float f2) {
        boolean z = true;
        zzac.zza(this.zzbnp == null, "Position has already been set using positionFromBounds");
        zzac.zzb(latLng != null, "Location must be specified");
        zzac.zzb(f >= BitmapDescriptorFactory.HUE_RED, "Width must be non-negative");
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            z = false;
        }
        zzac.zzb(z, "Height must be non-negative");
        return zza(latLng, f, f2);
    }

    public GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        boolean z = this.zzbpo == null;
        String valueOf = String.valueOf(this.zzbpo);
        zzac.zza(z, new StringBuilder(String.valueOf(valueOf).length() + 46).append("Position has already been set using position: ").append(valueOf).toString());
        this.zzbnp = latLngBounds;
        return this;
    }

    public GroundOverlayOptions transparency(float f) {
        zzac.zzb(f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f, "Transparency must be in the range [0..1]");
        this.zzbpr = f;
        return this;
    }

    public GroundOverlayOptions visible(boolean z) {
        this.zzbpj = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public GroundOverlayOptions zIndex(float f) {
        this.zzbpi = f;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzJK() {
        return this.zzbpn.zzJm().asBinder();
    }
}
