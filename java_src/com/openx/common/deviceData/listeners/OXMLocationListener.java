package com.openx.common.deviceData.listeners;

import com.openx.core.sdk.OXMManager;
/* loaded from: classes3.dex */
public interface OXMLocationListener extends OXMManager {
    String getCity();

    String getCountry();

    Double getLatitude();

    Double getLongtitude();

    String getState();

    String getZipCode();

    void resetLocation();
}
