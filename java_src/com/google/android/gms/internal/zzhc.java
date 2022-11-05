package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.formats.NativeAdOptions;
@zzme
/* loaded from: classes.dex */
public class zzhc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzhc> CREATOR = new zzhd();
    public final int versionCode;
    public final boolean zzHa;
    public final int zzHb;
    public final boolean zzHc;
    public final int zzHd;
    public final zzft zzHe;

    public zzhc(int i, boolean z, int i2, boolean z2, int i3, zzft zzftVar) {
        this.versionCode = i;
        this.zzHa = z;
        this.zzHb = i2;
        this.zzHc = z2;
        this.zzHd = i3;
        this.zzHe = zzftVar;
    }

    public zzhc(NativeAdOptions nativeAdOptions) {
        this(3, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzft(nativeAdOptions.getVideoOptions()) : null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzhd.zza(this, parcel, i);
    }
}
