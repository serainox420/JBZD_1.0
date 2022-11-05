package com.video.adsdk.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.video.adsdk.VideoAdSDK;
import com.video.adsdk.interfaces.ADRequestPreparedAction;
import com.video.adsdk.interfaces.DeviceIdBundleReadyAction;
import com.video.adsdk.interfaces.checker.CarrierChecker;
import com.video.adsdk.interfaces.checker.ConnectivityChecker;
import com.video.adsdk.interfaces.checker.DeviceIdBundle;
import com.video.adsdk.interfaces.checker.DeviceTypeChecker;
import com.video.adsdk.interfaces.checker.GeolocationChecker;
import com.video.adsdk.interfaces.checker.PackageNameChecker;
import com.video.adsdk.interfaces.checker.PackageVersionChecker;
import com.video.adsdk.interfaces.checker.ResolutionChecker;
import com.video.adsdk.internal.checker.ADCarrierChecker;
import com.video.adsdk.internal.checker.ADConnectivityChecker;
import com.video.adsdk.internal.checker.ADDeviceIdBundle;
import com.video.adsdk.internal.checker.ADDeviceTypeChecker;
import com.video.adsdk.internal.checker.ADGeolocationChecker;
import com.video.adsdk.internal.checker.ADPackageNameChecker;
import com.video.adsdk.internal.checker.ADPackageVersionChecker;
import com.video.adsdk.internal.checker.ADResolutionChecker;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Map;
/* loaded from: classes3.dex */
public class ADRequest {
    private static final String AD_FORMAT = "_f";
    private static final String ALTERNATIVE = "alternative";
    private static final String ANDROID_DEVICE_ID = "androiddid";
    private static final String APP_DOMAIN = "ref";
    private static final String APP_VERSION = "appv";
    private static final String CARRIER_NAME = "carrier";
    private static final String CONNECTIVITY = "con";
    private static final String DEVICE_ID = "did";
    private static final String DEVICE_TYPE = "dvt";
    private static final String FORCE_NATIVE = "force_native";
    private static final String GEOLOCATION = "latlon";
    private static final String IDENTIFICATION_TYPE = "idt";
    private static final String LIVE_URL = "https://ads.smartstream.tv/r/";
    private static final String OPTOUT = "pfilter[optout]";
    private static final String OS = "aos";
    private static final String OS_CODENAME = "aosc";
    private static final String OS_RELEASE = "aosr";
    private static final String OS_VERSION = "aosv";
    private static final String PREFETCHING = "prefetching";
    private static final String PREFETCHING_CHOICE = "choice";
    private static final String PROFILE_DETAILS = "det";
    private static final String PUBLISHER_PLACEMENT_ID = "_ps";
    private static final String SCREEN_HEIGHT = "srh";
    private static final String SCREEN_WIDTH = "srw";
    private static final String SDK_NAME = "_s";
    private static final String SDK_REVISION = "rev";
    private static final String SDK_VERSION = "android_sdk_version";
    private static final String THIRD_PARTY_ID = "3pid";
    private static final String TIMESTAMP = "r";
    private static final String TOPIC_ID = "tpc";
    private static final String USER_AGENT = "ua";
    private static final String VOLUME = "volume";
    private CarrierChecker carrierChecker;
    private ConnectivityChecker connectivityChecker;
    private Map<String, String> customParameters = null;
    private DeviceIdBundle deviceIdBundle;
    private DeviceTypeChecker deviceTypeChecker;
    private GeolocationChecker geolocationChecker;
    private PackageNameChecker packageNameChecker;
    private PackageVersionChecker packageVersionChecker;
    private String publisherId;
    private ResolutionChecker resolutionChecker;

    public static void createRequest(final Context context, final String str, final ADRequestPreparedAction aDRequestPreparedAction) {
        new ADDeviceIdBundle(context, new DeviceIdBundleReadyAction() { // from class: com.video.adsdk.internal.ADRequest.1
            @Override // com.video.adsdk.interfaces.DeviceIdBundleReadyAction
            public void onDeviceIdBundleReady(DeviceIdBundle deviceIdBundle) {
                aDRequestPreparedAction.onADRequestPrepared(new ADRequest(context, deviceIdBundle, str));
            }
        });
    }

    public ADRequest(Context context, DeviceIdBundle deviceIdBundle, String str) {
        this.publisherId = str;
        this.deviceIdBundle = deviceIdBundle;
        initCheckers(context);
    }

    private void initCheckers(Context context) {
        this.carrierChecker = new ADCarrierChecker(context);
        this.connectivityChecker = new ADConnectivityChecker(context);
        this.geolocationChecker = new ADGeolocationChecker(context);
        this.packageVersionChecker = new ADPackageVersionChecker(context);
        this.packageNameChecker = new ADPackageNameChecker(context);
        this.resolutionChecker = new ADResolutionChecker(context);
        this.deviceTypeChecker = new ADDeviceTypeChecker(context);
    }

