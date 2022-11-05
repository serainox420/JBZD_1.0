package com.adcolony.sdk;

import android.net.Uri;
import com.adcolony.sdk.AdColonyPubServices;
import java.util.Map;
/* loaded from: classes.dex */
public class AdColonyPubServicesCallbacks {
    public void onServiceAvailabilityChanged(AdColonyPubServices.ServiceAvailability serviceAvailability) {
    }

    public void onOverlayVisibilityChanged() {
    }

    public void onInAppPurchaseRewardSuccess(String str, int i) {
    }

    public void onInAppPurchaseRewardDidFail(String str, String str2) {
    }

    public void onStatsRefreshed() {
    }

    public void onGrantDigitalProductItem(AdColonyPubServicesDigitalItem adColonyPubServicesDigitalItem) {
    }

    public void onPushRegistrationSuccess(String str) {
    }

    public void onPushRegistrationFailure(Exception exc) {
    }

    public void onPushNotificationReceived(AdColonyPubServicesPushNotification adColonyPubServicesPushNotification) {
    }

    public void onOpenUrl(Uri uri, Map<String, String> map, boolean z) {
    }

    public void onVIPInformationUpdated() {
    }
}
