package com.video.adsdk.interfaces.checker;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* loaded from: classes3.dex */
public interface DeviceIdBundle {
    public static final int IDENTIFICATION_TYPE_ADVERTISING_ID = 3;

    AdvertisingIdClient.Info getAdvertisingId();

    String getAndroidId();

    String getDeviceId();

    int getIdentificationType();

    String getMAC();

    String getMacSHA1();

    String getOpenUDID();

    boolean hasDeviceId();
}
