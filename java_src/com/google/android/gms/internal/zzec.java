package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public final class zzec extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzec> CREATOR = new zzee();
    public final Bundle extras;
    public final int versionCode;
    public final long zzyT;
    public final int zzyU;
    public final List<String> zzyV;
    public final boolean zzyW;
    public final int zzyX;
    public final boolean zzyY;
    public final String zzyZ;
    public final zzfp zzza;
    public final Location zzzb;
    public final String zzzc;
    public final Bundle zzzd;
    public final Bundle zzze;
    public final List<String> zzzf;
    public final String zzzg;
    public final String zzzh;
    public final boolean zzzi;

    public zzec(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzfp zzfpVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3) {
        this.versionCode = i;
        this.zzyT = j;
        this.extras = bundle == null ? new Bundle() : bundle;
        this.zzyU = i2;
        this.zzyV = list;
        this.zzyW = z;
        this.zzyX = i3;
        this.zzyY = z2;
        this.zzyZ = str;
        this.zzza = zzfpVar;
        this.zzzb = location;
        this.zzzc = str2;
        this.zzzd = bundle2 == null ? new Bundle() : bundle2;
        this.zzze = bundle3;
        this.zzzf = list2;
        this.zzzg = str3;
        this.zzzh = str4;
        this.zzzi = z3;
    }

    public static void zzi(zzec zzecVar) {
        zzecVar.zzzd.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzecVar.extras);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzec)) {
            return false;
        }
        zzec zzecVar = (zzec) obj;
        return this.versionCode == zzecVar.versionCode && this.zzyT == zzecVar.zzyT && com.google.android.gms.common.internal.zzaa.equal(this.extras, zzecVar.extras) && this.zzyU == zzecVar.zzyU && com.google.android.gms.common.internal.zzaa.equal(this.zzyV, zzecVar.zzyV) && this.zzyW == zzecVar.zzyW && this.zzyX == zzecVar.zzyX && this.zzyY == zzecVar.zzyY && com.google.android.gms.common.internal.zzaa.equal(this.zzyZ, zzecVar.zzyZ) && com.google.android.gms.common.internal.zzaa.equal(this.zzza, zzecVar.zzza) && com.google.android.gms.common.internal.zzaa.equal(this.zzzb, zzecVar.zzzb) && com.google.android.gms.common.internal.zzaa.equal(this.zzzc, zzecVar.zzzc) && com.google.android.gms.common.internal.zzaa.equal(this.zzzd, zzecVar.zzzd) && com.google.android.gms.common.internal.zzaa.equal(this.zzze, zzecVar.zzze) && com.google.android.gms.common.internal.zzaa.equal(this.zzzf, zzecVar.zzzf) && com.google.android.gms.common.internal.zzaa.equal(this.zzzg, zzecVar.zzzg) && com.google.android.gms.common.internal.zzaa.equal(this.zzzh, zzecVar.zzzh) && this.zzzi == zzecVar.zzzi;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.versionCode), Long.valueOf(this.zzyT), this.extras, Integer.valueOf(this.zzyU), this.zzyV, Boolean.valueOf(this.zzyW), Integer.valueOf(this.zzyX), Boolean.valueOf(this.zzyY), this.zzyZ, this.zzza, this.zzzb, this.zzzc, this.zzzd, this.zzze, this.zzzf, this.zzzg, this.zzzh, Boolean.valueOf(this.zzzi));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzee.zza(this, parcel, i);
    }
}
