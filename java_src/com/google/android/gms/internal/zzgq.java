package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.internal.zzgp;
@zzme
/* loaded from: classes.dex */
public final class zzgq extends zzgp.zza {
    private final OnCustomRenderedAdLoadedListener zzAq;

    public zzgq(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzAq = onCustomRenderedAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzgp
    public void zza(zzgo zzgoVar) {
        this.zzAq.onCustomRenderedAdLoaded(new zzgn(zzgoVar));
    }
}
