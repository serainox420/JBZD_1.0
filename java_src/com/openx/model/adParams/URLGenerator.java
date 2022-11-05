package com.openx.model.adParams;

import android.text.TextUtils;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.openx.common.deviceData.listeners.AdTruthListener;
import com.openx.common.deviceData.listeners.DeviceInfoListener;
import com.openx.common.deviceData.listeners.NetworkListener;
import com.openx.common.deviceData.listeners.OXMLocationListener;
import com.openx.common.utils.constants.Constants;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.BaseResponseHandler;
import com.openx.core.network.GenerateURLListener;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.AdError;
import com.openx.errors.PermissionDeniedForApplication;
import com.openx.errors.UnknownError;
import com.openx.model.adParams.AdCallParameters;
import com.openx.model.network.AdModelLoadedListener;
import com.openx.view.tp.chain.network.SDKChainLoadListener;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.Hashtable;
/* loaded from: classes3.dex */
public class URLGenerator {
    private static final String TAG = "URLGenerator";
    private transient BaseResponseHandler listener;
    private transient AdCallParameters mAdCallParams;
    private GenerateURLListener urlListener;

    public URLGenerator(GenerateURLListener generateURLListener, BaseResponseHandler baseResponseHandler) {
        this.listener = baseResponseHandler;
        this.urlListener = generateURLListener;
    }

    private void setAdCallParams(AdCallParameters adCallParameters) {
        this.mAdCallParams = adCallParameters;
    }

    public AdCallParameters getAdCallParams() {
        return this.mAdCallParams;
    }

    public String setURLParams(AdCallParameters adCallParameters) {
        StringBuilder sb = new StringBuilder();
        if (adCallParameters == null) {
            setAdCallParams(new AdCallParameters());
        } else {
            setAdCallParams(adCallParameters);
        }
        AdTruthListener adTruthManager = OXMManagersResolver.getInstance().getAdTruthManager();
        if (this.urlListener != null) {
            return this.urlListener.customURLParams(sb.toString(), getAdCallParams(), adTruthManager);
        }
        return sb.toString();
    }

    public String getURL(String str, Hashtable<String, String> hashtable) {
        Hashtable<String, String> hashtable2;
        Hashtable<String, String> hashtable3 = null;
        if (getAdCallParams() != null) {
            hashtable2 = getAdCallParams().getCustomParameters();
            hashtable3 = getAdCallParams().getOpenRTBParameters();
        } else {
            hashtable2 = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        if (hashtable != null) {
            detectUnspecifiedParams(hashtable);
            sb.append(convertParamsToString(hashtable));
        }
        if (hashtable2 != null) {
            sb.append(convertParamsToString(hashtable2));
        }
        if (hashtable3 != null) {
            sb.append(convertParamsToString(hashtable3));
        }
        return sb.toString();
    }

    private String convertParamsToString(Hashtable<String, String> hashtable) {
        String encode;
        StringBuilder sb = new StringBuilder();
        Enumeration<String> keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            String nextElement = keys.nextElement();
            String str = hashtable.get(nextElement);
            if (str != null && !str.equals("")) {
                try {
                    if (!nextElement.equals("af")) {
                        try {
                            encode = URLEncoder.encode(str.replaceAll("\\s+", ""), AudienceNetworkActivity.WEBVIEW_ENCODING);
                            str = encode.replace("+", "%20");
                        } catch (UnsupportedEncodingException e) {
                            str = encode;
                            e = e;
                            UnknownError unknownError = new UnknownError(e.getMessage());
                            Utils.log(this, unknownError.getMessage());
                            setErrorCallBack(unknownError);
                            sb.append("&" + nextElement + "=" + str);
                        }
                    }
                } catch (UnsupportedEncodingException e2) {
                    e = e2;
                }
                sb.append("&" + nextElement + "=" + str);
            }
        }
        return sb.toString();
    }

