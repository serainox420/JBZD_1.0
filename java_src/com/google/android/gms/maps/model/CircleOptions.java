package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.List;
/* loaded from: classes2.dex */
public final class CircleOptions extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<CircleOptions> CREATOR = new zzc();
    private int mFillColor;
    private int mStrokeColor;
    private float mStrokeWidth;
    private LatLng zzbpg;
    private double zzbph;
    private float zzbpi;
    private boolean zzbpj;
    private boolean zzbpk;
    private List<PatternItem> zzbpl;

    public CircleOptions() {
        this.zzbpg = null;
        this.zzbph = 0.0d;
        this.mStrokeWidth = 10.0f;
        this.mStrokeColor = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        this.mFillColor = 0;
        this.zzbpi = BitmapDescriptorFactory.HUE_RED;
        this.zzbpj = true;
        this.zzbpk = false;
        this.zzbpl = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CircleOptions(LatLng latLng, double d, float f, int i, int i2, float f2, boolean z, boolean z2, List<PatternItem> list) {
        this.zzbpg = null;
        this.zzbph = 0.0d;
        this.mStrokeWidth = 10.0f;
        this.mStrokeColor = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        this.mFillColor = 0;
        this.zzbpi = BitmapDescriptorFactory.HUE_RED;
        this.zzbpj = true;
        this.zzbpk = false;
        this.zzbpl = null;
        this.zzbpg = latLng;
        this.zzbph = d;
        this.mStrokeWidth = f;
        this.mStrokeColor = i;
        this.mFillColor = i2;
        this.zzbpi = f2;
        this.zzbpj = z;
        this.zzbpk = z2;
        this.zzbpl = list;
    }

    public CircleOptions center(LatLng latLng) {
        this.zzbpg = latLng;
        return this;
    }

    public CircleOptions clickable(boolean z) {
        this.zzbpk = z;
        return this;
    }

    public CircleOptions fillColor(int i) {
        this.mFillColor = i;
        return this;
    }

    public LatLng getCenter() {
        return this.zzbpg;
    }

    public int getFillColor() {
        return this.mFillColor;
    }

    public double getRadius() {
        return this.zzbph;
    }

    public int getStrokeColor() {
        return this.mStrokeColor;
    }

    public List<PatternItem> getStrokePattern() {
        return this.zzbpl;
    }

    public float getStrokeWidth() {
        return this.mStrokeWidth;
    }

    public float getZIndex() {
        return this.zzbpi;
    }

    public boolean isClickable() {
        return this.zzbpk;
    }

    public boolean isVisible() {
        return this.zzbpj;
    }

    public CircleOptions radius(double d) {
        this.zzbph = d;
        return this;
    }

    public CircleOptions strokeColor(int i) {
        this.mStrokeColor = i;
        return this;
    }

    public CircleOptions strokePattern(List<PatternItem> list) {
        this.zzbpl = list;
        return this;
    }

    public CircleOptions strokeWidth(float f) {
        this.mStrokeWidth = f;
        return this;
    }

    public CircleOptions visible(boolean z) {
        this.zzbpj = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    public CircleOptions zIndex(float f) {
        this.zzbpi = f;
        return this;
    }
}
