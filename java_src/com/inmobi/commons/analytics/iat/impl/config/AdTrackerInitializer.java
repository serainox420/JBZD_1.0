package com.inmobi.commons.analytics.iat.impl.config;

import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.Logger;
import com.inmobi.commons.uid.UID;
import java.util.Map;
/* loaded from: classes2.dex */
public class AdTrackerInitializer {
    public static final String PRODUCT_IAT = "iat";
    private static Map<String, String> b;

    /* renamed from: a  reason: collision with root package name */
    private static Context f3751a = null;
    private static AdTrackerConfigParams c = new AdTrackerConfigParams();
    private static Logger d = new Logger(2, "iat");
    private static CacheController.Validator e = new CacheController.Validator() { // from class: com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer.1
        @Override // com.inmobi.commons.cache.CacheController.Validator
        public boolean validate(Map<String, Object> map) {
            return AdTrackerInitializer.b(map);
        }
    };

    public static AdTrackerConfigParams getConfigParams() {
        if (InternalSDKUtil.getContext() != null && InMobi.getAppId() != null) {
            b(InternalSDKUtil.getContext());
        }
        d.setMetricConfigParams(c.getMetric());
        return c;
    }

    public static Logger getLogger() {
        return d;
    }

    private static void a(Context context) {
        if (context != null && f3751a == null) {
            if (f3751a == null) {
                f3751a = context.getApplicationContext();
                b = UID.getInstance().getMapForEncryption(getConfigParams().getDeviceIdMaskMap());
                try {
                    b(CacheController.getConfig("iat", context, b, e).getData());
                } catch (Exception e2) {
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Exception while retreiving configs.");
                }
            }
        } else if (f3751a == null && context == null) {
            f3751a.getApplicationContext();
        }
    }

    private static void b(Context context) {
        a(context);
        try {
            CacheController.getConfig("iat", context, b, e);
        } catch (Exception e2) {
        }
    }

    public static Map<String, String> getUidMap(Context context) {
        return UID.getInstance().getMapForEncryption(getConfigParams().getDeviceIdMaskMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Map<String, Object> map) {
        b = getUidMap(f3751a);
        Map<String, Object> populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
        try {
            AdTrackerConfigParams adTrackerConfigParams = new AdTrackerConfigParams();
            adTrackerConfigParams.setFromMap(populateToNewMap);
            c = adTrackerConfigParams;
            return true;
        } catch (Exception e2) {
            return false;
        }
    }
}
