package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.internal.zzhs;
@zzme
/* loaded from: classes.dex */
public class zzhx extends zzhs.zza {
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener zzHB;

    public zzhx(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener) {
        this.zzHB = onCustomTemplateAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzhs
    public void zza(zzhn zzhnVar) {
        this.zzHB.onCustomTemplateAdLoaded(new zzho(zzhnVar));
    }
}
