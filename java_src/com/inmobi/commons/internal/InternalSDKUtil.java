package com.inmobi.commons.internal;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinTargetingData;
import com.flurry.android.Constants;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.uid.UID;
import java.io.File;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class InternalSDKUtil {
    public static final String ACTION_CONNECTIVITY_UPDATE = "android.net.conn.CONNECTIVITY_CHANGE";
    public static final String ACTION_RECEIVER_REFERRER = "com.android.vending.INSTALL_REFERRER";
    public static final String ACTION_SHARE_INMID = "com.inmobi.share.id";
    public static final String BASE_LOG_TAG = "[InMobi]";
    public static final String CACHE_DIR_NAME = "im_cached_content";
    public static final String IM_PREF = "impref";
    public static final String INMOBI_SDK_RELEASE_DATE = "20150522";
    public static final String INMOBI_SDK_RELEASE_VERSION = "4.5.5";
    public static final String KEY_LTVID = "ltvid";
    public static final String LOGGING_TAG = "[InMobi]-4.5.5";
    public static final String PRODUCT_COMMONS = "commons";
    private static String c;

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, String> f3797a = new HashMap();
    private static CommonsConfig b = new CommonsConfig();
    private static Context d = null;
    private static CacheController.Validator e = new CacheController.Validator() { // from class: com.inmobi.commons.internal.InternalSDKUtil.1
        @Override // com.inmobi.commons.cache.CacheController.Validator
        public boolean validate(Map<String, Object> map) {
            return InternalSDKUtil.a(map);
        }
    };
    private static boolean f = true;

    public static Context getContext() {
        return d;
    }

    public static void setContext(Context context) {
        if (d == null) {
            d = context.getApplicationContext();
            if (InMobi.getAppId() != null) {
                a();
                try {
                    CacheController.getConfig(PRODUCT_COMMONS, context, f3797a, e);
                } catch (CommonsException e2) {
                    Log.internal(PRODUCT_COMMONS, "Unable retrive config for commons product");
                }
            }
        }
    }

    public static void initialize(Context context) {
        if (getContext() == null) {
            if (context == null) {
                d.getApplicationContext();
            } else {
                d = context.getApplicationContext();
            }
        }
        if (InMobi.getAppId() != null) {
            if (f) {
                f = false;
                a();
            }
            try {
                a(CacheController.getConfig(PRODUCT_COMMONS, context, f3797a, e).getData());
            } catch (CommonsException e2) {
                Log.internal(LOGGING_TAG, "IMCommons config init: IMCommonsException caught. Reason: " + e2.toString());
            } catch (Exception e3) {
                Log.internal(LOGGING_TAG, "Exception while getting commons config data.");
            }
        }
    }

    public static File getSdkCacheDirectory(Context context) {
        return new File(context.getCacheDir(), CACHE_DIR_NAME);
    }

    public static void clearSdkCacheDirectory(File file, String str) {
        if (str == null || str.trim().length() == 0) {
            FileOperations.deleteDirectory(file);
        } else {
            FileOperations.deleteDirectory(new File(file, str));
        }
    }

    public static void resetMediaCache(Context context) {
        File sdkCacheDirectory = getSdkCacheDirectory(context);
        clearSdkCacheDirectory(sdkCacheDirectory, null);
        if (!sdkCacheDirectory.mkdir() && !sdkCacheDirectory.isDirectory()) {
            Log.debug(InternalSDKUtil.class.getSimpleName(), "Cannot create media cache directory");
        }
    }

    public static String byteToHex(byte b2) {
        try {
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', AppLovinTargetingData.GENDER_FEMALE};
            return new String(new char[]{cArr[(b2 >> 4) & 15], cArr[b2 & 15]});
        } catch (Exception e2) {
            return null;
        }
    }

    public static String xorWithKey(String str, String str2) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            byte[] bArr = new byte[bytes.length];
            byte[] bytes2 = str2.getBytes("UTF-8");
            for (int i = 0; i < bytes.length; i++) {
                bArr[i] = (byte) (bytes[i] ^ bytes2[i % bytes2.length]);
            }
            return new String(com.inmobi.commons.thirdparty.Base64.encode(bArr, 2), "UTF-8");
        } catch (Exception e2) {
            Log.debug(LOGGING_TAG, "Exception in xor with random integer", e2);
            return "";
        }
    }

    @SuppressLint({"TrulyRandom"})
    public static String encryptRSA(String str) {
        if (str == null || "".equals(str)) {
            return null;
        }
        try {
            BigInteger bigInteger = new BigInteger("C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B", 16);
            BigInteger bigInteger2 = new BigInteger("010001", 16);
            Cipher cipher = Cipher.getInstance("RSA/ECB/nopadding");
            cipher.init(1, (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(bigInteger, bigInteger2)));
            return new String(com.inmobi.commons.thirdparty.Base64.encode(a(str.getBytes("UTF-8"), 1, cipher), 0));
        } catch (Exception e2) {
            Log.debug(LOGGING_TAG, "Exception in encryptRSA", e2);
            return null;
        }
    }

    private static byte[] a(byte[] bArr, int i, Cipher cipher) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2 = new byte[0];
        byte[] bArr3 = new byte[0];
        if (i == 1) {
        }
        int length = bArr.length;
        byte[] bArr4 = new byte[64];
        byte[] bArr5 = bArr3;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 > 0 && i2 % 64 == 0) {
                bArr5 = a(bArr5, cipher.doFinal(bArr4));
                bArr4 = new byte[i2 + 64 > length ? length - i2 : 64];
            }
            bArr4[i2 % 64] = bArr[i2];
        }
        return a(bArr5, cipher.doFinal(bArr4));
    }

    public static String getDigested(String str, String str2) {
        if (str != null) {
            try {
                if (!"".equals(str.trim())) {
                    MessageDigest messageDigest = MessageDigest.getInstance(str2);
                    messageDigest.update(str.getBytes());
                    byte[] digest = messageDigest.digest();
                    StringBuffer stringBuffer = new StringBuffer();
                    for (byte b2 : digest) {
                        stringBuffer.append(Integer.toString((b2 & Constants.UNKNOWN) + 256, 16).substring(1));
                    }
                    return stringBuffer.toString();
                }
            } catch (Exception e2) {
                Log.debug(LOGGING_TAG, "Exception in getting ODIN-1", e2);
                return null;
            }
        }
        return "TEST_EMULATOR";
    }

    public static CommonsConfig getConfig() {
        return b;
    }

    public static String getSavedUserAgent() {
        return c;
    }

    public static String getUserAgent() {
        try {
            if (c == null) {
                if (Build.VERSION.SDK_INT >= 17) {
                    c = a.a(d);
                } else {
                    c = new WebView(d).getSettings().getUserAgentString();
                }
            }
            return c;
        } catch (Exception e2) {
            Log.internal(LOGGING_TAG, "Cannot get user agent", e2);
            return c;
        }
    }

    public static boolean validateAppId(String str) {
        if (str == null) {
            Log.debug(LOGGING_TAG, "appId is null");
            return false;
        } else if (str.matches("(x)+")) {
            Log.debug(LOGGING_TAG, "appId is all xxxxxxx");
            return false;
        } else if ("".equals(str.trim())) {
            Log.debug(LOGGING_TAG, "appId is all blank");
            return false;
        } else {
            return true;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:29:0x004d
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:82)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:48)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    public static java.lang.String getConnectivityType(android.content.Context r6) {
        /*
            r4 = 1
            r1 = 0
            java.lang.String r0 = "android.permission.ACCESS_NETWORK_STATE"
            int r0 = r6.checkCallingOrSelfPermission(r0)     // Catch: java.lang.Exception -> L41
            if (r0 != 0) goto L4f
            java.lang.String r0 = "connectivity"
            java.lang.Object r0 = r6.getSystemService(r0)     // Catch: java.lang.Exception -> L41
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch: java.lang.Exception -> L41
            if (r0 == 0) goto L4f
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L41
            if (r0 == 0) goto L4f
            int r2 = r0.getType()     // Catch: java.lang.Exception -> L41
            int r3 = r0.getSubtype()     // Catch: java.lang.Exception -> L41
            if (r2 != r4) goto L27
            java.lang.String r0 = "wifi"
        L26:
            return r0
        L27:
            if (r2 != 0) goto L4f
            java.lang.String r0 = "carrier"
            if (r3 != r4) goto L30
            java.lang.String r0 = "gprs"
            goto L26
        L30:
            r1 = 2
            if (r3 != r1) goto L36
            java.lang.String r0 = "edge"
            goto L26
        L36:
            r1 = 3
            if (r3 != r1) goto L3c
            java.lang.String r0 = "umts"
            goto L26
        L3c:
            if (r3 != 0) goto L26
            java.lang.String r0 = "carrier"
            goto L26
        L41:
            r0 = move-exception
            r5 = r0
            r0 = r1
            r1 = r5
        L45:
            java.lang.String r2 = "[InMobi]-4.5.5"
            java.lang.String r3 = "Error getting the network info"
            com.inmobi.commons.internal.Log.internal(r2, r3, r1)
            goto L26
        L4d:
            r1 = move-exception
            goto L45
        L4f:
            r0 = r1
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.internal.InternalSDKUtil.getConnectivityType(android.content.Context):java.lang.String");
    }

    public static boolean checkNetworkAvailibility(Context context) {
        if (context == null) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager.getActiveNetworkInfo() != null) {
                return connectivityManager.getActiveNetworkInfo().isConnected();
            }
            return false;
        } catch (Exception e2) {
            Log.internal(LOGGING_TAG, "Cannot check network state", e2);
            return false;
        }
    }

    public static long getLongFromJSON(JSONObject jSONObject, String str, long j) {
        try {
            return jSONObject.getLong(str);
        } catch (Exception e2) {
            try {
                Log.debug(LOGGING_TAG, "JSON with property " + str + " found but has bad datatype(" + jSONObject.get(str).getClass() + "). Reverting to " + j);
                return j;
            } catch (JSONException e3) {
                return j;
            }
        }
    }

    public static int getIntFromJSON(JSONObject jSONObject, String str, int i) {
        try {
            return jSONObject.getInt(str);
        } catch (Exception e2) {
            try {
                Log.debug(LOGGING_TAG, "JSON with property " + str + " found but has bad datatype(" + jSONObject.get(str).getClass() + "). Reverting to " + i);
                return i;
            } catch (JSONException e3) {
                return i;
            }
        }
    }

    public static boolean getBooleanFromJSON(JSONObject jSONObject, String str, boolean z) {
        try {
            return jSONObject.getBoolean(str);
        } catch (Exception e2) {
            try {
                Log.debug(LOGGING_TAG, "JSON with property " + str + " found but has bad datatype(" + jSONObject.get(str).getClass() + "). Reverting to " + z);
                return z;
            } catch (JSONException e3) {
                return z;
            }
        }
    }

    public static String getStringFromJSON(JSONObject jSONObject, String str, String str2) {
        try {
            return jSONObject.getString(str);
        } catch (Exception e2) {
            try {
                Log.debug(LOGGING_TAG, "JSON with property " + str + " found but has bad datatype(" + jSONObject.get(str).getClass() + "). Reverting to " + str2);
                return str2;
            } catch (JSONException e3) {
                return str2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
        r1 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getFinalRedirectedUrl(String str) {
        Exception exc;
        String str2;
        HttpURLConnection httpURLConnection;
        String str3;
        int i = 0;
        String str4 = str;
        while (true) {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str4).openConnection();
                httpURLConnection.setRequestProperty("User-Agent", getUserAgent());
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestMethod("GET");
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 300 || responseCode >= 400) {
                    break;
                }
                str3 = httpURLConnection.getHeaderField("Location");
                if (str3 == null) {
                    str3 = str4;
                    break;
                }
                try {
                    if (httpURLConnection.getResponseCode() == 200) {
                        break;
                    }
                    int i2 = i + 1;
                    if (i >= 5) {
                        break;
                    }
                    i = i2;
                    str4 = str3;
                } catch (Exception e2) {
                    str2 = str3;
                    exc = e2;
                    Log.internal(LOGGING_TAG, "Cannot get redirect url", exc);
                    return str2;
                }
            } catch (Exception e3) {
                exc = e3;
                str2 = str4;
            }
        }
        httpURLConnection.disconnect();
        return str3;
    }

    public static void populate(Map<String, Object> map, Map<String, Object> map2, boolean z) {
        for (String str : map.keySet()) {
            if (map2.get(str) == null) {
                map2.put(str, map.get(str));
            }
            Object obj = map.get(str);
            Object obj2 = map2.get(str);
            if ((obj instanceof Map) && (obj2 instanceof Map)) {
                if (!z) {
                    map2.put(str, obj);
                } else {
                    populate((Map<String, Object>) obj, (Map<String, Object>) obj2, true);
                }
            } else {
                map2.put(str, obj);
            }
        }
    }

    public static Map<String, Object> populateToNewMap(Map<String, Object> map, Map<String, Object> map2, boolean z) {
        HashMap hashMap = new HashMap();
        populate(map2, (Map<String, Object>) hashMap, false);
        populate(map, hashMap, z);
        return hashMap;
    }

    public static Object getObjectFromMap(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj != null && (obj instanceof Map)) {
            if (((Map) obj).isEmpty()) {
                Log.internal(LOGGING_TAG, "Key " + str + " has empty object as value.");
                throw new IllegalArgumentException();
            }
            return obj;
        }
        Log.internal(LOGGING_TAG, "Key " + str + " has illegal value");
        throw new IllegalArgumentException();
    }

    public static boolean getBooleanFromMap(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        Log.internal(LOGGING_TAG, "Key " + str + " has illegal value");
        throw new IllegalArgumentException();
    }

    public static long getLongFromMap(Map<String, Object> map, String str, long j, long j2) {
        Object obj = map.get(str);
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            if (longValue <= j2 && longValue >= j) {
                return longValue;
            }
        }
        if (j < -2147483648L) {
            j = -2147483648L;
        }
        int i = (int) j;
        if (j2 > 2147483647L) {
            j2 = 2147483647L;
        }
        return getIntFromMap(map, str, i, (int) j2);
    }

    public static int getIntFromMap(Map<String, Object> map, String str, int i, long j) {
        Object obj = map.get(str);
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            if (intValue <= j && intValue >= i) {
                return intValue;
            }
        }
        Log.internal(LOGGING_TAG, "Key " + str + " has illegal value");
        throw new IllegalArgumentException();
    }

    public static String getStringFromMap(Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        Log.internal(LOGGING_TAG, "Key " + str + " has illegal value");
        throw new IllegalArgumentException();
    }

    public static boolean isInitializedSuccessfully(boolean z) {
        if (getContext() == null || InMobi.getAppId() == null) {
            if (z) {
                Log.debug(LOGGING_TAG, "InMobi not initialized. Call InMobi.initialize before using any InMobi API");
            }
            return false;
        }
        return true;
    }

    public static boolean isInitializedSuccessfully() {
        return isInitializedSuccessfully(true);
    }

    public static String getURLEncoded(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception e2) {
            Log.internal(LOGGING_TAG, "Exception URL encoding " + str, e2);
            return "";
        }
    }

    public static Map<String, String> getEncodedMap(Map<String, ? extends Object> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            try {
                hashMap.put(getURLEncoded(str), getURLEncoded(map.get(str).toString()));
            } catch (Exception e2) {
                Log.internal(LOGGING_TAG, "Exception Map encoding " + map.toString(), e2);
            }
        }
        return hashMap;
    }

    public static String getURLDecoded(String str, String str2) {
        try {
            return URLDecoder.decode(str, str2);
        } catch (Exception e2) {
            Log.internal(LOGGING_TAG, "Exception URL decoding " + str, e2);
            return "";
        }
    }

    public static String getInMobiInternalVersion(String str) {
        String[] split = str.split("[.]");
        StringBuffer stringBuffer = new StringBuffer("");
        for (String str2 : split) {
            try {
                stringBuffer.append("T").append((char) (Integer.valueOf(str2).intValue() + 65));
            } catch (NumberFormatException e2) {
            }
        }
        return stringBuffer.equals("") ? "" : stringBuffer.substring(1).toString();
    }

    public static String mapToJSONs(Map<String, Object> map) {
        if (map != null) {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                try {
                    jSONObject.put(str, map.get(str));
                } catch (JSONException e2) {
                    Log.internal(LOGGING_TAG, "Unable to convert map to JSON for key " + str);
                }
            }
            return jSONObject.toString();
        }
        return null;
    }

    public static String encodeMapAndconvertToDelimitedString(Map<String, ? extends Object> map, String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : map.keySet()) {
            try {
                if (sb.length() > 0) {
                    sb.append(str);
                }
                sb.append(String.format("%s=%s", getURLEncoded(str2), getURLEncoded(map.get(str2).toString())));
            } catch (Exception e2) {
                Log.internal(LOGGING_TAG, "Exception Converting map to deliminated string " + map.toString(), e2);
            }
        }
        return sb.toString();
    }

    public static String convertListToDelimitedString(List<?> list, String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            try {
                if (sb.length() > 0) {
                    sb.append(str);
                }
                sb.append(list.get(i));
            } catch (Exception e2) {
                Log.internal(LOGGING_TAG, "Exception Converting map to deliminated string " + list.toString(), e2);
            }
        }
        return sb.toString();
    }

    public static void populate(JSONObject jSONObject, JSONObject jSONObject2, boolean z) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                jSONObject2.get(next);
                try {
                    Object obj = jSONObject.get(next);
                    Object obj2 = jSONObject2.get(next);
                    if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
                        if (!z) {
                            jSONObject2.put(next, obj);
                        } else {
                            populate((JSONObject) obj, (JSONObject) obj2, true);
                        }
                    } else {
                        jSONObject2.put(next, obj);
                    }
                } catch (JSONException e2) {
                    Log.internal(LOGGING_TAG, "Cannot populate to json exception", e2);
                }
            } catch (JSONException e3) {
                jSONObject2.put(next, jSONObject.get(next));
            }
        }
    }

    public static String getLtvpSessionId() {
        return getContext().getSharedPreferences("inmobiAppAnalyticsSession", 0).getString("APP_SESSION_ID", null);
    }

    public static boolean isHexString(String str) {
        return str.matches("[0-9A-F]+");
    }

    public static JSONObject populateToNewJSON(JSONObject jSONObject, JSONObject jSONObject2, boolean z) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        populate(jSONObject2, jSONObject3, false);
        populate(jSONObject, jSONObject3, z);
        return jSONObject3;
    }

    public static Map<String, Object> JSONToMap(JSONObject jSONObject) {
        try {
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    hashMap.put(next, jSONObject.get(next));
                } catch (JSONException e2) {
                }
            }
            return hashMap;
        } catch (Exception e3) {
            return null;
        }
    }

    public static String union(String str, String str2) {
        String[] split = str.split(",");
        for (int i = 0; i < split.length; i++) {
            if (!str2.contains(split[i])) {
                str2 = str2 + "," + split[i];
            }
        }
        return str2;
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    static boolean a(Map<String, Object> map) {
        a();
        try {
            CommonsConfig commonsConfig = new CommonsConfig();
            commonsConfig.setFromMap(map);
            b = commonsConfig;
            ApiStatCollector.getLogger().setMetricConfigParams(commonsConfig.getApiStatsConfig());
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private static void a() {
        f3797a = UID.getInstance().getMapForEncryption(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(17)
    /* loaded from: classes2.dex */
    public static class a {
        static String a(Context context) {
            return WebSettings.getDefaultUserAgent(context);
        }
    }
}
