package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.zzli;
@zzme
/* loaded from: classes.dex */
public final class zzln extends zzli.zza {
    private final PlayStorePurchaseListener zzAr;

    public zzln(PlayStorePurchaseListener playStorePurchaseListener) {
        this.zzAr = playStorePurchaseListener;
    }

    @Override // com.google.android.gms.internal.zzli
    public boolean isValidPurchase(String str) {
        return this.zzAr.isValidPurchase(str);
    }

    @Override // com.google.android.gms.internal.zzli
    public void zza(zzlh zzlhVar) {
        this.zzAr.onInAppPurchaseFinished(new zzll(zzlhVar));
    }
}
