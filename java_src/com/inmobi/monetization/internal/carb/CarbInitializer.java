package com.inmobi.monetization.internal.carb;

import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import com.inmobi.re.controller.util.Constants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class CarbInitializer {
    public static final String PRODUCT_CARB = "carb";

    /* renamed from: a  reason: collision with root package name */
    private static Context f3877a = null;
    private static Map<String, String> b = new HashMap();
    private static CarbConfigParams c = new CarbConfigParams();
    private static CacheController.Validator d = new CacheController.Validator() { // from class: com.inmobi.monetization.internal.carb.CarbInitializer.1
        @Override // com.inmobi.commons.cache.CacheController.Validator
        public boolean validate(Map<String, Object> map) {
            return CarbInitializer.a(map);
        }
    };

    public static void initialize() {
        getConfigParams();
    }

    public static CarbConfigParams getConfigParams() {
        if (InternalSDKUtil.getContext() != null && InMobi.getAppId() != null) {
            a(InternalSDKUtil.getContext());
        }
        return c;
    }

    private static void a(Context context) {
        b(context);
        try {
            CacheController.getConfig(PRODUCT_CARB, context, b, d);
        } catch (Exception e) {
        }
    }

    private static void b(Context context) {
        if (context != null && f3877a == null) {
            if (f3877a == null) {
                f3877a = context.getApplicationContext();
                b = getUidMap(context);
                try {
                    if (CacheController.getConfig(PRODUCT_CARB, context, b, d).getData() != null) {
                        a(CacheController.getConfig(PRODUCT_CARB, context, b, d).getData());
                    }
                } catch (Exception e) {
                }
            }
        } else if (f3877a == null && context == null) {
            throw new NullPointerException();
        }
    }

    public static Map<String, String> getUidMap(Context context) {
        return UID.getInstance().getMapForEncryption(null);
    }

    static boolean a(Map<String, Object> map) {
        Log.internal("CARB", "Saving config to map");
        b = getUidMap(f3877a);
        try {
            Map<String, Object> populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
            CarbConfigParams carbConfigParams = new CarbConfigParams();
            carbConfigParams.setFromMap(populateToNewMap);
            c = carbConfigParams;
            return true;
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Config couldn't be parsed", e);
            return false;
        }
    }
}
