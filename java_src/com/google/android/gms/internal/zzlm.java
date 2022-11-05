package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchase;
@zzme
/* loaded from: classes.dex */
public class zzlm implements InAppPurchase {
    private final zzld zzPC;

    public zzlm(zzld zzldVar) {
        this.zzPC = zzldVar;
    }

    @Override // com.google.android.gms.ads.purchase.InAppPurchase
    public String getProductId() {
        try {
            return this.zzPC.getProductId();
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward getProductId to InAppPurchase", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.purchase.InAppPurchase
    public void recordPlayBillingResolution(int i) {
        try {
            this.zzPC.recordPlayBillingResolution(i);
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward recordPlayBillingResolution to InAppPurchase", e);
        }
    }

    @Override // com.google.android.gms.ads.purchase.InAppPurchase
    public void recordResolution(int i) {
        try {
            this.zzPC.recordResolution(i);
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward recordResolution to InAppPurchase", e);
        }
    }
}
