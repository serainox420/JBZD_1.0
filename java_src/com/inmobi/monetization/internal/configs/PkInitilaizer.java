package com.inmobi.monetization.internal.configs;

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
public class PkInitilaizer {
    public static final String PRODUCT_PK = "pk";

    /* renamed from: a  reason: collision with root package name */
    private static Context f3883a = null;
    private static Map<String, String> b = new HashMap();
    private static PkParams c = new PkParams();
    private static CacheController.Validator d = new CacheController.Validator() { // from class: com.inmobi.monetization.internal.configs.PkInitilaizer.1
        @Override // com.inmobi.commons.cache.CacheController.Validator
        public boolean validate(Map<String, Object> map) {
            return PkInitilaizer.a(map);
        }
    };

    public static void initialize() {
        getConfigParams();
    }

    public static PkParams getConfigParams() {
        if (InternalSDKUtil.getContext() != null && InMobi.getAppId() != null) {
            a(InternalSDKUtil.getContext());
        }
        return c;
    }

    private static void a(Context context) {
        b(context);
        try {
            CacheController.getConfig(PRODUCT_PK, context, b, d);
        } catch (Exception e) {
        }
    }

    private static void b(Context context) {
        if (context != null && f3883a == null) {
            if (f3883a == null) {
                f3883a = context.getApplicationContext();
                b = getUidMap(context);
                try {
                    if (CacheController.getConfig(PRODUCT_PK, context, b, d).getData() != null) {
                        a(CacheController.getConfig(PRODUCT_PK, context, b, d).getData());
                    }
                } catch (Exception e) {
                }
            }
        } else if (f3883a == null && context == null) {
            throw new NullPointerException();
        }
    }

    public static Map<String, String> getUidMap(Context context) {
        return UID.getInstance().getMapForEncryption(null);
    }

    static boolean a(Map<String, Object> map) {
        Log.internal("SK", "Saving config to map");
        b = getUidMap(f3883a);
        try {
            PkParams pkParams = new PkParams();
            pkParams.setFromMap(map);
            c = pkParams;
            return true;
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Config couldn't be parsed", e);
            return false;
        }
    }
}
