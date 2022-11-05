package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
/* loaded from: classes2.dex */
public class StreetViewPanoramaCamera extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaCamera> CREATOR = new zzm();
    public final float bearing;
    public final float tilt;
    public final float zoom;
    private StreetViewPanoramaOrientation zzbpU;

    /* loaded from: classes2.dex */
    public static final class Builder {
        public float bearing;
        public float tilt;
        public float zoom;

        public Builder() {
        }

        public Builder(StreetViewPanoramaCamera streetViewPanoramaCamera) {
            this.zoom = streetViewPanoramaCamera.zoom;
            this.bearing = streetViewPanoramaCamera.bearing;
            this.tilt = streetViewPanoramaCamera.tilt;
        }

        public Builder bearing(float f) {
            this.bearing = f;
            return this;
        }

        public StreetViewPanoramaCamera build() {
            return new StreetViewPanoramaCamera(this.zoom, this.tilt, this.bearing);
        }

        public Builder orientation(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
            this.tilt = streetViewPanoramaOrientation.tilt;
            this.bearing = streetViewPanoramaOrientation.bearing;
            return this;
        }

        public Builder tilt(float f) {
            this.tilt = f;
            return this;
        }

        public Builder zoom(float f) {
            this.zoom = f;
            return this;
        }
    }

    public StreetViewPanoramaCamera(float f, float f2, float f3) {
        zzac.zzb(-90.0f <= f2 && f2 <= 90.0f, "Tilt needs to be between -90 and 90 inclusive");
        this.zoom = ((double) f) <= 0.0d ? 0.0f : f;
        this.tilt = f2 + BitmapDescriptorFactory.HUE_RED;
        this.bearing = (((double) f3) <= 0.0d ? (f3 % 360.0f) + 360.0f : f3) % 360.0f;
        this.zzbpU = new StreetViewPanoramaOrientation.Builder().tilt(f2).bearing(f3).build();
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder builder(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        return new Builder(streetViewPanoramaCamera);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaCamera)) {
            return false;
        }
        StreetViewPanoramaCamera streetViewPanoramaCamera = (StreetViewPanoramaCamera) obj;
        return Float.floatToIntBits(this.zoom) == Float.floatToIntBits(streetViewPanoramaCamera.zoom) && Float.floatToIntBits(this.tilt) == Float.floatToIntBits(streetViewPanoramaCamera.tilt) && Float.floatToIntBits(this.bearing) == Float.floatToIntBits(streetViewPanoramaCamera.bearing);
    }

    public StreetViewPanoramaOrientation getOrientation() {
        return this.zzbpU;
    }

    public int hashCode() {
        return zzaa.hashCode(Float.valueOf(this.zoom), Float.valueOf(this.tilt), Float.valueOf(this.bearing));
    }

    public String toString() {
        return zzaa.zzv(this).zzg("zoom", Float.valueOf(this.zoom)).zzg("tilt", Float.valueOf(this.tilt)).zzg("bearing", Float.valueOf(this.bearing)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }
}
