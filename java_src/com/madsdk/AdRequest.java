package com.madsdk;

import android.net.Uri;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
/* loaded from: classes2.dex */
public class AdRequest {
    public static String getUrl(AppInfo appInfo, String str, String str2, String str3, int i, int i2, int i3, String str4) {
        return buildUrl(appInfo, str, str2, str3, i, i2, i3, 1, str4);
    }

    private static String buildUrl(AppInfo appInfo, String str, String str2, String str3, int i, int i2, int i3, int i4, String str4) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https").authority("mads.permodo.net").appendPath("md.request.php").appendQueryParameter("rt", NativeAd.RT).appendQueryParameter("rev", appInfo.getSdkVersion()).appendQueryParameter("idt", "3").appendQueryParameter(PubMaticConstants.DID_PARAM, appInfo.getAdvertisingId()).appendQueryParameter("srw", str).appendQueryParameter("srh", str2).appendQueryParameter("_s", "amadsdk").appendQueryParameter("appv", appInfo.getAppVersion()).appendQueryParameter("dvt", appInfo.getDeviceType()).appendQueryParameter("carrier", appInfo.getCarrier()).appendQueryParameter("con", appInfo.getConnectivity()).appendQueryParameter("publication", str3).appendQueryParameter("ref", appInfo.getApplicationId()).appendQueryParameter("d_s", String.valueOf(i)).appendQueryParameter(PhoenixConstants.INTERSTITIAL_FLAG_PARAM, String.valueOf(i2)).appendQueryParameter("pfilter[floorprice]", "1").appendQueryParameter("mraid", String.valueOf(i4)).appendQueryParameter("secure", String.valueOf(i3));
        if (str4 != null) {
            builder.appendQueryParameter("_p", str4);
        }
        return builder.build().toString();
    }
}
