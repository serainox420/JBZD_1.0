package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.internal.zzle;
@zzme
/* loaded from: classes.dex */
public final class zzlj extends zzle.zza {
    private final InAppPurchaseListener zzAp;

    public zzlj(InAppPurchaseListener inAppPurchaseListener) {
        this.zzAp = inAppPurchaseListener;
    }

    @Override // com.google.android.gms.internal.zzle
    public void zza(zzld zzldVar) {
        this.zzAp.onInAppPurchaseRequested(new zzlm(zzldVar));
    }
}
