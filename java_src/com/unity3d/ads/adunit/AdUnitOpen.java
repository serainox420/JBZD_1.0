package com.unity3d.ads.adunit;

import android.os.ConditionVariable;
import com.unity3d.ads.properties.SdkProperties;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.bridge.CallbackStatus;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdUnitOpen {
    private static ConditionVariable _waitShowStatus;

    public static synchronized boolean open(String str, JSONObject jSONObject) throws NoSuchMethodException {
        boolean block;
        synchronized (AdUnitOpen.class) {
            Method method = AdUnitOpen.class.getMethod("showCallback", CallbackStatus.class);
            _waitShowStatus = new ConditionVariable();
            WebViewApp.getCurrentApp().invokeMethod("webview", "show", method, str, jSONObject);
            block = _waitShowStatus.block(SdkProperties.getShowTimeout());
            _waitShowStatus = null;
        }
        return block;
    }

    public static void showCallback(CallbackStatus callbackStatus) {
        if (_waitShowStatus != null && callbackStatus.equals(CallbackStatus.OK)) {
            _waitShowStatus.open();
        }
    }
}
