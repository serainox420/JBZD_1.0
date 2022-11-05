package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public final class MarkerOptions extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<MarkerOptions> CREATOR = new zzh();
    private float mAlpha;
    private String zzamJ;
    private LatLng zzboL;
    private String zzbpC;
    private BitmapDescriptor zzbpD;
    private boolean zzbpE;
    private boolean zzbpF;
    private float zzbpG;
    private float zzbpH;
    private float zzbpI;
    private float zzbpi;
    private boolean zzbpj;
    private float zzbps;
    private float zzbpt;

    public MarkerOptions() {
        this.zzbps = 0.5f;
        this.zzbpt = 1.0f;
        this.zzbpj = true;
        this.zzbpF = false;
        this.zzbpG = BitmapDescriptorFactory.HUE_RED;
        this.zzbpH = 0.5f;
        this.zzbpI = BitmapDescriptorFactory.HUE_RED;
        this.mAlpha = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MarkerOptions(LatLng latLng, String str, String str2, IBinder iBinder, float f, float f2, boolean z, boolean z2, boolean z3, float f3, float f4, float f5, float f6, float f7) {
        this.zzbps = 0.5f;
        this.zzbpt = 1.0f;
        this.zzbpj = true;
        this.zzbpF = false;
        this.zzbpG = BitmapDescriptorFactory.HUE_RED;
        this.zzbpH = 0.5f;
        this.zzbpI = BitmapDescriptorFactory.HUE_RED;
        this.mAlpha = 1.0f;
        this.zzboL = latLng;
        this.zzamJ = str;
        this.zzbpC = str2;
        if (iBinder == null) {
            this.zzbpD = null;
        } else {
            this.zzbpD = new BitmapDescriptor(IObjectWrapper.zza.zzcd(iBinder));
        }
        this.zzbps = f;
        this.zzbpt = f2;
        this.zzbpE = z;
        this.zzbpj = z2;
        this.zzbpF = z3;
        this.zzbpG = f3;
        this.zzbpH = f4;
        this.zzbpI = f5;
        this.mAlpha = f6;
        this.zzbpi = f7;
    }

    public MarkerOptions alpha(float f) {
        this.mAlpha = f;
        return this;
    }

    public MarkerOptions anchor(float f, float f2) {
        this.zzbps = f;
        this.zzbpt = f2;
        return this;
    }

    public MarkerOptions draggable(boolean z) {
        this.zzbpE = z;
        return this;
    }

    public MarkerOptions flat(boolean z) {
        this.zzbpF = z;
        return this;
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public float getAnchorU() {
        return this.zzbps;
    }

    public float getAnchorV() {
        return this.zzbpt;
    }

    public BitmapDescriptor getIcon() {
        return this.zzbpD;
    }

    public float getInfoWindowAnchorU() {
        return this.zzbpH;
    }

    public float getInfoWindowAnchorV() {
        return this.zzbpI;
    }

    public LatLng getPosition() {
        return this.zzboL;
    }

    public float getRotation() {
        return this.zzbpG;
    }

    public String getSnippet() {
        return this.zzbpC;
    }

    public String getTitle() {
        return this.zzamJ;
    }

    public float getZIndex() {
        return this.zzbpi;
    }

    public MarkerOptions icon(BitmapDescriptor bitmapDescriptor) {
        this.zzbpD = bitmapDescriptor;
        return this;
    }

    public MarkerOptions infoWindowAnchor(float f, float f2) {
        this.zzbpH = f;
        this.zzbpI = f2;
        return this;
    }

    public boolean isDraggable() {
        return this.zzbpE;
    }

    public boolean isFlat() {
        return this.zzbpF;
    }

    public boolean isVisible() {
        return this.zzbpj;
    }

    public MarkerOptions position(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("latlng cannot be null - a position is required.");
        }
        this.zzboL = latLng;
        return this;
    }

    public MarkerOptions rotation(float f) {
        this.zzbpG = f;
        return this;
    }

    public MarkerOptions snippet(String str) {
        this.zzbpC = str;
        return this;
    }

    public MarkerOptions title(String str) {
        this.zzamJ = str;
        return this;
    }

    public MarkerOptions visible(boolean z) {
        this.zzbpj = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public MarkerOptions zIndex(float f) {
        this.zzbpi = f;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzJM() {
        if (this.zzbpD == null) {
            return null;
        }
        return this.zzbpD.zzJm().asBinder();
    }
}
