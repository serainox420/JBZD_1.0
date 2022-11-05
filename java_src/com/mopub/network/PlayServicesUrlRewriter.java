package com.mopub.network;

import android.content.Context;
import android.net.Uri;
import com.facebook.appevents.AppEventsConstants;
import com.mopub.common.GpsHelper;
import com.mopub.volley.toolbox.HurlStack;
/* loaded from: classes3.dex */
public class PlayServicesUrlRewriter implements HurlStack.UrlRewriter {
    public static final String DO_NOT_TRACK_TEMPLATE = "mp_tmpl_do_not_track";
    public static final String UDID_TEMPLATE = "mp_tmpl_advertising_id";

    /* renamed from: a  reason: collision with root package name */
    private final String f4661a;
    private final Context b;

    public PlayServicesUrlRewriter(String str, Context context) {
        this.f4661a = str;
        this.b = context.getApplicationContext();
    }

    @Override // com.mopub.volley.toolbox.HurlStack.UrlRewriter
    public String rewriteUrl(String str) {
        GpsHelper.AdvertisingInfo advertisingInfo;
        String str2;
        if (str.contains(UDID_TEMPLATE) || str.contains(DO_NOT_TRACK_TEMPLATE)) {
            GpsHelper.AdvertisingInfo advertisingInfo2 = new GpsHelper.AdvertisingInfo(this.f4661a, false);
            if (!GpsHelper.isPlayServicesAvailable(this.b) || (advertisingInfo = GpsHelper.fetchAdvertisingInfoSync(this.b)) == null) {
                advertisingInfo = advertisingInfo2;
                str2 = "";
            } else {
                str2 = "ifa:";
            }
            return str.replace(UDID_TEMPLATE, Uri.encode(str2 + advertisingInfo.advertisingId)).replace(DO_NOT_TRACK_TEMPLATE, advertisingInfo.limitAdTracking ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        return str;
    }
}
