package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.internal.zzhq;
@zzme
/* loaded from: classes.dex */
public class zzhv extends zzhq.zza {
    private final NativeContentAd.OnContentAdLoadedListener zzHz;

    public zzhv(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.zzHz = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzhq
    public void zza(zzhl zzhlVar) {
        this.zzHz.onContentAdLoaded(zzb(zzhlVar));
    }

    zzhm zzb(zzhl zzhlVar) {
        return new zzhm(zzhlVar);
    }
}
