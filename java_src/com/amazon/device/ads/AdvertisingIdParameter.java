package com.amazon.device.ads;

import com.amazon.device.ads.AdvertisingIdentifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdvertisingIdParameter implements UserIdParameter {
    private static final String DEVICE_ID_KEY = "deviceId";
    private final AdvertisingIdentifier advertisingIdentifier;
    private AdvertisingIdentifier.Info advertisingIndentifierInfo;
    private final DebugProperties debugProperties;
    private DeviceInfo deviceInfo;
    private final Settings settings;

    public AdvertisingIdParameter() {
        this(new AdvertisingIdentifier(), Settings.getInstance(), DebugProperties.getInstance(), MobileAdsInfoStore.getInstance().getDeviceInfo());
    }

    AdvertisingIdParameter(AdvertisingIdentifier advertisingIdentifier, Settings settings, DebugProperties debugProperties, DeviceInfo deviceInfo) {
        this.advertisingIdentifier = advertisingIdentifier;
        this.settings = settings;
        this.debugProperties = debugProperties;
        this.deviceInfo = deviceInfo;
    }

    private boolean canIdentify() {
        boolean z = false;
        if (this.advertisingIndentifierInfo == null) {
            AdvertisingIdentifier advertisingIdentifier = this.advertisingIdentifier;
            if (this.settings.getInt("configVersion", 0) != 0) {
                z = true;
            }
            advertisingIdentifier.setShouldSetCurrentAdvertisingIdentifier(z);
            this.advertisingIndentifierInfo = this.advertisingIdentifier.getAdvertisingIdentifierInfo();
        }
        if (this.deviceInfo == null) {
            this.deviceInfo = MobileAdsInfoStore.getInstance().getDeviceInfo();
        }
        return this.advertisingIndentifierInfo.canDo();
    }

    @Override // com.amazon.device.ads.UserIdParameter
    public boolean evaluate(WebRequest webRequest) {
        String debugPropertyAsString;
        if (canIdentify() && (debugPropertyAsString = this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_IDFA, this.advertisingIndentifierInfo.getAdvertisingIdentifier())) != null) {
            webRequest.putUnencodedQueryParameter("idfa", debugPropertyAsString);
        } else {
            webRequest.putUnencodedQueryParameter(DEVICE_ID_KEY, this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_SHA1UDID, this.settings.getString(DEVICE_ID_KEY, this.deviceInfo.getUdidSha1())));
        }
        return true;
    }
}
