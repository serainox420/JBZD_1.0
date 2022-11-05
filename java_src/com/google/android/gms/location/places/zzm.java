package com.google.android.gms.location.places;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes.dex */
public final class zzm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();
    private final int mPriority;
    final int zzaiI;
    private final long zzbjE;
    private final long zzbjU;
    private final PlaceFilter zzblF;
    private final boolean zzblG;
    private final boolean zzblH;

    public zzm(int i, PlaceFilter placeFilter, long j, int i2, long j2, boolean z, boolean z2) {
        this.zzaiI = i;
        this.zzblF = placeFilter;
        this.zzbjU = j;
        this.mPriority = i2;
        this.zzbjE = j2;
        this.zzblG = z;
        this.zzblH = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzm)) {
            return false;
        }
        zzm zzmVar = (zzm) obj;
        return zzaa.equal(this.zzblF, zzmVar.zzblF) && this.zzbjU == zzmVar.zzbjU && this.mPriority == zzmVar.mPriority && this.zzbjE == zzmVar.zzbjE && this.zzblG == zzmVar.zzblG;
    }

    public long getExpirationTime() {
        return this.zzbjE;
    }

    public long getInterval() {
        return this.zzbjU;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzblF, Long.valueOf(this.zzbjU), Integer.valueOf(this.mPriority), Long.valueOf(this.zzbjE), Boolean.valueOf(this.zzblG));
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return zzaa.zzv(this).zzg("filter", this.zzblF).zzg("interval", Long.valueOf(this.zzbjU)).zzg("priority", Integer.valueOf(this.mPriority)).zzg("expireAt", Long.valueOf(this.zzbjE)).zzg("receiveFailures", Boolean.valueOf(this.zzblG)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }

    @Deprecated
    public PlaceFilter zzIA() {
        return this.zzblF;
    }

    public boolean zzIH() {
        return this.zzblG;
    }

    public boolean zzII() {
        return this.zzblH;
    }
}