    public void setCustomParameters(Map<String, String> map) {
        this.customParameters = map;
    }

    public String getUrlForPrefetching(int i) {
        Uri.Builder commonUrl = getCommonUrl();
        if (commonUrl == null) {
            return null;
        }
        commonUrl.appendQueryParameter(PREFETCHING, "1");
        commonUrl.appendQueryParameter(PREFETCHING_CHOICE, String.valueOf(i));
        return getHost() + commonUrl.build().toString();
    }

    public String getUrlForPlay() {
        Uri.Builder commonUrl = getCommonUrl();
        if (commonUrl == null) {
            return null;
        }
        commonUrl.appendQueryParameter(PREFETCHING, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        return getHost() + commonUrl.build().toString();
    }

    private String getHost() {
        return LIVE_URL;
    }

    private Uri.Builder getCommonUrl() {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter(SDK_NAME, "asdk1");
        builder.appendQueryParameter(SDK_REVISION, VideoAdSDK.VIDEOADSDKVERSION);
        try {
            builder.appendQueryParameter(PUBLISHER_PLACEMENT_ID, URLDecoder.decode(this.publisherId, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        if (this.connectivityChecker.readCurrentValues()) {
            builder.appendQueryParameter(CONNECTIVITY, String.valueOf(this.connectivityChecker.getConnectionType()));
        }
        if (this.resolutionChecker.readCurrentValues()) {
            builder.appendQueryParameter(SCREEN_HEIGHT, String.valueOf(this.resolutionChecker.getScreenHeight()));
            builder.appendQueryParameter(SCREEN_WIDTH, String.valueOf(this.resolutionChecker.getScreenWidth()));
        }
        if (this.geolocationChecker.readCurrentValues()) {
            builder.appendQueryParameter(GEOLOCATION, String.valueOf(this.geolocationChecker.getLatitude()) + "," + String.valueOf(this.geolocationChecker.getLongitude()));
        }
        builder.appendQueryParameter(AD_FORMAT, "h5");
        if (this.deviceTypeChecker.readCurrentValues()) {
            builder.appendQueryParameter(DEVICE_TYPE, this.deviceTypeChecker.getDeviceType());
        }
        if (this.deviceIdBundle.hasDeviceId()) {
            int identificationType = this.deviceIdBundle.getIdentificationType();
            if (identificationType == -1) {
                return null;
            }
            builder.appendQueryParameter(IDENTIFICATION_TYPE, String.valueOf(identificationType));
            builder.appendQueryParameter("did", this.deviceIdBundle.getDeviceId());
            AdvertisingIdClient.Info advertisingId = this.deviceIdBundle.getAdvertisingId();
            if (advertisingId != null && advertisingId.isLimitAdTrackingEnabled()) {
                builder.appendQueryParameter(OPTOUT, "1");
            }
        }
        if (this.packageNameChecker.readCurrentValues()) {
            builder.appendQueryParameter(APP_DOMAIN, this.packageNameChecker.getPackageName());
        }
        if (this.packageVersionChecker.readCurrentValues()) {
            builder.appendQueryParameter(APP_VERSION, this.packageVersionChecker.getPackageVersion());
        }
        if (this.carrierChecker.readCurrentValues()) {
            builder.appendQueryParameter("carrier", this.carrierChecker.getCarrierName());
        }
        if (this.deviceIdBundle.getAndroidId() != null) {
            builder.appendQueryParameter(ANDROID_DEVICE_ID, this.deviceIdBundle.getAndroidId());
        }
        try {
            builder.appendQueryParameter(TIMESTAMP, "" + (System.currentTimeMillis() / 1000));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        builder.appendQueryParameter(ALTERNATIVE, "1");
        builder.appendQueryParameter(FORCE_NATIVE, "1");
        if (this.customParameters != null) {
            for (String str : this.customParameters.keySet()) {
                builder.appendQueryParameter(str, this.customParameters.get(str));
            }
        }
        return builder;
    }

    public DeviceIdBundle getDeviceIdBundle() {
        return this.deviceIdBundle;
    }

    public void setCarrierChecker(CarrierChecker carrierChecker) {
        this.carrierChecker = carrierChecker;
    }

    public void setConnectivityChecker(ConnectivityChecker connectivityChecker) {
        this.connectivityChecker = connectivityChecker;
    }

    public void setGeolocationChecker(GeolocationChecker geolocationChecker) {
        this.geolocationChecker = geolocationChecker;
    }

    public void setPackageVersionChecker(PackageVersionChecker packageVersionChecker) {
        this.packageVersionChecker = packageVersionChecker;
    }

    public void setDeviceIdBundle(DeviceIdBundle deviceIdBundle) {
        this.deviceIdBundle = deviceIdBundle;
    }

    public void setPackageNameChecker(PackageNameChecker packageNameChecker) {
        this.packageNameChecker = packageNameChecker;
    }

    public void setResolutionChecker(ResolutionChecker resolutionChecker) {
        this.resolutionChecker = resolutionChecker;
    }
}
