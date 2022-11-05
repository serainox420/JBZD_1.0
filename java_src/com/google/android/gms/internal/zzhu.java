package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.internal.zzhp;
@zzme
/* loaded from: classes.dex */
public class zzhu extends zzhp.zza {
    private final NativeAppInstallAd.OnAppInstallAdLoadedListener zzHy;

    public zzhu(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.zzHy = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzhp
    public void zza(zzhj zzhjVar) {
        this.zzHy.onAppInstallAdLoaded(zzb(zzhjVar));
    }

    zzhk zzb(zzhj zzhjVar) {
        return new zzhk(zzhjVar);
    }
}
