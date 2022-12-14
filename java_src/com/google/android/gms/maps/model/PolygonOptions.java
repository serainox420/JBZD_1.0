package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public final class PolygonOptions extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<PolygonOptions> CREATOR = new zzk();
    private int mFillColor;
    private int mStrokeColor;
    private float mStrokeWidth;
    private final List<LatLng> zzbpL;
    private final List<List<LatLng>> zzbpM;
    private boolean zzbpN;
    private int zzbpO;
    private float zzbpi;
    private boolean zzbpj;
    private boolean zzbpk;
    private List<PatternItem> zzbpl;

    public PolygonOptions() {
        this.mStrokeWidth = 10.0f;
        this.mStrokeColor = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        this.mFillColor = 0;
        this.zzbpi = BitmapDescriptorFactory.HUE_RED;
        this.zzbpj = true;
        this.zzbpN = false;
        this.zzbpk = false;
        this.zzbpO = 0;
        this.zzbpl = null;
        this.zzbpL = new ArrayList();
        this.zzbpM = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PolygonOptions(List<LatLng> list, List list2, float f, int i, int i2, float f2, boolean z, boolean z2, boolean z3, int i3, List<PatternItem> list3) {
        this.mStrokeWidth = 10.0f;
        this.mStrokeColor = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        this.mFillColor = 0;
        this.zzbpi = BitmapDescriptorFactory.HUE_RED;
        this.zzbpj = true;
        this.zzbpN = false;
        this.zzbpk = false;
        this.zzbpO = 0;
        this.zzbpl = null;
        this.zzbpL = list;
        this.zzbpM = list2;
        this.mStrokeWidth = f;
        this.mStrokeColor = i;
        this.mFillColor = i2;
        this.zzbpi = f2;
        this.zzbpj = z;
        this.zzbpN = z2;
        this.zzbpk = z3;
        this.zzbpO = i3;
        this.zzbpl = list3;
    }

    public PolygonOptions add(LatLng latLng) {
        this.zzbpL.add(latLng);
        return this;
    }

    public PolygonOptions add(LatLng... latLngArr) {
        this.zzbpL.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public PolygonOptions addAll(Iterable<LatLng> iterable) {
        for (LatLng latLng : iterable) {
            this.zzbpL.add(latLng);
        }
        return this;
    }

    public PolygonOptions addHole(Iterable<LatLng> iterable) {
        ArrayList arrayList = new ArrayList();
        for (LatLng latLng : iterable) {
            arrayList.add(latLng);
        }
        this.zzbpM.add(arrayList);
        return this;
    }

    public PolygonOptions clickable(boolean z) {
        this.zzbpk = z;
        return this;
    }

    public PolygonOptions fillColor(int i) {
        this.mFillColor = i;
        return this;
    }

    public PolygonOptions geodesic(boolean z) {
        this.zzbpN = z;
        return this;
    }

    public int getFillColor() {
        return this.mFillColor;
    }

    public List<List<LatLng>> getHoles() {
        return this.zzbpM;
    }

    public List<LatLng> getPoints() {
        return this.zzbpL;
    }

    public int getStrokeColor() {
        return this.mStrokeColor;
    }

    public int getStrokeJointType() {
        return this.zzbpO;
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

    public boolean isGeodesic() {
        return this.zzbpN;
    }

    public boolean isVisible() {
        return this.zzbpj;
    }

    public PolygonOptions strokeColor(int i) {
        this.mStrokeColor = i;
        return this;
    }

    public PolygonOptions strokeJointType(int i) {
        this.zzbpO = i;
        return this;
    }

    public PolygonOptions strokePattern(List<PatternItem> list) {
        this.zzbpl = list;
        return this;
    }

    public PolygonOptions strokeWidth(float f) {
        this.mStrokeWidth = f;
        return this;
    }

    public PolygonOptions visible(boolean z) {
        this.zzbpj = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }

    public PolygonOptions zIndex(float f) {
        this.zzbpi = f;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List zzJP() {
        return this.zzbpM;
    }
}
