package com.loopme.debugging;

import android.text.TextUtils;
import com.loopme.common.Logging;
import com.loopme.common.StaticParams;
import com.loopme.request.AdRequestParametersProvider;
import io.fabric.sdk.android.services.common.a;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class ErrorLog {
    private static final String LOG_TAG = ErrorLog.class.getSimpleName();

    private ErrorLog() {
    }

    public static void post(String str) {
        Logging.out(LOG_TAG, str);
        HttpUtils.postDataToServer(initPostDataParams(str, null));
    }

    public static void post(String str, String str2) {
        Logging.out(LOG_TAG, str);
        HttpUtils.postDataToServer(initPostDataParams(str, str2));
    }

    private static Map<String, String> initPostDataParams(String str, String str2) {
        HashMap hashMap = new HashMap();
        AdRequestParametersProvider adRequestParametersProvider = AdRequestParametersProvider.getInstance();
        hashMap.put(Params.DEVICE_OS, a.ANDROID_CLIENT_TYPE);
        hashMap.put(Params.SDK_TYPE, StaticParams.LOOPME_PREFERENCES);
        hashMap.put(Params.SDK_VERSION, StaticParams.SDK_VERSION);
        hashMap.put(Params.DEVICE_ID, adRequestParametersProvider.getViewerToken());
        hashMap.put(Params.PACKAGE_ID, adRequestParametersProvider.getPackage());
        hashMap.put(Params.APP_KEY, TextUtils.isEmpty(adRequestParametersProvider.getAppKey()) ? "unknown" : adRequestParametersProvider.getAppKey());
        hashMap.put(Params.MSG, "sdk_error");
        if (TextUtils.isEmpty(str2)) {
            str2 = "custom";
        }
        hashMap.put("error_type", str2);
        hashMap.put(Params.ERROR_MSG, str);
        return hashMap;
    }
}
