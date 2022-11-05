package com.inmobi.commons.network;

import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.data.AppInfo;
import com.inmobi.commons.data.DemogInfo;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.data.LocationInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.uid.UID;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public class RequestBuilderUtils {
    public static final String KEY_MK_SITE_ID = "mk-siteid";
    public static final String KEY_MK_SITE_SLOT_ID = "mk-site-slotid";
    public static final String RULE_ID = "rule-id";

    public static void fillDemogMap(Map<String, Object> map) {
        if (map != null) {
            if (DemogInfo.getAge().intValue() > 0) {
                map.put("u-age", DemogInfo.getAge());
            }
            if (DemogInfo.getPostalCode() != null) {
                map.put("u-postalCode", DemogInfo.getPostalCode());
            }
            if (DemogInfo.getAreaCode() != null) {
                map.put("u-areaCode", DemogInfo.getAreaCode());
            }
            if (DemogInfo.getDateOfBirth() != null) {
                map.put("u-dateOfBirth", a(DemogInfo.getDateOfBirth()));
            }
            if (DemogInfo.getEducation() != null) {
                map.put("u-education", DemogInfo.getEducation().toString().toLowerCase(Locale.getDefault()));
            }
            if (DemogInfo.getEthnicity() != null) {
                map.put("u-ethnicity", DemogInfo.getEthnicity().toString().toLowerCase(Locale.getDefault()));
            }
            if (DemogInfo.getGender() != null) {
                map.put("u-gender", DemogInfo.getGender().toString().toLowerCase(Locale.getDefault()));
            }
            if (DemogInfo.getHasChildren() != null) {
                map.put("u-haschildren", DemogInfo.getHasChildren().toString().toLowerCase(Locale.getDefault()));
            }
            if (DemogInfo.getIncome().intValue() > 0) {
                map.put("u-income", DemogInfo.getIncome());
            }
            if (DemogInfo.getInterests() != null) {
                map.put("u-interests", DemogInfo.getInterests());
            }
            if (DemogInfo.getLanguage() != null) {
                map.put("u-language", DemogInfo.getLanguage());
            }
            if (DemogInfo.getLocationWithCityStateCountry() != null) {
                map.put("u-location", DemogInfo.getLocationWithCityStateCountry());
            }
            if (DemogInfo.getMaritalStatus() != null) {
                map.put("u-marital", DemogInfo.getMaritalStatus().toString().toLowerCase(Locale.getDefault()));
            }
            if (DemogInfo.getSexualOrientation() != null) {
                map.put("u-sexualorientation", DemogInfo.getSexualOrientation().toString().toLowerCase(Locale.getDefault()));
            }
        }
    }

    public static void fillLocationMap(Map<String, Object> map) {
        int i;
        if (map != null) {
            String currentLocationStr = LocationInfo.currentLocationStr();
            if (currentLocationStr != null && !"".equals(currentLocationStr)) {
                map.put("u-latlong-accu", currentLocationStr);
                if (LocationInfo.getGeoTS() > 0) {
                    map.put("u-ll-ts", Long.valueOf(LocationInfo.getGeoTS()));
                }
                map.put("sdk-collected", Integer.valueOf(LocationInfo.isSDKSetLocation()));
            }
            if (DemogInfo.isLocationInquiryAllowed()) {
                i = 1;
            } else {
                i = 0;
            }
            map.put("loc-allowed", Integer.valueOf(i));
            WifiInfo wifiInfo = null;
            try {
                wifiInfo = IceDataCollector.getConnectedWifiInfo(InternalSDKUtil.getContext());
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "No wifi permissions set, unable to send wifi data");
            }
            if (wifiInfo != null) {
                map.put("c-ap-bssid", Long.valueOf(wifiInfo.bssid));
            }
            try {
                List<Long> visbleWifiInfoBssId = IceDataCollector.getVisbleWifiInfoBssId(InternalSDKUtil.getContext());
                if (visbleWifiInfoBssId != null && visbleWifiInfoBssId.size() != 0) {
                    map.put("v-ap-bssid", InternalSDKUtil.convertListToDelimitedString(visbleWifiInfoBssId, ","));
                }
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't get cell tower info in Request Builder", e2);
            }
            try {
                List<Integer> visibleCellTowerIds = CellUtil.getVisibleCellTowerIds(InternalSDKUtil.getContext());
                if (visibleCellTowerIds != null && visibleCellTowerIds.size() != 0) {
                    map.put("v-sid", InternalSDKUtil.convertListToDelimitedString(visibleCellTowerIds, ","));
                }
            } catch (Exception e3) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't get cell tower info in Request Builder", e3);
            }
            try {
                String str = CellUtil.getCurrentCellTower(InternalSDKUtil.getContext()).id;
                if (str != null && !"".equals(str)) {
                    map.put("c-sid", str);
                }
            } catch (Exception e4) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't get cell tower info in Request Builder", e4);
            }
        }
    }

    public static void fillIdentityMap(Map<String, Object> map, Map<String, Boolean> map2, boolean z) {
        if (map != null) {
            map.put("mk-siteid", InMobi.getAppId());
            String str = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(InternalSDKUtil.INMOBI_SDK_RELEASE_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
            map.put(AdTrackerConstants.SDKVER, str);
            map.put(AdTrackerConstants.SDKREL_VER, str);
            if (DeviceInfo.getPhoneDefaultUserAgent() != null && !"".equals(DeviceInfo.getPhoneDefaultUserAgent())) {
                map.put("h-user-agent", DeviceInfo.getPhoneDefaultUserAgent());
            }
            if (UID.getInstance().isLimitAdTrackingEnabled()) {
                map.put(AdTrackerConstants.KEY_LIMIT_ADTRACKING, 1);
            } else {
                map.put(AdTrackerConstants.KEY_LIMIT_ADTRACKING, 0);
            }
            if (z) {
                Map<String, String> mapForEncryption = UID.getInstance().getMapForEncryption(map2);
                if (mapForEncryption != null) {
                    map.putAll(mapForEncryption);
                }
            } else {
                map.remove(AdTrackerConstants.UIDKEY);
                map.remove(AdTrackerConstants.UKEYVER);
                map.put(AdTrackerConstants.UIDMAP, UID.getInstance().getJSON(map2));
            }
            Calendar calendar = Calendar.getInstance();
            System.currentTimeMillis();
            map.put("ts", Long.valueOf(calendar.getTimeInMillis()));
            map.put(PhoenixConstants.TIME_ZONE_PARAM, Integer.valueOf(calendar.get(16) + calendar.get(15)));
            if (InternalSDKUtil.getLtvpSessionId() != null && !InternalSDKUtil.getLtvpSessionId().equals("")) {
                map.put("u-s-id", InternalSDKUtil.getLtvpSessionId());
            }
        }
    }

    public static void fillDeviceMap(Map<String, Object> map) {
        if (map != null) {
            if (DeviceInfo.getScreenDensity() != null) {
                map.put("d-device-screen-density", DeviceInfo.getScreenDensity());
            }
            if (DeviceInfo.getScreenSize() != null) {
                map.put("d-device-screen-size", DeviceInfo.getScreenSize());
            }
            map.put("d-orientation", Integer.valueOf(DeviceInfo.getOrientation()));
            if (DeviceInfo.getNetworkType() != null) {
                map.put("d-netType", DeviceInfo.getNetworkType());
            }
            if (DeviceInfo.getLocalization() != null) {
                map.put("d-localization", DeviceInfo.getLocalization());
            }
        }
    }

    public static void fillAppInfoMap(Map<String, Object> map) {
        if (AppInfo.getAppBId() != null) {
            map.put("u-appbid", AppInfo.getAppBId());
        }
        if (AppInfo.getAppDisplayName() != null) {
            map.put("u-appDNM", AppInfo.getAppDisplayName());
        }
        if (AppInfo.getAppVer() != null) {
            map.put(AdTrackerConstants.APPVER, AppInfo.getAppVer());
        }
    }

    private static String a(Calendar calendar) {
        if (calendar == null) {
            return null;
        }
        return calendar.get(1) + "-" + (calendar.get(2) + 1) + "-" + calendar.get(5);
    }
}
