package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;
@zzme
/* loaded from: classes.dex */
public class zzll implements InAppPurchaseResult {
    private final zzlh zzPP;

    public zzll(zzlh zzlhVar) {
        this.zzPP = zzlhVar;
    }

    @Override // com.google.android.gms.ads.purchase.InAppPurchaseResult
    public void finishPurchase() {
        try {
            this.zzPP.finishPurchase();
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward finishPurchase to InAppPurchaseResult", e);
        }
    }

    @Override // com.google.android.gms.ads.purchase.InAppPurchaseResult
    public String getProductId() {
        try {
            return this.zzPP.getProductId();
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward getProductId to InAppPurchaseResult", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.purchase.InAppPurchaseResult
    public Intent getPurchaseData() {
        try {
            return this.zzPP.getPurchaseData();
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward getPurchaseData to InAppPurchaseResult", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.purchase.InAppPurchaseResult
    public int getResultCode() {
        try {
            return this.zzPP.getResultCode();
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward getPurchaseData to InAppPurchaseResult", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.purchase.InAppPurchaseResult
    public boolean isVerified() {
        try {
            return this.zzPP.isVerified();
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward isVerified to InAppPurchaseResult", e);
            return false;
        }
    }
}
