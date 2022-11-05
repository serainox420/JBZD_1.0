package com.loopme.request;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.loopme.common.Logging;
import com.loopme.common.StaticParams;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class AdRequestUrlBuilder {
    private static final String LOG_TAG = AdRequestUrlBuilder.class.getSimpleName();
    private static final String PARAM_APPKEY = "ak";
    private static final String PARAM_APP_VERSION = "av";
    private static final String PARAM_BUNDLE_ID = "bundleid";
    private static final String PARAM_CARRIER = "carrier";
    private static final String PARAM_CHARGE_LEVEL = "chl";
    private static final String PARAM_CONNECTION_TYPE = "ct";
    private static final String PARAM_DNT = "dnt";
    private static final String PARAM_GENDER = "gender";
    private static final String PARAM_KEYWORDS = "keywords";
    private static final String PARAM_LANGUAGE = "lng";
    private static final String PARAM_LATITUDE = "lat";
    private static final String PARAM_LONGITUDE = "lon";
    private static final String PARAM_MRAID = "mr";
    private static final String PARAM_ORIENTATION = "or";
    private static final String PARAM_PLUGGED = "plg";
    private static final String PARAM_SDK_VERSION = "sv";
    private static final String PARAM_V360 = "v360";
    private static final String PARAM_VIEWER_TOKEN = "vt";
    private static final String PARAM_WEBVIEW_VERSION = "webview";
    private static final String PARAM_WIFI_NAME = "wn";
    private static final String PARAM_YEAR_OF_BIRTH = "yob";
    private final Context mContext;

    public AdRequestUrlBuilder(Context context) {
        this.mContext = context;
        if (context == null) {
            Logging.out(LOG_TAG, "Context should not be null. Can't build request url");
        }
    }

    public String buildRequestUrl(String str, AdTargetingData adTargetingData) {
        Logging.out(LOG_TAG, "Start build request url");
        if (this.mContext == null) {
            return null;
        }
        AdRequestParametersProvider adRequestParametersProvider = AdRequestParametersProvider.getInstance();
        List<String> asList = Arrays.asList(StaticParams.BASE_URL.split("/"));
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        for (String str2 : asList) {
            if (asList.indexOf(str2) == 0) {
                builder.authority(str2);
            } else {
                builder.appendPath(str2);
            }
        }
        builder.appendQueryParameter(PARAM_APPKEY, str).appendQueryParameter(PARAM_CONNECTION_TYPE, String.valueOf(adRequestParametersProvider.getConnectionType(this.mContext))).appendQueryParameter(PARAM_LANGUAGE, adRequestParametersProvider.getLanguage()).appendQueryParameter(PARAM_SDK_VERSION, StaticParams.SDK_VERSION).appendQueryParameter(PARAM_V360, "1").appendQueryParameter(PARAM_APP_VERSION, adRequestParametersProvider.getAppVersion(this.mContext)).appendQueryParameter(PARAM_MRAID, adRequestParametersProvider.getMraidSupport()).appendQueryParameter(PARAM_ORIENTATION, adRequestParametersProvider.getOrientation(this.mContext)).appendQueryParameter(PARAM_VIEWER_TOKEN, adRequestParametersProvider.getViewerToken()).appendQueryParameter(PARAM_BUNDLE_ID, this.mContext.getPackageName()).appendQueryParameter(PARAM_WEBVIEW_VERSION, adRequestParametersProvider.getWebViewVersion(this.mContext));
        String latitude = adRequestParametersProvider.getLatitude();
        if (latitude != null) {
            builder.appendQueryParameter("lat", latitude);
        }
        String longitude = adRequestParametersProvider.getLongitude();
        if (longitude != null) {
            builder.appendQueryParameter("lon", longitude);
        }
        String carrier = adRequestParametersProvider.getCarrier(this.mContext);
        if (carrier != null) {
            builder.appendQueryParameter("carrier", carrier);
        }
        builder.appendQueryParameter("dnt", adRequestParametersProvider.isDntPresent() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        if (adRequestParametersProvider.isWifiInfoAvailable(this.mContext)) {
            String wifiName = adRequestParametersProvider.getWifiName(this.mContext);
            if (!TextUtils.isEmpty(wifiName)) {
                builder.appendQueryParameter(PARAM_WIFI_NAME, wifiName);
            }
        }
        if (adTargetingData != null && adTargetingData.getKeywords() != null) {
            builder.appendQueryParameter("keywords", adTargetingData.getKeywords());
        }
        if (adTargetingData != null && adTargetingData.getGender() != null) {
            builder.appendQueryParameter("gender", adTargetingData.getGender());
        }
        if (adTargetingData != null && adTargetingData.getYob() != 0) {
            builder.appendQueryParameter("yob", String.valueOf(adTargetingData.getYob()));
        }
        if (adTargetingData != null && !adTargetingData.getCustomParameters().isEmpty()) {
            for (CustomRequestParameter customRequestParameter : adTargetingData.getCustomParameters()) {
                builder.appendQueryParameter(customRequestParameter.getParamName(), customRequestParameter.getParamValue());
            }
        }
        String[] batteryInfo = adRequestParametersProvider.getBatteryInfo(this.mContext);
        builder.appendQueryParameter(PARAM_CHARGE_LEVEL, batteryInfo[0]);
        builder.appendQueryParameter(PARAM_PLUGGED, batteryInfo[1]);
        String uri = builder.build().toString();
        Logging.out(LOG_TAG, "Finish build request url");
        return uri;
    }
}
