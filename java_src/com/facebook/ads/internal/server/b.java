package com.facebook.ads.internal.server;

import android.text.TextUtils;
import com.facebook.ads.AdSettings;
/* loaded from: classes.dex */
public class b {
    public static String a() {
        String urlPrefix = AdSettings.getUrlPrefix();
        return TextUtils.isEmpty(urlPrefix) ? "https://graph.facebook.com/network_ads_common" : String.format("https://graph.%s.facebook.com/network_ads_common", urlPrefix);
    }

    public static String b() {
        String urlPrefix = AdSettings.getUrlPrefix();
        return TextUtils.isEmpty(urlPrefix) ? "https://www.facebook.com/adnw_logging/" : String.format("https://www.%s.facebook.com/adnw_logging/", urlPrefix);
    }
}
