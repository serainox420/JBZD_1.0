package com.mdotm.android.utils;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes3.dex */
public class MdotMAdInfo {
    public static AdvertisingIdClient.Info getAdInfo(Context context) {
        try {
            Log.d("this", "GPS is ");
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            try {
                return AdvertisingIdClient.getAdvertisingIdInfo(context.getApplicationContext());
            } catch (GooglePlayServicesNotAvailableException e) {
                e.printStackTrace();
                return null;
            } catch (GooglePlayServicesRepairableException e2) {
                e2.printStackTrace();
                return null;
            } catch (IOException e3) {
                e3.printStackTrace();
                return null;
            } catch (IllegalStateException e4) {
                e4.printStackTrace();
                return null;
            }
        } catch (ClassNotFoundException e5) {
            Log.d("this", "GPS not found ");
            e5.printStackTrace();
            return null;
        }
    }
}