    private void detectUnspecifiedParams(Hashtable<String, String> hashtable) {
        DeviceInfoListener deviceManager = OXMManagersResolver.getInstance().getDeviceManager();
        OXMLocationListener locationManager = OXMManagersResolver.getInstance().getLocationManager();
        NetworkListener networkManager = OXMManagersResolver.getInstance().getNetworkManager();
        AdTruthListener adTruthManager = OXMManagersResolver.getInstance().getAdTruthManager();
        if (!hashtable.containsKey("sp")) {
            hashtable.put("sp", "Android");
        }
        setSDKVersionParam(hashtable);
        setMRAIDParam(hashtable);
        setDeviceDensityParam(hashtable, deviceManager);
        setAppNameParam(hashtable);
        setPackageNameParam(hashtable);
        setAdvertisingIdParams(hashtable);
        if (OXSettings.ADID == null || !OXSettings.isLimitAdTrackingEnabled) {
            if (locationManager != null) {
                setLocationParams(hashtable, deviceManager, locationManager);
            }
            setCarrierParam(hashtable, deviceManager);
            if (locationManager != null) {
                setCountryParam(hashtable, locationManager);
                setCityParam(hashtable, locationManager);
                setStateParam(hashtable, locationManager);
                setZipParam(hashtable, locationManager);
            }
            setDeviceIdParams(hashtable, deviceManager);
            setNetworkParams(hashtable, deviceManager, networkManager);
            setAdtruthParams(hashtable, adTruthManager);
        }
    }

    private void setZipParam(Hashtable<String, String> hashtable, OXMLocationListener oXMLocationListener) {
        String zipCode;
        if (!hashtable.containsKey("zip") && (zipCode = oXMLocationListener.getZipCode()) != null && !zipCode.equals("")) {
            hashtable.put("zip", zipCode);
        }
    }

    private void setStateParam(Hashtable<String, String> hashtable, OXMLocationListener oXMLocationListener) {
        String state;
        if (!hashtable.containsKey("stt") && (state = oXMLocationListener.getState()) != null && !state.equals("")) {
            hashtable.put("stt", state);
        }
    }

    private void setCityParam(Hashtable<String, String> hashtable, OXMLocationListener oXMLocationListener) {
        String city;
        if (!hashtable.containsKey("cty") && (city = oXMLocationListener.getCity()) != null && !city.equals("")) {
            hashtable.put("cty", city);
        }
    }

    private void setCountryParam(Hashtable<String, String> hashtable, OXMLocationListener oXMLocationListener) {
        String country;
        if (!hashtable.containsKey("cnt") && (country = oXMLocationListener.getCountry()) != null && !country.equals("")) {
            hashtable.put("cnt", country);
        }
    }

    private void setCarrierParam(Hashtable<String, String> hashtable, DeviceInfoListener deviceInfoListener) {
        String carrier;
        if (!hashtable.containsKey("crr") && (carrier = deviceInfoListener.getCarrier()) != null && !carrier.equals("")) {
            hashtable.put("crr", carrier);
        }
    }

    private void setAdvertisingIdParams(Hashtable<String, String> hashtable) {
        if (OXSettings.ADID != null) {
            hashtable.put("did.adid", OXSettings.ADID);
            hashtable.put("did.adid.enabled", String.valueOf(!OXSettings.isLimitAdTrackingEnabled));
        }
    }

    private void setPackageNameParam(Hashtable<String, String> hashtable) {
        if (OXSettings.getPackageName() != null) {
            hashtable.put("app.bundle", OXSettings.getPackageName());
        }
    }

    private void setAppNameParam(Hashtable<String, String> hashtable) {
        if (OXSettings.getAppName() != null) {
            hashtable.put("app.name", OXSettings.getAppName());
        }
    }

    private void setDeviceDensityParam(Hashtable<String, String> hashtable, DeviceInfoListener deviceInfoListener) {
        if (!hashtable.containsKey("dd")) {
            float deviceDensity = deviceInfoListener.getDeviceDensity();
            if (deviceDensity != BitmapDescriptorFactory.HUE_RED) {
                hashtable.put("dd", deviceDensity + "");
            }
        }
    }

    private void setMRAIDParam(Hashtable<String, String> hashtable) {
        if (!hashtable.containsKey("af") && !Utils.avoidJSC_MOB273()) {
            hashtable.put("af", Constants.AF_PARAM_DEFAULT);
        }
    }

