package com.openx.common.deviceData.listeners;

import com.openx.sdk.calendar.OXMCalendarEvent;
import java.io.IOException;
/* loaded from: classes3.dex */
public interface DeviceInfoListener {
    boolean canStorePicture();

    void createCalendarEvent(OXMCalendarEvent oXMCalendarEvent) throws Exception;

    String getCarrier();

    float getDeviceDensity();

    String getDeviceId();

    String getDeviceMacAddress();

    int getDeviceOrientation();

    String getODIN1();

    int getScreenHeight();

    int getScreenWidth();

    boolean hasTelephony();

    boolean isPermissionGranted(String str);

    boolean isScreenLocked();

    boolean isScreenOn();

    void playVideo(String str) throws IOException;

    void storePicture(String str) throws Exception;
}
