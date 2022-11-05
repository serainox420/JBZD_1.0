package com.inmobi.commons.cache;

import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class LocalCache {
    public static final String FILENAME = "inmobi.cache";

    /* renamed from: a  reason: collision with root package name */
    private static String f3770a = "{url:'https://inmobisdk-a.akamaihd.net/sdk/configs/400/rootConfig.json'}";
    private static JSONObject b = new JSONObject();

    private LocalCache() {
    }

    public static void initRoot() {
        if (b.toString().equals("{}")) {
            synchronized (b) {
                try {
                    try {
                        String readFileAsString = FileOperations.readFileAsString(InternalSDKUtil.getContext(), FILENAME);
                        if (readFileAsString == null || "".equals(readFileAsString)) {
                            Log.internal(InternalSDKUtil.LOGGING_TAG, "Configs not present in persistence. Using default configs.");
                            readFileAsString = f3770a;
                        }
                        b = new JSONObject(readFileAsString);
                    } catch (JSONException e) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Ill formed JSON while parsing from persistent memory", e);
                    }
                } catch (IOException e2) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to read configs from persistent memory", e2);
                }
            }
            if (b.toString().equals("{}")) {
                try {
                    b = new JSONObject(f3770a);
                } catch (JSONException e3) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Default JSON root is unable to parse? What sorcery is this?", e3);
                }
            }
        }
    }

    private static void b() {
        new Thread(new Runnable() { // from class: com.inmobi.commons.cache.LocalCache.1
            @Override // java.lang.Runnable
            public void run() {
                LocalCache.c();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        synchronized (b) {
            try {
                FileOperations.writeStringToFile(InternalSDKUtil.getContext(), FILENAME, b.toString(), false);
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to save all configs to persistent memory", e);
            }
        }
    }

    public static JSONObject addToCache(String str, JSONObject jSONObject) throws JSONException {
        synchronized (b) {
            if (b.toString().equals("{}")) {
                initRoot();
            }
            b.put(str, jSONObject);
        }
        b();
        return null;
    }

    public static JSONObject getCacheForProduct(String str) {
        if (b.toString().equals("{}")) {
            initRoot();
        }
        try {
            return b.getJSONObject(str);
        } catch (JSONException e) {
            return null;
        }
    }

    public static void reset() {
        b = new JSONObject();
        c();
        initRoot();
    }

    public static JSONObject getRoot() {
        return b;
    }

    public static void saveRoot(JSONObject jSONObject) {
        b = jSONObject;
        b();
    }
}
