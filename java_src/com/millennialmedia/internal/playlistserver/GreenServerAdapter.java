package com.millennialmedia.internal.playlistserver;

import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.millennialmedia.AppInfo;
import com.millennialmedia.MMLog;
import com.millennialmedia.MMSDK;
import com.millennialmedia.TestInfo;
import com.millennialmedia.UserData;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.pubmatic.sdk.banner.mraid.Consts;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import io.fabric.sdk.android.services.b.b;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
/* loaded from: classes3.dex */
public class GreenServerAdapter extends PlayListServerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4161a = GreenServerAdapter.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Map<String, Object> map) {
        String activePlaylistServerBaseUrl;
        StringBuilder sb = new StringBuilder();
        a(sb, "dm", Build.MODEL);
        a(sb, "dv", "Android" + Build.VERSION.RELEASE);
        a(sb, "ua", EnvironmentUtils.getUserAgent());
        AdvertisingIdClient.Info adInfo = EnvironmentUtils.getAdInfo();
        String aaid = EnvironmentUtils.getAaid(adInfo);
        if (aaid != null) {
            a(sb, "aaid", aaid);
            a(sb, "ate", Boolean.toString(!EnvironmentUtils.isLimitAdTrackingEnabled(adInfo)));
        } else {
            String hashedDeviceId = EnvironmentUtils.getHashedDeviceId("MD5");
            String hashedDeviceId2 = EnvironmentUtils.getHashedDeviceId("SHA1");
            if (hashedDeviceId != null && hashedDeviceId2 != null) {
                a(sb, "mmdid", "mmh_" + hashedDeviceId + b.ROLL_OVER_FILE_NAME_SEPARATOR + hashedDeviceId2);
            }
        }
        a(sb, "density", Float.toString(EnvironmentUtils.getDisplayDensity()));
        a(sb, "hpx", Integer.toString(EnvironmentUtils.getDisplayHeight()));
        a(sb, "wpx", Integer.toString(EnvironmentUtils.getDisplayWidth()));
        a(sb, "do", EnvironmentUtils.getCurrentConfigOrientationString());
        a(sb, "olock", Consts.False);
        a(sb, "sk", Consts.False);
        a(sb, "vol", Integer.valueOf(EnvironmentUtils.getVolume(3)));
        a(sb, "headphones", Boolean.valueOf(EnvironmentUtils.areHeadphonesPluggedIn()));
        if (EnvironmentUtils.hasMicrophone()) {
            a(sb, "mic", Boolean.toString(EnvironmentUtils.hasMicrophonePermission()));
        }
        a(sb, "language", EnvironmentUtils.getLocaleLanguage());
        a(sb, PubMaticConstants.COUNTRY_PARAM, EnvironmentUtils.getLocaleCountry());
        a(sb, "pkid", EnvironmentUtils.getApplicationContext().getPackageName());
        a(sb, "pknm", EnvironmentUtils.getApplicationName());
        a(sb, "bl", EnvironmentUtils.getBatteryLevel());
        a(sb, "plugged", Boolean.toString(EnvironmentUtils.isDevicePlugged()));
        a(sb, "space", Long.toString(EnvironmentUtils.getAvailableStorageSize()));
        a(sb, "conn", EnvironmentUtils.getNetworkConnectionType());
        a(sb, "celldbm", EnvironmentUtils.getCellSignalDbm());
        Integer mcc = EnvironmentUtils.getMcc();
        if (mcc != null) {
            a(sb, "mcc", Integer.toString(mcc.intValue()));
        }
        Integer mnc = EnvironmentUtils.getMnc();
        if (mnc != null) {
            a(sb, "mnc", Integer.toString(mnc.intValue()));
        }
        a(sb, "pip", EnvironmentUtils.getIpAddress());
        String networkOperatorName = EnvironmentUtils.getNetworkOperatorName();
        if (!TextUtils.isEmpty(networkOperatorName)) {
            a(sb, "cn", networkOperatorName);
        }
        Location location = EnvironmentUtils.getLocation();
        if (location != null && MMSDK.locationEnabled) {
            a(sb, "lat", Double.toString(location.getLatitude()));
            a(sb, "long", Double.toString(location.getLongitude()));
            if (location.hasAccuracy()) {
                a(sb, "ha", Float.toString(location.getAccuracy()));
            }
            if (location.hasSpeed()) {
                a(sb, "spd", Float.toString(location.getSpeed()));
            }
            if (location.hasBearing()) {
                a(sb, "brg", Float.toString(location.getBearing()));
            }
            if (location.hasAltitude()) {
                a(sb, "alt", Double.toString(location.getAltitude()));
            }
            a(sb, "tslr", Long.toString(location.getTime() / 1000));
            a(sb, PubMaticConstants.LOC_PARAM, "true");
            a(sb, PhoenixConstants.LOCATION_SOURCE_PARAM, location.getProvider());
        } else {
            a(sb, PubMaticConstants.LOC_PARAM, Consts.False);
        }
        a(sb, "sdkversion", "6.3.1-4006cb2.a");
        a(sb, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "true");
        a(sb, "cachedvideo", "true");
        AppInfo appInfo = MMSDK.getAppInfo();
        if (appInfo != null) {
            a(sb, "vendor", appInfo.getMediator());
            a(sb, "coppa", appInfo.getCoppa());
        }
        Object obj = map.get(AdPlacementMetadata.METADATA_KEY_PLACEMENT_ID);
        if (obj instanceof String) {
            a(sb, "apid", (String) obj);
        }
        Object obj2 = map.get(AdPlacementMetadata.METADATA_KEY_PLACEMENT_TYPE);
        if ((obj2 instanceof String) && ((String) obj2).equals("interstitial")) {
            a(sb, "at", "i");
            a(sb, "reqtype", "fetch");
        } else {
            a(sb, "at", "b");
            a(sb, "reqtype", "getad");
        }
        Object obj3 = map.get("width");
        if ((obj3 instanceof Integer) && ((Integer) obj3).intValue() > 0) {
            a(sb, "hswd", obj3);
        }
        Object obj4 = map.get("height");
        if ((obj4 instanceof Integer) && ((Integer) obj4).intValue() > 0) {
            a(sb, "hsht", obj4);
        }
        a(sb, "refreshrate", map.get("refreshRate"));
        ArrayList arrayList = new ArrayList();
        Object obj5 = map.get("keywords");
        if ((obj5 instanceof String) && !TextUtils.isEmpty((String) obj5)) {
            arrayList.add((String) obj5);
        }
        UserData userData = MMSDK.getUserData();
        if (userData != null) {
            a(sb, "age", userData.getAge());
            a(sb, "children", userData.getChildren());
            a(sb, "education", userData.getEducation());
            a(sb, "ethnicity", userData.getEthnicity());
            a(sb, "gender", userData.getGender());
            a(sb, "income", userData.getIncome());
            a(sb, "marital", userData.getMarital());
            a(sb, "politics", userData.getPolitics());
            a(sb, "zip", userData.getPostalCode());
            a(sb, "state", userData.getState());
            if (!TextUtils.isEmpty(userData.getKeywords())) {
                arrayList.add(userData.getKeywords());
            }
            Date dob = userData.getDob();
            if (dob != null) {
                a(sb, "dob", new SimpleDateFormat("yyyyMMdd").format(dob));
            }
            a(sb, "dma", userData.getDma());
        }
        if (arrayList.size() > 0) {
            a(sb, "keywords", TextUtils.join(",", arrayList));
        }
        a(sb, "appsids", TextUtils.join(",", Handshake.getExistingIds()));
        TestInfo testInfo = MMSDK.getTestInfo();
        if (testInfo != null) {
            a(sb, "acid", testInfo.creativeId);
        }
        String sb2 = sb.toString();
        if (!TextUtils.isEmpty(sb2) && (activePlaylistServerBaseUrl = Handshake.getActivePlaylistServerBaseUrl()) != null) {
            return activePlaylistServerBaseUrl + sb2;
        }
        return null;
    }

    private static void a(StringBuilder sb, String str, Object obj) {
        String str2 = null;
        if (obj != null) {
            str2 = obj.toString();
        }
        if (obj == null || TextUtils.isEmpty(str2)) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4161a, "Unable to add parameter due to empty value for key <" + str + "> and value <" + obj + ">");
                return;
            }
            return;
        }
        try {
            String format = String.format("%s=%s", str, URLEncoder.encode(str2, "UTF-8"));
            if (sb.length() > 0) {
                sb.append('&');
            }
            sb.append(format);
        } catch (UnsupportedEncodingException e) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4161a, "Error occurred when trying to inject ad url request parameter", e);
            }
        }
    }

    @Override // com.millennialmedia.internal.playlistserver.PlayListServerAdapter
    public void loadPlayList(final Map<String, Object> map, final PlayListServerAdapter.AdapterLoadListener adapterLoadListener, final int i) {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.playlistserver.GreenServerAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                String b = GreenServerAdapter.b(map);
                if (b == null) {
                    adapterLoadListener.loadFailed(new RuntimeException("Unable to create post request data"));
                    return;
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(GreenServerAdapter.f4161a, "Ad request url: " + b);
                }
                HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(b, i);
                if (TextUtils.isEmpty(contentFromGetRequest.content)) {
                    adapterLoadListener.loadFailed(new RuntimeException("Get request failed to get ad"));
                    return;
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(GreenServerAdapter.f4161a, "Ad response content: " + contentFromGetRequest.content);
                }
                PlayList a2 = GreenServerAdapter.a(contentFromGetRequest.content, contentFromGetRequest.adMetadata);
                if (a2 == null) {
                    adapterLoadListener.loadFailed(new RuntimeException("Unable to get valid playlist"));
                } else {
                    adapterLoadListener.loadSucceeded(a2);
                }
            }
        });
    }

    static PlayList a(String str, AdMetadata adMetadata) {
        String l = Long.toString(System.currentTimeMillis() / 1000);
        PlayList playList = new PlayList();
        playList.playListVersion = "1";
        playList.handshakeConfig = "handshakeId_" + l;
        playList.responseId = "response_" + l;
        playList.placementId = "placementId_" + l;
        playList.placementName = "placementName_" + l;
        playList.siteId = "siteId_" + l;
        playList.addItem(new PlayList.AdContentPlayListItem("itemId", str, adMetadata));
        return playList;
    }
}
