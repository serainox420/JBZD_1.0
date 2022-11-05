package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzb extends com.google.android.gms.common.internal.safeparcel.zza {
    private final String packageName;
    private final String version;
    private final int versionCode;
    private final String zzaSp;
    public static final zzb zzaSo = new zzb("com.google.android.gms", null, null);
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(int i, String str, String str2, String str3) {
        this.versionCode = i;
        this.packageName = (String) com.google.android.gms.common.internal.zzac.zzw(str);
        this.version = "";
        this.zzaSp = str3;
    }

    public zzb(String str, String str2, String str3) {
        this(1, str, "", str3);
    }

    private boolean zza(zzb zzbVar) {
        return this.packageName.equals(zzbVar.packageName) && com.google.android.gms.common.internal.zzaa.equal(this.version, zzbVar.version) && com.google.android.gms.common.internal.zzaa.equal(this.zzaSp, zzbVar.zzaSp);
    }

    public static zzb zzdV(String str) {
        return zzf(str, null, null);
    }

    public static zzb zzf(String str, String str2, String str3) {
        return "com.google.android.gms".equals(str) ? zzaSo : new zzb(str, str2, str3);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof zzb) && zza((zzb) obj));
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getVersion() {
        return this.version;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.packageName, this.version, this.zzaSp);
    }

    public String toString() {
        return String.format("Application{%s:%s:%s}", this.packageName, this.version, this.zzaSp);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    public String zzBV() {
        return this.zzaSp;
    }
}
