package com.video.adsdk.internal.checker;

import android.content.Context;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.video.adsdk.interfaces.AdvertisingIdRequestCompletedAction;
import com.video.adsdk.interfaces.DeviceIdBundleReadyAction;
import com.video.adsdk.interfaces.checker.DeviceIdBundle;
import com.video.adsdk.internal.Helper;
import net.openudid.android.OpenUDID;
/* loaded from: classes3.dex */
public class ADDeviceIdBundle implements DeviceIdBundle {
    private AdvertisingIdClient.Info advertisingId;
    private String androidId;
    private Identification identification;
    private String mac;
    private String macSHA1;
    private String openUDID;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class Identification {
        final String deviceId;
        final int identificationType;

        Identification() {
            if (ADDeviceIdBundle.idIsValid(ADDeviceIdBundle.this.advertisingId)) {
                this.identificationType = 3;
                this.deviceId = ADDeviceIdBundle.this.advertisingId.getId();
                return;
            }
            Log.w("VIDEO_AD_SDK", "No avertising ID detected");
            this.deviceId = null;
            this.identificationType = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean idIsValid(Object obj) {
        return obj != null;
    }

    private static boolean androidIdIsValid(String str) {
        return idIsValid(str) && str.length() == 16;
    }

    public ADDeviceIdBundle(Context context, DeviceIdBundleReadyAction deviceIdBundleReadyAction) {
        readDeviceIds(context, deviceIdBundleReadyAction);
    }

    private void readDeviceIds(Context context, final DeviceIdBundleReadyAction deviceIdBundleReadyAction) {
        readOpenUDID(context);
        readMac(context);
        readAndroidId(context);
        readAdvertisingId(context, new AdvertisingIdRequestCompletedAction() { // from class: com.video.adsdk.internal.checker.ADDeviceIdBundle.1
            @Override // com.video.adsdk.interfaces.AdvertisingIdRequestCompletedAction
            public void onAdvertisingIdRequestCompleted(AdvertisingIdClient.Info info) {
                ADDeviceIdBundle.this.advertisingId = info;
                ADDeviceIdBundle.this.identification = new Identification();
                deviceIdBundleReadyAction.onDeviceIdBundleReady(ADDeviceIdBundle.this);
            }
        });
    }

    private void readOpenUDID(Context context) {
        try {
            OpenUDID.syncContext(context);
            this.openUDID = OpenUDID.getOpenUDIDInContext();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void readMac(Context context) {
        try {
            ADMacAddressChecker aDMacAddressChecker = new ADMacAddressChecker(context);
            if (aDMacAddressChecker.readCurrentValues()) {
                this.mac = getNormalizedMacAddress(aDMacAddressChecker.getMacAddress());
                this.macSHA1 = Helper.SHA1(this.mac);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void readAndroidId(Context context) {
        ADAndroidDeviceIdChecker aDAndroidDeviceIdChecker = new ADAndroidDeviceIdChecker(context);
        if (aDAndroidDeviceIdChecker.readCurrentValues()) {
            this.androidId = aDAndroidDeviceIdChecker.getAndroidDeviceId();
        }
    }

    private void readAdvertisingId(Context context, AdvertisingIdRequestCompletedAction advertisingIdRequestCompletedAction) {
        try {
            new DefaultAdvertisingIdChecker(context).requestAdvertisingId(advertisingIdRequestCompletedAction);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.video.adsdk.interfaces.checker.DeviceIdBundle
    public boolean hasDeviceId() {
        return getDeviceId() != null;
    }

    @Override // com.video.adsdk.interfaces.checker.DeviceIdBundle
    public AdvertisingIdClient.Info getAdvertisingId() {
        return this.advertisingId;
    }

    @Override // com.video.adsdk.interfaces.checker.DeviceIdBundle
    public String getAndroidId() {
        return this.androidId;
    }

    @Override // com.video.adsdk.interfaces.checker.DeviceIdBundle
    public String getMAC() {
        return this.mac;
    }

    @Override // com.video.adsdk.interfaces.checker.DeviceIdBundle
    public String getMacSHA1() {
        return this.macSHA1;
    }

    @Override // com.video.adsdk.interfaces.checker.DeviceIdBundle
    public String getOpenUDID() {
        return this.openUDID;
    }

    @Override // com.video.adsdk.interfaces.checker.DeviceIdBundle
    public String getDeviceId() {
        return this.identification.deviceId;
    }

    @Override // com.video.adsdk.interfaces.checker.DeviceIdBundle
    public int getIdentificationType() {
        return this.identification.identificationType;
    }

    private static String getNormalizedMacAddress(String str) {
        String[] split;
        try {
            String str2 = "";
            for (String str3 : str.split(":")) {
                if (str3.length() == 0) {
                    str3 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                }
                str2 = str2 + String.format("%02X", Long.decode("0x" + str3)) + ":";
            }
            return str2.substring(0, str2.length() - 1);
        } catch (Exception e) {
            return str.toUpperCase();
        }
    }
}
