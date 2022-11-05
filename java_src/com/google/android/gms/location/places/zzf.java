package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes.dex */
public final class zzf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzf> CREATOR = new zzg();
    private int mPriority;
    private final int zzaiI;
    private final int zzbjD;
    private final int zzbln;
    @Deprecated
    private final PlaceFilter zzblo;
    private final zzd zzblp;
    private final boolean zzblq;
    private final int zzblr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(int i, int i2, int i3, PlaceFilter placeFilter, zzd zzdVar, boolean z, int i4, int i5) {
        this.mPriority = 110;
        this.zzaiI = i;
        this.zzbjD = i2;
        this.zzbln = i3;
        if (zzdVar != null) {
            this.zzblp = zzdVar;
        } else if (placeFilter == null) {
            this.zzblp = null;
        } else if (placeFilter.getPlaceIds() != null && !placeFilter.getPlaceIds().isEmpty()) {
            this.zzblp = zzd.zzm(placeFilter.getPlaceIds());
        } else if (placeFilter.zzIE() == null || placeFilter.zzIE().isEmpty()) {
            this.zzblp = null;
        } else {
            this.zzblp = zzd.zzn(placeFilter.zzIE());
        }
        this.zzblo = null;
        this.zzblq = z;
        this.zzblr = i4;
        this.mPriority = i5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzf)) {
            return false;
        }
        zzf zzfVar = (zzf) obj;
        return this.zzbjD == zzfVar.zzbjD && this.zzbln == zzfVar.zzbln && zzaa.equal(this.zzblp, zzfVar.zzblp) && this.mPriority == zzfVar.mPriority;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzbjD), Integer.valueOf(this.zzbln), this.zzblp, Integer.valueOf(this.mPriority));
    }

    public String toString() {
        return zzaa.zzv(this).zzg("transitionTypes", Integer.valueOf(this.zzbjD)).zzg("loiteringTimeMillis", Integer.valueOf(this.zzbln)).zzg("nearbyAlertFilter", this.zzblp).zzg("priority", Integer.valueOf(this.mPriority)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    @Deprecated
    public PlaceFilter zzIA() {
        return null;
    }

    public zzd zzIB() {
        return this.zzblp;
    }

    public boolean zzIC() {
        return this.zzblq;
    }

    public int zzID() {
        return this.zzblr;
    }

    public int zzIv() {
        return this.zzbjD;
    }

    public int zzIz() {
        return this.zzbln;
    }
}
