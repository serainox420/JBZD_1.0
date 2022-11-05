package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.Date;
import java.util.List;
import java.util.Set;
@zzme
/* loaded from: classes.dex */
public final class zzkl implements NativeMediationAdRequest {
    private final int zzLB;
    private final Date zzcR;
    private final Set<String> zzcT;
    private final boolean zzcU;
    private final Location zzcV;
    private final zzhc zztp;
    private final List<String> zztq;
    private final int zzzk;
    private final boolean zzzw;

    public zzkl(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzhc zzhcVar, List<String> list, boolean z2) {
        this.zzcR = date;
        this.zzzk = i;
        this.zzcT = set;
        this.zzcV = location;
        this.zzcU = z;
        this.zzLB = i2;
        this.zztp = zzhcVar;
        this.zztq = list;
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

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public NativeAdOptions getNativeAdOptions() {
        if (this.zztp == null) {
            return null;
        }
        NativeAdOptions.Builder requestMultipleImages = new NativeAdOptions.Builder().setReturnUrlsForImageAssets(this.zztp.zzHa).setImageOrientation(this.zztp.zzHb).setRequestMultipleImages(this.zztp.zzHc);
        if (this.zztp.versionCode >= 2) {
            requestMultipleImages.setAdChoicesPlacement(this.zztp.zzHd);
        }
        if (this.zztp.versionCode >= 3 && this.zztp.zzHe != null) {
            requestMultipleImages.setVideoOptions(new VideoOptions.Builder().setStartMuted(this.zztp.zzHe.zzAU).build());
        }
        return requestMultipleImages.build();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public boolean isAppInstallAdRequested() {
        return this.zztq != null && this.zztq.contains("2");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public boolean isContentAdRequested() {
        return this.zztq != null && this.zztq.contains("1");
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
