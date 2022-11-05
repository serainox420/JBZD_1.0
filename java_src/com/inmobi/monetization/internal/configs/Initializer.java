package com.inmobi.monetization.internal.configs;

import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.Logger;
import com.inmobi.commons.uid.UID;
import com.inmobi.monetization.internal.Constants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class Initializer {
    public static final String PRODUCT_ADNETWORK = "adNetwork";

    /* renamed from: a  reason: collision with root package name */
    private static Context f3880a = null;
    private static Map<String, String> b = new HashMap();
    private static Logger c = new Logger(1, "network");
    private static ConfigParams d = new ConfigParams();
    private static CacheController.Validator e = new CacheController.Validator() { // from class: com.inmobi.monetization.internal.configs.Initializer.1
        @Override // com.inmobi.commons.cache.CacheController.Validator
        public boolean validate(Map<String, Object> map) {
            return Initializer.b(map);
        }
    };

    public static Logger getLogger() {
        return c;
    }

    public static ConfigParams getConfigParams() {
        if (InternalSDKUtil.getContext() != null && InMobi.getAppId() != null) {
            b(InternalSDKUtil.getContext());
        }
        return d;
    }

    private static void a(Context context) {
        if (context != null && f3880a == null) {
            if (f3880a == null) {
                f3880a = context.getApplicationContext();
                b = getUidMap(context);
                try {
                    b(CacheController.getConfig(PRODUCT_ADNETWORK, context, b, e).getData());
                } catch (Exception e2) {
                }
            }
        } else if (f3880a == null && context == null) {
            throw new NullPointerException();
        }
    }

    private static void b(Context context) {
        a(context);
        try {
            CacheController.getConfig(PRODUCT_ADNETWORK, context, b, e);
        } catch (Exception e2) {
        }
    }

    public static Map<String, String> getUidMap(Context context) {
        return UID.getInstance().getMapForEncryption(d.getDeviceIdMaskMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Map<String, Object> map) {
        b = getUidMap(f3880a);
        try {
            Map<String, Object> populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
            ConfigParams configParams = new ConfigParams();
            configParams.setFromMap(populateToNewMap);
            d = configParams;
            c.setMetricConfigParams(configParams.getMetric());
            return true;
        } catch (Exception e2) {
            Log.internal(Constants.LOG_TAG, "Config couldn't be parsed", e2);
            return false;
        }
    }
}
