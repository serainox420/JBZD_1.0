package com.google.android.gms.ads.purchase;
/* loaded from: classes2.dex */
public interface PlayStorePurchaseListener {
    boolean isValidPurchase(String str);

    void onInAppPurchaseFinished(InAppPurchaseResult inAppPurchaseResult);
}
