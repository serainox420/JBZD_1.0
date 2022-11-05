package com.google.android.gms.internal;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.ActivityRecognitionResult;
/* loaded from: classes2.dex */
public final class zzwk extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzwk> CREATOR = new zzwm();
    private final ActivityRecognitionResult zzamm;
    private final zzvx zzamn;
    private final zzvz zzamo;
    private final zzwb zzamp;
    private final DataHolder zzamq;
    private final zzwg zzamr;
    private final zzwi zzams;
    private final zzwt zzamt;
    private final zzwq zzamu;
    private final Location zzcV;

    public zzwk(ActivityRecognitionResult activityRecognitionResult, zzvx zzvxVar, zzvz zzvzVar, Location location, zzwb zzwbVar, DataHolder dataHolder, zzwg zzwgVar, zzwi zzwiVar, zzwt zzwtVar, zzwq zzwqVar) {
        this.zzamm = activityRecognitionResult;
        this.zzamn = zzvxVar;
        this.zzamo = zzvzVar;
        this.zzcV = location;
        this.zzamp = zzwbVar;
        this.zzamq = dataHolder;
        this.zzamr = zzwgVar;
        this.zzams = zzwiVar;
        this.zzamt = zzwtVar;
        this.zzamu = zzwqVar;
    }

    public ActivityRecognitionResult getActivityRecognitionResult() {
        return this.zzamm;
    }

    public Location getLocation() {
        return this.zzcV;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzwm.zza(this, parcel, i);
    }

    public zzvx zzrR() {
        return this.zzamn;
    }

    public zzvz zzrS() {
        return this.zzamo;
    }

    public zzwb zzrT() {
        return this.zzamp;
    }

    public DataHolder zzrU() {
        return this.zzamq;
    }

    public zzwg zzrV() {
        return this.zzamr;
    }

    public zzwi zzrW() {
        return this.zzams;
    }

    public zzwt zzrX() {
        return this.zzamt;
    }

    public zzwq zzrY() {
        return this.zzamu;
    }
}
