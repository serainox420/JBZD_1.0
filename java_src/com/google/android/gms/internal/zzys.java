package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
/* loaded from: classes2.dex */
public class zzys extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzys> CREATOR = new zzyt();
    private double zzaoN;
    private boolean zzaoO;
    private int zzawc;
    private int zzawd;
    private ApplicationMetadata zzawn;

    public zzys() {
        this(Double.NaN, false, -1, null, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzys(double d, boolean z, int i, ApplicationMetadata applicationMetadata, int i2) {
        this.zzaoN = d;
        this.zzaoO = z;
        this.zzawc = i;
        this.zzawn = applicationMetadata;
        this.zzawd = i2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzys)) {
            return false;
        }
        zzys zzysVar = (zzys) obj;
        return this.zzaoN == zzysVar.zzaoN && this.zzaoO == zzysVar.zzaoO && this.zzawc == zzysVar.zzawc && zzyr.zza(this.zzawn, zzysVar.zzawn) && this.zzawd == zzysVar.zzawd;
    }

    public int getActiveInputState() {
        return this.zzawc;
    }

    public ApplicationMetadata getApplicationMetadata() {
        return this.zzawn;
    }

    public int getStandbyState() {
        return this.zzawd;
    }

    public double getVolume() {
        return this.zzaoN;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Double.valueOf(this.zzaoN), Boolean.valueOf(this.zzaoO), Integer.valueOf(this.zzawc), this.zzawn, Integer.valueOf(this.zzawd));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzyt.zza(this, parcel, i);
    }

    public boolean zzuK() {
        return this.zzaoO;
    }
}
