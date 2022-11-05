package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;
@zzme
/* loaded from: classes.dex */
public final class zzkg implements MediationAdRequest {
    private final int zzLB;
    private final Date zzcR;
    private final Set<String> zzcT;
    private final boolean zzcU;
    private final Location zzcV;
    private final int zzzk;
    private final boolean zzzw;

    public zzkg(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2) {
        this.zzcR = date;
        this.zzzk = i;
        this.zzcT = set;
        this.zzcV = location;
        this.zzcU = z;
        this.zzLB = i2;
        this.zzzw = z2;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public Date getBirthday() {
        return this.zzcR;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public int getGender() {
        return this.zzzk;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public Set<String> getKeywords() {
        return this.zzcT;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public Location getLocation() {
        return this.zzcV;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public boolean isDesignedForFamilies() {
        return this.zzzw;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public boolean isTesting() {
        return this.zzcU;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public int taggedForChildDirectedTreatment() {
        return this.zzLB;
    }
}