    private void setAdtruthParams(Hashtable<String, String> hashtable, AdTruthListener adTruthListener) {
        if (!hashtable.containsKey("tp.at.i")) {
            String readAdTruth = adTruthListener.readAdTruth();
            if (!TextUtils.isEmpty(readAdTruth)) {
                try {
                    hashtable.put("tp.at.i", URLEncoder.encode(readAdTruth, "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    Utils.log(this, e.getMessage());
                }
            }
        }
    }

    private void setNetworkParams(Hashtable<String, String> hashtable, DeviceInfoListener deviceInfoListener, NetworkListener networkListener) {
        if (deviceInfoListener.isPermissionGranted("android.permission.ACCESS_NETWORK_STATE")) {
            setNetworkType(hashtable, networkListener);
        } else {
            setErrorCallBack(new PermissionDeniedForApplication("android.permission.ACCESS_NETWORK_STATE"));
        }
    }

    private void setNetworkType(Hashtable<String, String> hashtable, NetworkListener networkListener) {
        if (!hashtable.containsKey("net")) {
            AdCallParameters.OXMConnectionType connectionType = networkListener.getConnectionType();
            if (connectionType == AdCallParameters.OXMConnectionType.WIFI) {
                hashtable.put("net", "wifi");
            } else if (connectionType == AdCallParameters.OXMConnectionType.CELL) {
                hashtable.put("net", "cell");
            }
        }
    }

    private void setDeviceIdParams(Hashtable<String, String> hashtable, DeviceInfoListener deviceInfoListener) {
        String odin1;
        if (OXSettings.ADID == null) {
            String deviceId = deviceInfoListener.getDeviceId();
            if (!TextUtils.isEmpty(deviceId)) {
                hashtable.put("did.ai.md5", Utils.md5(deviceId));
                hashtable.put("did.ai.sha1", Utils.generateSHA1(deviceId));
            }
            if (!hashtable.containsKey("did.o1") && (odin1 = deviceInfoListener.getODIN1()) != null && !odin1.equals("")) {
                hashtable.put("did.o1", odin1);
            }
            String deviceMacAddress = deviceInfoListener.getDeviceMacAddress();
            if (!TextUtils.isEmpty(deviceMacAddress)) {
                String replace = deviceMacAddress.replace(":", "");
                hashtable.put("did.ma.md5", Utils.md5(replace));
                hashtable.put("did.ma.sha1", Utils.generateSHA1(replace));
            }
        }
    }

    private void setLocationParams(Hashtable<String, String> hashtable, DeviceInfoListener deviceInfoListener, OXMLocationListener oXMLocationListener) {
        if (deviceInfoListener.isPermissionGranted("android.permission.ACCESS_FINE_LOCATION")) {
            setLocation(hashtable, oXMLocationListener);
        } else {
            setErrorCallBack(new PermissionDeniedForApplication("android.permission.ACCESS_FINE_LOCATION"));
        }
    }

    private void setErrorCallBack(AdError adError) {
        if (this.listener != null && (this.listener instanceof AdModelLoadedListener)) {
            ((AdModelLoadedListener) this.listener).adModelNonCriticalError(adError);
        } else {
            ((SDKChainLoadListener) this.listener).onSDKChainLoadNonCriticalError(adError);
        }
    }

    private void setLocation(Hashtable<String, String> hashtable, OXMLocationListener oXMLocationListener) {
        if (!hashtable.containsKey("lat")) {
            Double latitude = oXMLocationListener.getLatitude();
            if (latitude == null) {
                oXMLocationListener.resetLocation();
                latitude = oXMLocationListener.getLatitude();
            }
            if (latitude != null) {
                OXLog.debug(TAG, "lat: " + String.valueOf(latitude.doubleValue()));
                hashtable.put("lat", String.valueOf(latitude.doubleValue()));
                hashtable.put("ltsrc", "gps");
            }
        }
        if (!hashtable.containsKey(PhoenixConstants.LONGITUDE_PARAM)) {
            Double longtitude = oXMLocationListener.getLongtitude();
            if (longtitude == null) {
                oXMLocationListener.resetLocation();
                longtitude = oXMLocationListener.getLongtitude();
            }
            if (longtitude != null) {
                OXLog.debug(TAG, "lon: " + String.valueOf(longtitude.doubleValue()));
                hashtable.put(PhoenixConstants.LONGITUDE_PARAM, String.valueOf(longtitude.doubleValue()));
            }
        }
    }

    private void setSDKVersionParam(Hashtable<String, String> hashtable) {
        if (!hashtable.containsKey("sv")) {
            try {
                String str = OXSettings.SDK_VERSION;
                if (str != null) {
                    hashtable.put("sv", str);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
