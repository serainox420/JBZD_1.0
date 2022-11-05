package com.amazon.device.ads;

import android.os.Build;
/* loaded from: classes.dex */
class AndroidBuildInfo {
    private String make = Build.MANUFACTURER;
    private String model = Build.MODEL;
    private String osVersion = Build.VERSION.RELEASE;
    private int sdkInt = Build.VERSION.SDK_INT;

    public String getMake() {
        return this.make;
    }

    public String getModel() {
        return this.model;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public int getSDKInt() {
        return this.sdkInt;
    }
}
