package com.facebook.devicerequests.internal;

import android.annotation.TargetApi;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class DeviceRequestsHelper {
    static final String DEVICE_INFO_DEVICE = "device";
    static final String DEVICE_INFO_MODEL = "model";
    public static final String DEVICE_INFO_PARAM = "device_info";
    static final String SDK_FLAVOR = "android";
    static final String SDK_HEADER = "fbsdk";
    static final String SERVICE_TYPE = "_fb._tcp.";
    private static HashMap<String, NsdManager.RegistrationListener> deviceRequestsListeners = new HashMap<>();

    public static String getDeviceInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(DEVICE_INFO_DEVICE, Build.DEVICE);
            jSONObject.put("model", Build.MODEL);
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    public static boolean startAdvertisementService(String str) {
        if (isAvailable()) {
            return startAdvertisementServiceImpl(str);
        }
        return false;
    }

    public static boolean isAvailable() {
        return Build.VERSION.SDK_INT >= 16 && FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId()).getSmartLoginOptions().contains(SmartLoginOption.Enabled);
    }

    public static void cleanUpAdvertisementService(String str) {
        cleanUpAdvertisementServiceImpl(str);
    }

    @TargetApi(16)
    private static boolean startAdvertisementServiceImpl(final String str) {
        if (!deviceRequestsListeners.containsKey(str)) {
            final String format = String.format("%s_%s_%s", SDK_HEADER, String.format("%s-%s", "android", FacebookSdk.getSdkVersion().replace('.', '|')), str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType(SERVICE_TYPE);
            nsdServiceInfo.setServiceName(format);
            nsdServiceInfo.setPort(80);
            NsdManager.RegistrationListener registrationListener = new NsdManager.RegistrationListener() { // from class: com.facebook.devicerequests.internal.DeviceRequestsHelper.1
                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceRegistered(NsdServiceInfo nsdServiceInfo2) {
                    if (!format.equals(nsdServiceInfo2.getServiceName())) {
                        DeviceRequestsHelper.cleanUpAdvertisementService(str);
                    }
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo2) {
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                    DeviceRequestsHelper.cleanUpAdvertisementService(str);
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                }
            };
            deviceRequestsListeners.put(str, registrationListener);
            ((NsdManager) FacebookSdk.getApplicationContext().getSystemService("servicediscovery")).registerService(nsdServiceInfo, 1, registrationListener);
        }
        return true;
    }

    @TargetApi(16)
    private static void cleanUpAdvertisementServiceImpl(String str) {
        NsdManager.RegistrationListener registrationListener = deviceRequestsListeners.get(str);
        if (registrationListener != null) {
            ((NsdManager) FacebookSdk.getApplicationContext().getSystemService("servicediscovery")).unregisterService(registrationListener);
            deviceRequestsListeners.remove(str);
        }
    }
}
