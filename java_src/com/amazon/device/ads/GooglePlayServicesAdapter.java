package com.amazon.device.ads;

import com.amazon.device.ads.GooglePlayServices;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GooglePlayServicesAdapter {
    private static final String LOGTAG = GooglePlayServicesAdapter.class.getSimpleName();
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    public GooglePlayServices.AdvertisingInfo getAdvertisingIdentifierInfo() {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(MobileAdsInfoStore.getInstance().getApplicationContext());
            this.logger.v("The Google Play Services Advertising Identifier was successfully retrieved.");
            return new GooglePlayServices.AdvertisingInfo().setAdvertisingIdentifier(advertisingIdInfo.getId()).setLimitAdTrackingEnabled(advertisingIdInfo.isLimitAdTrackingEnabled());
        } catch (GooglePlayServicesNotAvailableException e) {
            this.logger.v("Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesNotAvailableException.");
            return GooglePlayServices.AdvertisingInfo.createNotAvailable();
        } catch (GooglePlayServicesRepairableException e2) {
            this.logger.v("Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesRepairableException.");
            return new GooglePlayServices.AdvertisingInfo();
        } catch (IOException e3) {
            this.logger.e("Retrieving the Google Play Services Advertising Identifier caused an IOException.");
            return new GooglePlayServices.AdvertisingInfo();
        } catch (IllegalStateException e4) {
            this.logger.e("The Google Play Services Advertising Identifier could not be retrieved: %s", e4.getMessage());
            return new GooglePlayServices.AdvertisingInfo();
        }
    }
}
