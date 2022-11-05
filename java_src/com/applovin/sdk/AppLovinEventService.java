package com.applovin.sdk;

import android.content.Intent;
import java.util.Map;
/* loaded from: classes.dex */
public interface AppLovinEventService {
    void trackCheckout(String str, Map map);

    void trackEvent(String str);

    void trackEvent(String str, Map map);

    void trackInAppPurchase(Intent intent, Map map);
}
