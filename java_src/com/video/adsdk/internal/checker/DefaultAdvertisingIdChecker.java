package com.video.adsdk.internal.checker;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.video.adsdk.interfaces.AdvertisingIdRequestCompletedAction;
import com.video.adsdk.interfaces.checker.AdvertisingIdChecker;
import java.io.IOException;
import java.util.concurrent.Executors;
/* loaded from: classes3.dex */
public class DefaultAdvertisingIdChecker implements AdvertisingIdChecker {
    Context context;

    public DefaultAdvertisingIdChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.AdvertisingIdChecker
    public void requestAdvertisingId(final AdvertisingIdRequestCompletedAction advertisingIdRequestCompletedAction) {
        Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.video.adsdk.internal.checker.DefaultAdvertisingIdChecker.1
            @Override // java.lang.Runnable
            public void run() {
                AdvertisingIdClient.Info info = null;
                try {
                    Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                    info = AdvertisingIdClient.getAdvertisingIdInfo(DefaultAdvertisingIdChecker.this.context);
                } catch (GooglePlayServicesNotAvailableException e) {
                    Log.e("VideoAdSDK", "Google Advertising ID not available! Google Play is not installed on this device.");
                } catch (GooglePlayServicesRepairableException e2) {
                    Log.e("VideoAdSDK", "Google Advertising ID not available! Encountered a recoverable error connecting to Google Play services.\nError message: " + e2.getMessage());
                } catch (IOException e3) {
                    Log.e("VideoAdSDK", "Google Advertising ID not available! Unrecoverable error connecting to Google Play services e.g., the old version of the service doesn't support getting AdvertisingId.\nError message: " + e3.getMessage());
                } catch (Exception e4) {
                    Log.e("VideoAdSDK", "Google Advertising ID not available!\nReason: " + e4.getMessage());
                }
                advertisingIdRequestCompletedAction.onAdvertisingIdRequestCompleted(info);
            }
        });
    }
}
