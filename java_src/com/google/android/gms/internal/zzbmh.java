package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes.dex */
public class zzbmh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbmh> CREATOR = new zzbmi();
    @zzbvf("registered")
    private boolean zzagw;
    @zzbmb
    public final int zzaiI;
    @zzbvf("authUri")
    private String zzbYw;
    @zzbvf("providerId")
    private String zzbYx;
    @zzbvf("forExistingProvider")
    private boolean zzbYy;
    @zzbvf("allProviders")
    private zzbmv zzbYz;

    public zzbmh() {
        this.zzaiI = 1;
        this.zzbYz = zzbmv.zzWl();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmh(int i, String str, boolean z, String str2, boolean z2, zzbmv zzbmvVar) {
        this.zzaiI = i;
        this.zzbYw = str;
        this.zzagw = z;
        this.zzbYx = str2;
        this.zzbYy = z2;
        this.zzbYz = zzbmvVar == null ? zzbmv.zzWl() : zzbmv.zza(zzbmvVar);
    }

    public List<String> getAllProviders() {
        return this.zzbYz.zzWk();
    }

    public String getProviderId() {
        return this.zzbYx;
    }

    public boolean isRegistered() {
        return this.zzagw;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbmi.zza(this, parcel, i);
    }

    public String zzVW() {
        return this.zzbYw;
    }

    public boolean zzVX() {
        return this.zzbYy;
    }

    public zzbmv zzVY() {
        return this.zzbYz;
    }
}
