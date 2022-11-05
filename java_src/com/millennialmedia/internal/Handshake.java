package com.millennialmedia.internal;

import android.os.Build;
import com.inmobi.monetization.internal.Constants;
import com.millennialmedia.MMLog;
import com.millennialmedia.MMSDK;
import com.millennialmedia.internal.playlistserver.GreenServerAdapter;
import com.millennialmedia.internal.playlistserver.OrangeServerAdapter;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.IOUtils;
import com.millennialmedia.internal.utils.JSONUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import io.fabric.sdk.android.services.common.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Handshake {
    public static final String HANDSHAKE_JSON = "handshake.json";
    public static final String HANDSHAKE_PATH = "/admax/sdk/handshake/1";
    public static final int HANDSHAKE_VERSION = 1;
    private static HandshakeInfo c;
    private static HandshakeInfo d;
    private static Map<String, Class<? extends PlayListServerAdapter>> g;

    /* renamed from: a  reason: collision with root package name */
    private static final String f4056a = Handshake.class.getSimpleName();
    private static boolean b = false;
    private static int e = 0;
    private static ThreadUtils.ScheduledRunnable f = null;
    private static AtomicBoolean h = new AtomicBoolean(false);

    /* loaded from: classes3.dex */
    public static class HandshakeInfo {
        public volatile String activePlaylistServerBaseUrl;
        public volatile String activePlaylistServerName;
        public volatile int clientMediationTimeout;
        public volatile String config;
        public volatile int exchangeTimeout;
        public volatile String handshakeBaseUrl;
        public volatile int handshakeTtl;
        public volatile int inlineTimeout;
        public volatile int interstitialExpirationDuration;
        public volatile int interstitialTimeout;
        public volatile int minInlineRefreshRate;
        public volatile int nativeExpirationDuration;
        public volatile int nativeTimeout;
        public volatile Map<String, NativeTypeDefinition> nativeTypeDefinitions;
        public volatile String reportingBaseUrl;
        public volatile int reportingBatchFrequency;
        public volatile int reportingBatchSize;
        public volatile int serverToServerTimeout;
        public volatile int vastVideoSkipOffsetMax;
        public volatile int vastVideoSkipOffsetMin;
        public volatile String version;
        public volatile boolean sdkEnabled = true;
        public volatile boolean moatEnabled = true;
        public volatile int vpaidStartAdTimeout = 5000;
        public volatile int vpaidSkipAdTimeout = 500;
        public volatile int vpaidAdUnitTimeout = 5000;
        public volatile int vpaidHtmlEndCardTimeout = 5000;
        public volatile int vpaidMaxBackButtonDelay = 2000;
        public volatile Map<String, String> existingPackages = new HashMap();
    }

    /* loaded from: classes3.dex */
    public static class NativeTypeDefinition {
        public List<ComponentDefinition> componentDefinitions = new ArrayList();
        public String typeName;

        /* loaded from: classes3.dex */
        public static class ComponentDefinition {
            public int adverstiserRequired;
            public String componentId;
            public int publisherRequired;

            public ComponentDefinition(String str, int i, int i2) {
                this.componentId = str;
                this.publisherRequired = i;
                this.adverstiserRequired = i2;
            }
        }

        public NativeTypeDefinition(String str) {
            this.typeName = str;
        }
    }

    public static void initialize() {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2;
        JSONException e2;
        IOException e3;
        if (b) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.d(f4056a, "Handshake already initialized");
            return;
        }
        b = true;
        g = new HashMap();
        g.put("green", GreenServerAdapter.class);
        g.put("orange", OrangeServerAdapter.class);
        InputStream inputStream3 = null;
        try {
            try {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4056a, "Loading packaged default handshake");
                }
                inputStream3 = EnvironmentUtils.getApplicationContext().getAssets().open("mmadsdk/default_handshake.json");
                c = a(IOUtils.read(inputStream3, "UTF-8"));
                IOUtils.closeStream(inputStream3);
                inputStream = inputStream3;
            } catch (IOException e4) {
                MMLog.e(f4056a, "Could not read default handshake.", e4);
                IOUtils.closeStream(inputStream3);
                inputStream = inputStream3;
            } catch (JSONException e5) {
                MMLog.e(f4056a, "Could not parse the default handshake.", e5);
                IOUtils.closeStream(inputStream3);
                inputStream = inputStream3;
            }
            try {
                try {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4056a, "Loading previously stored handshake");
                    }
                    inputStream2 = new FileInputStream(new File(EnvironmentUtils.getMillennialDir(), HANDSHAKE_JSON));
                    try {
                        d = a(IOUtils.read(inputStream2, "UTF-8"));
                        if (d == null) {
                            MMLog.e(f4056a, "Unable to create handshake info object");
                        }
                        IOUtils.closeStream(inputStream2);
                    } catch (FileNotFoundException e6) {
                        inputStream = inputStream2;
                        try {
                            MMLog.i(f4056a, "No handshake.json exists.");
                        } catch (Throwable th2) {
                            inputStream3 = inputStream3;
                            th = th2;
                            throw th;
                        }
                    } catch (IOException e7) {
                        e3 = e7;
                        MMLog.e(f4056a, "Could not read handshake.json", e3);
                    } catch (JSONException e8) {
                        e2 = e8;
                        MMLog.e(f4056a, "Could not parse handshake.json", e2);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (FileNotFoundException e9) {
            } catch (IOException e10) {
                inputStream2 = inputStream;
                e3 = e10;
            } catch (JSONException e11) {
                inputStream2 = inputStream;
                e2 = e11;
            } catch (Throwable th4) {
                inputStream3 = inputStream;
                th = th4;
                throw th;
            }
        } finally {
            IOUtils.closeStream(inputStream3);
        }
    }

    public static boolean isRequestInProgress() {
        return h.get();
    }

    public static void request(boolean z) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Requesting handshake, async mode <" + z + ">");
        }
        if (z) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.Handshake.1
                @Override // java.lang.Runnable
                public void run() {
                    Handshake.b();
                }
            });
        } else {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        if (!h.compareAndSet(false, true)) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4056a, "Handshake request already in progress");
                return;
            }
            return;
        }
        int i = 60000;
        try {
            if (EnvironmentUtils.isDeviceIdle()) {
                MMLog.d(f4056a, "Skipping handshake request while device is dozing");
            } else {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ver", 1);
                jSONObject.put("sdkVer", MMSDK.VERSION);
                jSONObject.put(PubMaticConstants.OS_PARAM, a.ANDROID_CLIENT_TYPE);
                jSONObject.put(PubMaticConstants.OSV_PARAM, Build.VERSION.RELEASE);
                jSONObject.put("appId", EnvironmentUtils.getApplicationContext().getPackageName());
                String str = "https://ads.nexage.com";
                if (d != null && e < 10) {
                    str = d.handshakeBaseUrl;
                }
                String concat = str.concat(HANDSHAKE_PATH);
                e++;
                String jSONObject2 = jSONObject.toString();
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4056a, "Executing handshake request.\n\tattempt: " + e + "\n\turl: " + concat + "\n\tpost data: " + jSONObject2);
                }
                HttpUtils.Response contentFromPostRequest = HttpUtils.getContentFromPostRequest(concat, jSONObject2, "application/json", Constants.HTTP_TIMEOUT);
                if (contentFromPostRequest.code == 200 && contentFromPostRequest.content != null) {
                    try {
                        try {
                            HandshakeInfo a2 = a(contentFromPostRequest.content);
                            if (a2 == null) {
                                throw new Exception("Unable to create handshake info object");
                            }
                            d = a2;
                            FileOutputStream fileOutputStream = new FileOutputStream(new File(EnvironmentUtils.getMillennialDir(), HANDSHAKE_JSON));
                            try {
                                IOUtils.write(fileOutputStream, contentFromPostRequest.content);
                            } catch (IOException e2) {
                                MMLog.e(f4056a, "Error storing handshake response", e2);
                            } finally {
                                IOUtils.closeStream(fileOutputStream);
                            }
                            i = getHandshakeTtl();
                            e = 0;
                        } catch (FileNotFoundException e3) {
                            MMLog.e(f4056a, "Unable to open a file to store the handshake response.", e3);
                        }
                    } catch (JSONException e4) {
                        MMLog.e(f4056a, "An error occurred parsing the handshake response.  Reverting to last known good copy.", e4);
                    } catch (Exception e5) {
                        MMLog.e(f4056a, "Exception occurred when trying to load handshake.", e5);
                    }
                } else {
                    MMLog.e(f4056a, "Handshake request failed with HTTP response code: " + contentFromPostRequest.code);
                }
            }
            if (f != null) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4056a, "Canceling existing handshake refresh");
                }
                f.cancel();
            }
            f = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.Handshake.2
                @Override // java.lang.Runnable
                public void run() {
                    Handshake.b();
                }
            }, i);
        } catch (JSONException e6) {
            MMLog.e(f4056a, "Cannot build the handshake request data", e6);
        }
        h.set(false);
    }

    private static HandshakeInfo a(String str) throws JSONException {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Parsing handshake:\n" + str);
        }
        if (str != null) {
            JSONObject jSONObject = new JSONObject(str);
            HandshakeInfo handshakeInfo = new HandshakeInfo();
            handshakeInfo.version = jSONObject.getString("ver");
            try {
                int parseInt = Integer.parseInt(handshakeInfo.version);
                if (parseInt > 1) {
                    MMLog.e(f4056a, "Handshake response did not contain a compatible version. Received version, " + parseInt + " expected max version of 1");
                    return null;
                }
                handshakeInfo.config = jSONObject.getString("config");
                JSONObject jSONObject2 = jSONObject.getJSONObject("playlistServer");
                handshakeInfo.activePlaylistServerName = jSONObject2.getString("name");
                handshakeInfo.activePlaylistServerBaseUrl = jSONObject2.getString("baseUrl");
                handshakeInfo.handshakeBaseUrl = jSONObject.getString("handshakeBaseUrl");
                handshakeInfo.reportingBaseUrl = jSONObject.getString("rptBaseUrl");
                handshakeInfo.handshakeTtl = jSONObject.getInt("ttl");
                handshakeInfo.sdkEnabled = jSONObject.optBoolean("sdkEnabled", true);
                handshakeInfo.moatEnabled = jSONObject.optBoolean("moatEnabled", true);
                handshakeInfo.reportingBatchSize = jSONObject.getInt("rptBatchSize");
                handshakeInfo.reportingBatchFrequency = jSONObject.getInt("rptFreq");
                handshakeInfo.inlineTimeout = jSONObject.getInt("inlineTmax");
                handshakeInfo.interstitialTimeout = jSONObject.getInt("instlTmax");
                handshakeInfo.nativeTimeout = jSONObject.getInt("nativeTmax");
                handshakeInfo.clientMediationTimeout = jSONObject.getInt("clientAdTmax");
                handshakeInfo.serverToServerTimeout = jSONObject.getInt("serverAdTmax");
                handshakeInfo.exchangeTimeout = jSONObject.getInt("exTmax");
                handshakeInfo.minInlineRefreshRate = jSONObject.getInt("minInlineRefresh");
                handshakeInfo.interstitialExpirationDuration = jSONObject.getInt("instlExpDur");
                handshakeInfo.nativeExpirationDuration = jSONObject.getInt("nativeExpDur");
                handshakeInfo.vastVideoSkipOffsetMax = jSONObject.getInt("vastSkipOffsetMax");
                handshakeInfo.vastVideoSkipOffsetMin = jSONObject.getInt("vastSkipOffsetMin");
                handshakeInfo.nativeTypeDefinitions = a(jSONObject);
                JSONObject optJSONObject = jSONObject.optJSONObject("vpaid");
                handshakeInfo.vpaidStartAdTimeout = JSONUtils.optInt(optJSONObject, "startAdTimeout", 5000);
                handshakeInfo.vpaidSkipAdTimeout = JSONUtils.optInt(optJSONObject, "skipAdTimeout", 500);
                handshakeInfo.vpaidAdUnitTimeout = JSONUtils.optInt(optJSONObject, "adUnitTimeout", 5000);
                handshakeInfo.vpaidHtmlEndCardTimeout = JSONUtils.optInt(optJSONObject, "htmlEndCardTimeout", 5000);
                handshakeInfo.vpaidMaxBackButtonDelay = JSONUtils.optInt(optJSONObject, "maxBackButtonDelay", 2000);
                JSONArray optJSONArray = jSONObject.optJSONArray("exists");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                        if (optJSONObject2 != null) {
                            try {
                                handshakeInfo.existingPackages.put(optJSONObject2.getString("id"), optJSONObject2.getString("pkg"));
                            } catch (JSONException e2) {
                            }
                        }
                    }
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4056a, "Handshake successfully parsed");
                }
                return handshakeInfo;
            } catch (NumberFormatException e3) {
                MMLog.e(f4056a, "Handshake version is not a valid integer, " + handshakeInfo.version);
                return null;
            }
        }
        return null;
    }

    private static Map<String, NativeTypeDefinition> a(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.getJSONObject("nativeConfig").optJSONObject("typeDefs");
        if (optJSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<String> keys = optJSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject2 = optJSONObject.getJSONObject(next);
            NativeTypeDefinition nativeTypeDefinition = new NativeTypeDefinition(jSONObject2.getString("name"));
            JSONObject jSONObject3 = jSONObject2.getJSONObject("components");
            Iterator<String> keys2 = jSONObject3.keys();
            while (keys2.hasNext()) {
                String next2 = keys2.next();
                JSONObject jSONObject4 = jSONObject3.getJSONObject(next2);
                nativeTypeDefinition.componentDefinitions.add(new NativeTypeDefinition.ComponentDefinition(next2, jSONObject4.getInt("publisherRequired"), jSONObject4.getInt("advertiserRequired")));
            }
            hashMap.put(next, nativeTypeDefinition);
        }
        return hashMap;
    }

    public static HandshakeInfo getCurrentHandshakeInfo() {
        if (d != null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4056a, "Returning current handshake info");
            }
            return d;
        } else if (c != null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4056a, "Returning default handshake info");
            }
            return c;
        } else {
            return new HandshakeInfo();
        }
    }

    public static String getVersion() {
        String str = getCurrentHandshakeInfo().version;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake version: " + str);
        }
        return str;
    }

    public static String getConfig() {
        String str = getCurrentHandshakeInfo().config;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake config: " + str);
        }
        return str;
    }

    public static String getActivePlaylistServerName() {
        String str = getCurrentHandshakeInfo().activePlaylistServerName;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake playlist server name: " + str);
        }
        return str;
    }

    public static String getActivePlaylistServerBaseUrl() {
        String str = getCurrentHandshakeInfo().activePlaylistServerBaseUrl;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake active playlist server base url: " + str);
        }
        return str;
    }

    public static String getReportingBaseUrl() {
        String str = getCurrentHandshakeInfo().reportingBaseUrl;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake reporting base url: " + str);
        }
        return str;
    }

    public static int getHandshakeTtl() {
        int max = Math.max(getCurrentHandshakeInfo().handshakeTtl, 60000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake handshake ttl: " + max);
        }
        return max;
    }

    public static boolean getSdkEnabled() {
        boolean z = getCurrentHandshakeInfo().sdkEnabled;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake sdk enabled: " + z);
        }
        return z;
    }

    public static boolean isMoatEnabled() {
        boolean z = getCurrentHandshakeInfo().moatEnabled;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake moat enabled: " + z);
        }
        return z;
    }

    public static int getReportingBatchSize() {
        int max = Math.max(getCurrentHandshakeInfo().reportingBatchSize, 1);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake reportingBatchSize: " + max);
        }
        return max;
    }

    public static int getReportingBatchFrequency() {
        int max = Math.max(getCurrentHandshakeInfo().reportingBatchFrequency, 120000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake reporting batch frequency: " + max);
        }
        return max;
    }

    public static int getInlineTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().inlineTimeout, 3000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake inline timeout: " + max);
        }
        return max;
    }

    public static int getInterstitialTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().interstitialTimeout, 3000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake interstitial timeout: " + max);
        }
        return max;
    }

    public static int getNativeTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().nativeTimeout, 3000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake native timeout: " + max);
        }
        return max;
    }

    public static int getClientMediationTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().clientMediationTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake client mediation timeout: " + max);
        }
        return max;
    }

    public static int getServerToServerTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().serverToServerTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake server to server timeout: " + max);
        }
        return max;
    }

    public static int getExchangeTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().exchangeTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake exchange timeout: " + max);
        }
        return max;
    }

    public static int getMinInlineRefreshRate() {
        int max = Math.max(getCurrentHandshakeInfo().minInlineRefreshRate, 10000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake min inline refresh rate: " + max);
        }
        return max;
    }

    public static int getInterstitialExpirationDuration() {
        int max = Math.max(getCurrentHandshakeInfo().interstitialExpirationDuration, 0);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake interstitial expiration: " + max);
        }
        return max;
    }

    public static int getNativeExpirationDuration() {
        int max = Math.max(getCurrentHandshakeInfo().nativeExpirationDuration, 0);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake native expiration duration: " + max);
        }
        return max;
    }

    public static int getVASTVideoSkipOffsetMax() {
        int i = getCurrentHandshakeInfo().vastVideoSkipOffsetMax;
        if (i < 0) {
            i = 0;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake VAST video max skip offset: " + i);
        }
        return i;
    }

    public static int getVASTVideoSkipOffsetMin() {
        int i = getCurrentHandshakeInfo().vastVideoSkipOffsetMin;
        if (i < 0) {
            i = 0;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake VAST video min skip offset: " + i);
        }
        return i;
    }

    public static int getVPAIDStartAdTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidStartAdTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake VPAID start ad timeout: " + max);
        }
        return max;
    }

    public static int getVPAIDSkipAdTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidSkipAdTimeout, 500);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake VPAID skip ad timeout: " + max);
        }
        return max;
    }

    public static int getVPAIDAdUnitTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidAdUnitTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake VPAID ad unit timeout: " + max);
        }
        return max;
    }

    public static int getVPAIDHTMLEndCardTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidHtmlEndCardTimeout, 0);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake VPAID html end card timeout: " + max);
        }
        return max;
    }

    public static int getVPAIDMaxBackButtonDelay() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidMaxBackButtonDelay, 0);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake VPAID max back button delay: " + max);
        }
        return max;
    }

    public static NativeTypeDefinition getNativeTypeDefinition(String str) {
        NativeTypeDefinition nativeTypeDefinition = null;
        if (getCurrentHandshakeInfo().nativeTypeDefinitions != null) {
            nativeTypeDefinition = getCurrentHandshakeInfo().nativeTypeDefinitions.get(str);
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake native type definition: " + nativeTypeDefinition);
        }
        return nativeTypeDefinition;
    }

    public static Map<String, NativeTypeDefinition> getNativeTypeDefinitions() {
        Map<String, NativeTypeDefinition> map = getCurrentHandshakeInfo().nativeTypeDefinitions;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake native type definitions: " + map);
        }
        return map;
    }

    public static Class<? extends PlayListServerAdapter> getActivePlayListServerAdapterClass() {
        Class<? extends PlayListServerAdapter> cls = g.get(getActivePlaylistServerName());
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake active playlist server adapter class: " + cls);
        }
        return cls;
    }

    public static List<String> getExistingIds() {
        ArrayList arrayList = new ArrayList();
        Map<String, String> map = getCurrentHandshakeInfo().existingPackages;
        for (String str : map.keySet()) {
            if (Utils.isPackageAvailable(map.get(str))) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static Map<String, String> getExistingPackages() {
        HashMap hashMap = new HashMap(getCurrentHandshakeInfo().existingPackages);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4056a, "Handshake existing packages: " + hashMap);
        }
        return hashMap;
    }
}
