package com.millennialmedia.internal.playlistserver;

import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.millennialmedia.AppInfo;
import com.millennialmedia.MMLog;
import com.millennialmedia.MMSDK;
import com.millennialmedia.TestInfo;
import com.millennialmedia.UserData;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.JSONUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import io.fabric.sdk.android.services.common.a;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class OrangeServerAdapter extends PlayListServerAdapter {
    public static final String PLAYLIST_REQUEST_PATH = "/admax/sdk/playlist/1";

    /* renamed from: a  reason: collision with root package name */
    private static final String f4163a = OrangeServerAdapter.class.getSimpleName();

    private static JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("appId", EnvironmentUtils.getAppId());
        jSONObject.put("name", EnvironmentUtils.getApplicationName());
        return jSONObject;
    }

    private static JSONObject c() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(PubMaticConstants.OS_PARAM, a.ANDROID_CLIENT_TYPE);
        jSONObject.put(PubMaticConstants.OSV_PARAM, Build.VERSION.RELEASE);
        jSONObject.put(PubMaticConstants.MODEL_PARAM, Build.MODEL);
        jSONObject.put("sdkVer", MMSDK.VERSION);
        if (!MMSDK.registeredPlugins.isEmpty()) {
            jSONObject.put("sdkPlugins", JSONUtils.buildFromMap(MMSDK.registeredPlugins));
        }
        jSONObject.put("mcc", EnvironmentUtils.getMcc());
        jSONObject.put("mnc", EnvironmentUtils.getMnc());
        jSONObject.put(PubMaticConstants.LANGUAGE, EnvironmentUtils.getLocaleLanguage());
        jSONObject.put(PubMaticConstants.COUNTRY_PARAM, EnvironmentUtils.getLocaleCountry());
        jSONObject.put("ua", EnvironmentUtils.getUserAgent());
        AdvertisingIdClient.Info adInfo = EnvironmentUtils.getAdInfo();
        String aaid = EnvironmentUtils.getAaid(adInfo);
        if (aaid != null) {
            jSONObject.put("ifa", aaid);
            jSONObject.put("lmt", EnvironmentUtils.isLimitAdTrackingEnabled(adInfo));
        } else {
            jSONObject.put("dpidmd5", EnvironmentUtils.getHashedDeviceId("MD5"));
            jSONObject.put("dpidsha1", EnvironmentUtils.getHashedDeviceId("SHA1"));
        }
        jSONObject.put("w", EnvironmentUtils.getDisplayWidth());
        jSONObject.put("h", EnvironmentUtils.getDisplayHeight());
        jSONObject.put("screenScale", EnvironmentUtils.getDisplayDensity());
        jSONObject.put("ppi", EnvironmentUtils.getDisplayDensityDpi());
        jSONObject.put("natOrient", EnvironmentUtils.getNaturalConfigOrientationString());
        jSONObject.put("storage", EnvironmentUtils.getAvailableStorageSize());
        jSONObject.put("vol", EnvironmentUtils.getVolume(3));
        jSONObject.put("headphones", EnvironmentUtils.areHeadphonesPluggedIn());
        jSONObject.put("charging", EnvironmentUtils.isDevicePlugged());
        jSONObject.put("charge", EnvironmentUtils.getBatteryLevel());
        jSONObject.put("connectionType", EnvironmentUtils.getNetworkConnectionType());
        jSONObject.put("cellSignalDbm", EnvironmentUtils.getCellSignalDbm());
        jSONObject.put("carrier", EnvironmentUtils.getNetworkOperatorName());
        jSONObject.put(CommonConstants.REQUESTPARAM_IP, EnvironmentUtils.getIpAddress());
        jSONObject.put("apMac", EnvironmentUtils.getMacAddress());
        Location location = EnvironmentUtils.getLocation();
        if (location != null && MMSDK.locationEnabled) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("lat", location.getLatitude());
            jSONObject2.put(PhoenixConstants.LONGITUDE_PARAM, location.getLongitude());
            jSONObject2.put("src", location.getProvider());
            jSONObject2.put("ts", location.getTime() / 1000);
            if (location.hasAccuracy()) {
                jSONObject2.put("horizAcc", location.getAccuracy());
            }
            if (location.hasSpeed()) {
                jSONObject2.put("speed", location.getSpeed());
            }
            if (location.hasBearing()) {
                jSONObject2.put("bearing", location.getBearing());
            }
            if (location.hasAltitude()) {
                jSONObject2.put("alt", location.getAltitude());
            }
            jSONObject.put(PubMaticConstants.LOC_PARAM, jSONObject2);
        }
        JSONObject jSONObject3 = new JSONObject();
        EnvironmentUtils.AvailableCameras availableCameras = EnvironmentUtils.getAvailableCameras();
        if (availableCameras.frontCamera) {
            jSONObject3.put("cameraFront", "true");
        }
        if (availableCameras.backCamera) {
            jSONObject3.put("cameraRear", "true");
        }
        if (EnvironmentUtils.hasNfc()) {
            jSONObject3.put("nfc", Boolean.toString(EnvironmentUtils.hasNfcPermission()));
        }
        if (EnvironmentUtils.hasBluetooth()) {
            jSONObject3.put("bt", Boolean.toString(EnvironmentUtils.hasBluetoothPermission()));
        }
        if (EnvironmentUtils.hasMicrophone()) {
            jSONObject3.put("mic", Boolean.toString(EnvironmentUtils.hasMicrophonePermission()));
        }
        if (EnvironmentUtils.hasGps()) {
            jSONObject3.put("gps", Boolean.toString(EnvironmentUtils.hasFineLocationPermission()));
        }
        jSONObject.put("deviceFeatures", jSONObject3);
        List<String> existingIds = Handshake.getExistingIds();
        if (!existingIds.isEmpty()) {
            jSONObject.put("existIds", JSONUtils.buildFromList(existingIds));
        }
        return jSONObject;
    }

    private static JSONObject b(Map<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        AppInfo appInfo = MMSDK.getAppInfo();
        if (appInfo != null) {
            jSONObject.put("coppa", appInfo.getCoppa());
            jSONObject.put("dcn", appInfo.getSiteId());
            jSONObject.put("mediator", appInfo.getMediator());
        }
        if (map != null) {
            jSONObject.put("posType", map.get(AdPlacementMetadata.METADATA_KEY_PLACEMENT_TYPE));
            jSONObject.put("orients", JSONUtils.buildFromList((List) map.get(AdPlacementMetadata.METADATA_KEY_SUPPORTED_ORIENTATIONS)));
            jSONObject.put("keywords", JSONUtils.buildFromList(Utils.splitCommaSeparateString((String) map.get("keywords"))));
            jSONObject.put("posId", map.get(AdPlacementMetadata.METADATA_KEY_PLACEMENT_ID));
            Object obj = map.get("width");
            if ((obj instanceof Integer) && ((Integer) obj).intValue() > 0) {
                jSONObject.put("w", obj);
            }
            Object obj2 = map.get("height");
            if ((obj2 instanceof Integer) && ((Integer) obj2).intValue() > 0) {
                jSONObject.put("h", obj2);
            }
            jSONObject.put("refreshRate", map.get("refreshRate"));
            if (map.containsKey(AdPlacementMetadata.METADATA_KEY_NATIVE_TYPES)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("nativeType", JSONUtils.buildFromList((List) map.get(AdPlacementMetadata.METADATA_KEY_NATIVE_TYPES)));
                jSONObject.put("posTypeAttrs", jSONObject2);
            }
        }
        jSONObject.put("curOrient", EnvironmentUtils.getCurrentConfigOrientationString());
        return jSONObject;
    }

    private static JSONObject d() throws JSONException {
        UserData userData = MMSDK.getUserData();
        if (userData != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("age", userData.getAge());
            jSONObject.put("kids", userData.getChildren());
            jSONObject.put("hhi", userData.getIncome());
            jSONObject.put("edu", userData.getEducation());
            jSONObject.put("eth", userData.getEthnicity());
            jSONObject.put("gender", userData.getGender());
            jSONObject.put("keywords", JSONUtils.buildFromList(Utils.splitCommaSeparateString(userData.getKeywords())));
            jSONObject.put("marital", userData.getMarital());
            jSONObject.put("politics", userData.getPolitics());
            jSONObject.put("zip", userData.getPostalCode());
            Date dob = userData.getDob();
            if (dob != null) {
                jSONObject.put("dob", new SimpleDateFormat("yyyyMMdd").format(dob));
            }
            jSONObject.put("state", userData.getState());
            jSONObject.put(PubMaticConstants.COUNTRY_PARAM, userData.getCountry());
            jSONObject.put("dma", userData.getDma());
            return jSONObject;
        }
        return null;
    }

    private static JSONObject e() throws JSONException {
        TestInfo testInfo = MMSDK.getTestInfo();
        if (testInfo != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("bidder", testInfo.bidder);
            jSONObject.put("creativeId", testInfo.creativeId);
            return jSONObject;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(Map<String, Object> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ver", "1");
            jSONObject.put("app", b());
            jSONObject.put("env", c());
            jSONObject.put("req", b(map));
            jSONObject.put("user", d());
            jSONObject.put("testing", e());
            return jSONObject.toString();
        } catch (Exception e) {
            MMLog.e(f4163a, "Error creating JSON request", e);
            return null;
        }
    }

    @Override // com.millennialmedia.internal.playlistserver.PlayListServerAdapter
    public void loadPlayList(final Map<String, Object> map, final PlayListServerAdapter.AdapterLoadListener adapterLoadListener, final int i) {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.playlistserver.OrangeServerAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                String c = OrangeServerAdapter.c(map);
                if (c == null) {
                    adapterLoadListener.loadFailed(new RuntimeException("Unable to create post request data"));
                    return;
                }
                String activePlaylistServerBaseUrl = Handshake.getActivePlaylistServerBaseUrl();
                if (activePlaylistServerBaseUrl == null) {
                    adapterLoadListener.loadFailed(new RuntimeException("Unable to determine base url for request"));
                    return;
                }
                String concat = activePlaylistServerBaseUrl.concat(OrangeServerAdapter.PLAYLIST_REQUEST_PATH);
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(OrangeServerAdapter.f4163a, "Request\n\turl: " + concat + "\n\tpost data: " + c);
                }
                HttpUtils.Response contentFromPostRequest = HttpUtils.getContentFromPostRequest(concat, c, "application/json", i);
                if (TextUtils.isEmpty(contentFromPostRequest.content)) {
                    adapterLoadListener.loadFailed(new RuntimeException("Post request failed to get ad"));
                    return;
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(OrangeServerAdapter.f4163a, "Response content:\n" + contentFromPostRequest.content);
                }
                PlayList a2 = OrangeServerAdapter.a(contentFromPostRequest.content);
                if (a2 == null) {
                    adapterLoadListener.loadFailed(new RuntimeException("Unable to get valid playlist"));
                } else {
                    adapterLoadListener.loadSucceeded(a2);
                }
            }
        });
    }

    static PlayList a(String str) {
        int i = 0;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4163a, "playlist = \n" + jSONObject.toString(2));
            }
            PlayList playList = new PlayList();
            playList.playListVersion = jSONObject.getString("ver");
            if (!playList.playListVersion.equals("1")) {
                MMLog.e(f4163a, "Playlist response does not match requested version");
                return null;
            }
            playList.handshakeConfig = jSONObject.optString("config", null);
            if (playList.handshakeConfig != null && !playList.handshakeConfig.equals(Handshake.getConfig())) {
                Handshake.request(true);
            }
            playList.responseId = jSONObject.getString("id");
            playList.placementId = jSONObject.getString("posId");
            playList.placementName = jSONObject.getString("pos");
            playList.siteId = jSONObject.getString("dcn");
            if (!"DoNotReport".equals(playList.siteId)) {
                playList.enableReporting();
            } else if (MMLog.isDebugEnabled()) {
                MMLog.d(f4163a, "Playlist dcn is <DoNotReport> -- reporting disabled");
            }
            JSONArray jSONArray = jSONObject.getJSONArray("playlist");
            while (true) {
                int i2 = i;
                if (i2 >= jSONArray.length()) {
                    return playList;
                }
                try {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    String string = jSONObject2.getString("type");
                    String string2 = jSONObject2.getString("item");
                    boolean optBoolean = jSONObject2.optBoolean("enableEnhancedAdControl", false);
                    if (string.equals("client_mediation")) {
                        String string3 = jSONObject2.getString("adnet");
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("req");
                        playList.addItem(new PlayList.ClientMediationPlayListItem(string2, string3, jSONObject3.getString("site"), jSONObject3.getString("posId")));
                    } else if (string.equals("server_mediation")) {
                        JSONObject jSONObject4 = jSONObject2.getJSONObject("req");
                        PlayList.ServerMediationPlayListItem serverMediationPlayListItem = new PlayList.ServerMediationPlayListItem(string2, jSONObject4.getString("url"), optBoolean);
                        serverMediationPlayListItem.validateRegex = jSONObject4.optString("validRegex", null);
                        serverMediationPlayListItem.postBody = jSONObject4.optString("postBody", null);
                        serverMediationPlayListItem.postContentType = jSONObject4.optString("postType", null);
                        playList.addItem(serverMediationPlayListItem);
                    } else if (string.equals("exchange")) {
                        JSONObject jSONObject5 = jSONObject2.getJSONObject("req");
                        PlayList.ExchangeMediationPlayListItem exchangeMediationPlayListItem = new PlayList.ExchangeMediationPlayListItem(string2, jSONObject5.getString("url"), optBoolean);
                        exchangeMediationPlayListItem.postBody = jSONObject5.optString("postBody", null);
                        exchangeMediationPlayListItem.postContentType = jSONObject5.optString("postType", null);
                        playList.addItem(exchangeMediationPlayListItem);
                    } else if (string.equals("ad_content")) {
                        playList.addItem(new PlayList.AdContentPlayListItem(string2, jSONObject2.getString("value"), null, optBoolean));
                    }
                } catch (Exception e) {
                    MMLog.e(f4163a, "Unable to parse play list item<" + i2 + ">", e);
                }
                i = i2 + 1;
            }
        } catch (JSONException e2) {
            MMLog.e(f4163a, "Unable to parse play list", e2);
            return null;
        }
    }
}
