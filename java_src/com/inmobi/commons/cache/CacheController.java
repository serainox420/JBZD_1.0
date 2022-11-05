package com.inmobi.commons.cache;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.inmobi.commons.internal.CommonsException;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class CacheController {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, ProductCacheConfig> f3768a = new HashMap();
    private static ProductCacheConfig b = null;
    private static boolean c = true;
    private static Map<String, Validator> d = new HashMap();
    private static Map<String, Map<String, String>> e = new HashMap();

    /* loaded from: classes2.dex */
    public interface Committer {
        void onCommit();
    }

    /* loaded from: classes2.dex */
    public interface Validator {
        boolean validate(Map<String, Object> map);
    }

    private CacheController() {
    }

    public static ProductConfig getConfig(String str, Context context, Map<String, String> map, Validator validator) throws CommonsException {
        if (validator != null) {
            synchronized (d) {
                d.put(str, validator);
            }
        }
        if (map != null) {
            synchronized (e) {
                e.put(str, map);
            }
        }
        if (c) {
            if (InternalSDKUtil.getContext() == null) {
                if (context == null) {
                    throw new CommonsException(1);
                }
                InternalSDKUtil.setContext(context);
            }
            c = false;
            e();
            d();
        }
        b.getData(null);
        ProductCacheConfig productCacheConfig = f3768a.get(str);
        if (productCacheConfig == null) {
            throw new CommonsException(2);
        }
        productCacheConfig.getData(map, validator);
        return productCacheConfig;
    }

    private static void d() {
        InternalSDKUtil.getContext().registerReceiver(new BroadcastReceiver() { // from class: com.inmobi.commons.cache.CacheController.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                CacheController.a();
            }
        }, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    static void a() {
        Map<String, String> map;
        synchronized (d) {
            for (String str : d.keySet()) {
                try {
                    if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                        synchronized (e) {
                            map = e.get(str);
                        }
                        getConfig(str, null, map, d.get(str));
                    } else {
                        continue;
                    }
                } catch (CommonsException e2) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to reinitialize product " + str);
                }
            }
        }
        if (b != null) {
            b.getData(null);
        }
    }

    private static void e() {
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Bootstrapping cache.");
        LocalCache.initRoot();
        Iterator<String> keys = LocalCache.getRoot().keys();
        while (keys.hasNext()) {
            final String next = keys.next();
            try {
                Object obj = LocalCache.getRoot().get(next);
                if (obj instanceof JSONObject) {
                    ProductCacheConfig productCacheConfig = new ProductCacheConfig((JSONObject) obj, new Committer() { // from class: com.inmobi.commons.cache.CacheController.2
                        @Override // com.inmobi.commons.cache.CacheController.Committer
                        public void onCommit() {
                            try {
                                ProductCacheConfig productCacheConfig2 = (ProductCacheConfig) CacheController.f3768a.get(next);
                                if (productCacheConfig2 != null) {
                                    LocalCache.addToCache(next, productCacheConfig2.toJSON());
                                }
                            } catch (JSONException e2) {
                                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to add json to persistent memory", e2);
                            }
                        }
                    });
                    ProductCacheConfig productCacheConfig2 = f3768a.get(next);
                    if (productCacheConfig2 != null) {
                        productCacheConfig.setValidator(productCacheConfig2.getValidator());
                        productCacheConfig.setMap(productCacheConfig2.getMap());
                    }
                    f3768a.put(next, productCacheConfig);
                }
            } catch (JSONException e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to dump config from persistent memory to products in memory", e2);
            }
        }
        if (b == null) {
            b = new ProductCacheConfig(LocalCache.getRoot(), new Committer() { // from class: com.inmobi.commons.cache.CacheController.3
                @Override // com.inmobi.commons.cache.CacheController.Committer
                public void onCommit() {
                    CacheController.f();
                }
            });
            b.getData(UID.getInstance().getMapForEncryption(null), new Validator() { // from class: com.inmobi.commons.cache.CacheController.4
                @Override // com.inmobi.commons.cache.CacheController.Validator
                public boolean validate(Map<String, Object> map) {
                    return CacheController.b(map);
                }
            });
        } else {
            b.loadFromJSON(LocalCache.getRoot());
        }
        InternalSDKUtil.initialize(InternalSDKUtil.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        ProductCacheConfig productCacheConfig;
        try {
            JSONObject jSONObject = new JSONObject(b.getRawData());
            JSONObject populateToNewJSON = InternalSDKUtil.populateToNewJSON(jSONObject.getJSONObject("AND"), jSONObject.getJSONObject("common"), true);
            try {
                populateToNewJSON.put("timestamp", (int) (System.currentTimeMillis() / 1000));
            } catch (JSONException e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to add timestamp to JSON");
            }
            Iterator<String> keys = populateToNewJSON.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    try {
                        Object obj = LocalCache.getRoot().get(next);
                        if ((obj instanceof JSONObject) && (productCacheConfig = f3768a.get(next)) != null) {
                            ((JSONObject) obj).put("timestamp", 0);
                            ((JSONObject) obj).put("data", productCacheConfig.getRawData());
                        }
                    } catch (JSONException e3) {
                    }
                } catch (Exception e4) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Error while merging data -> " + e4.getMessage());
                }
            }
            LocalCache.saveRoot(populateToNewJSON);
            e();
            a();
        } catch (JSONException e5) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Map<String, Object> map) {
        try {
            Map<String, Object> populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
            c(populateToNewMap);
            for (String str : populateToNewMap.keySet()) {
                Object obj = populateToNewMap.get(str);
                if (obj instanceof Map) {
                    c((Map) obj);
                }
            }
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    private static void c(Map<String, Object> map) {
        InternalSDKUtil.getIntFromMap(map, "expiry", 1, 2147483647L);
        InternalSDKUtil.getIntFromMap(map, "maxRetry", 0, 2147483647L);
        InternalSDKUtil.getIntFromMap(map, "retryInterval", 1, 2147483647L);
        InternalSDKUtil.getStringFromMap(map, "url");
        InternalSDKUtil.getStringFromMap(map, "protocol");
    }
}
