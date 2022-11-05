package com.pubmatic.sdk.banner.phoenix;

import android.text.TextUtils;
import com.pubmatic.sdk.banner.BannerAdDescriptor;
import com.pubmatic.sdk.common.AdRequest;
import com.pubmatic.sdk.common.AdResponse;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.RRFormatter;
import com.pubmatic.sdk.common.network.HttpRequest;
import com.pubmatic.sdk.common.network.HttpResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PhoenixBannerRRFormatter implements RRFormatter {
    private static final String kBid_Tag = "bids";
    private static final String kadunit_id_tag = "AdUnit ID";
    private static final String kclick_tracking_url = "cltr";
    private static final String kcreative_height_tag = "h";
    private static final String kcreative_id_tag = "Creative ID";
    private static final String kcreative_tag = "ct";
    private static final String kcreative_type_tag = "crTy";
    private static final String kcreative_width_tag = "w";
    private static final String kecpm = "ecpm";
    private static final String kid_tag = "id";
    private static final String kline_item_tag = "LineItem ID";
    private static final String korder_id_tag = "Order ID";
    private static final String kprefetch_data_tag = "pd";
    private static final String krefresh_time_tag = "at";
    private static final String ktracking_url = "tr";
    private AdRequest mRequest;

    @Override // com.pubmatic.sdk.common.RRFormatter
    public HttpRequest formatRequest(AdRequest adRequest) {
        this.mRequest = adRequest;
        PhoenixBannerAdRequest phoenixBannerAdRequest = (PhoenixBannerAdRequest) adRequest;
        HttpRequest httpRequest = new HttpRequest(CommonConstants.CONTENT_TYPE.URL_ENCODED);
        httpRequest.setUserAgent(phoenixBannerAdRequest.getUserAgent());
        httpRequest.setConnection("close");
        httpRequest.setRequestUrl(adRequest.getAdServerURL());
        httpRequest.setRequestMethod("GET");
        httpRequest.setRequestType(CommonConstants.AD_REQUEST_TYPE.PHOENIX_BANNER);
        httpRequest.setPostData(phoenixBannerAdRequest.getPostData());
        return httpRequest;
    }

    @Override // com.pubmatic.sdk.common.RRFormatter
    public AdResponse formatResponse(HttpResponse httpResponse) {
        JSONArray jSONArray;
        AdResponse adResponse = new AdResponse();
        adResponse.setRequest(this.mRequest);
        HashMap hashMap = new HashMap();
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = new ArrayList<>();
        hashMap.put("type", "thirdparty");
        if (httpResponse == null) {
            return null;
        }
        try {
            jSONArray = new JSONObject(httpResponse.getResponseData().toString()).getJSONArray(kBid_Tag);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (jSONArray == null || jSONArray.isNull(0) || TextUtils.isEmpty(jSONArray.getString(0))) {
            adResponse.setErrorCode("-1");
            adResponse.setErrorMessage(null);
            return adResponse;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            if (jSONObject.isNull(kcreative_tag) || !TextUtils.isEmpty(jSONObject.getString(kcreative_tag)) || jSONObject.isNull(ktracking_url) || !TextUtils.isEmpty(jSONObject.getString(ktracking_url))) {
                if (!jSONObject.isNull(kecpm)) {
                    hashMap.put(kecpm, jSONObject.getString(kecpm));
                }
                try {
                    hashMap.put("content", URLDecoder.decode(jSONObject.getString(kcreative_tag), "UTF-8"));
                } catch (UnsupportedEncodingException e2) {
                }
                JSONArray jSONArray2 = jSONObject.getJSONArray(ktracking_url);
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    if (!TextUtils.isEmpty(jSONArray2.getString(i2))) {
                        arrayList.add(jSONArray2.getString(i2));
                    }
                }
                JSONArray jSONArray3 = jSONObject.getJSONArray(kclick_tracking_url);
                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                    if (!TextUtils.isEmpty(jSONArray3.getString(i3))) {
                        arrayList2.add(jSONArray3.getString(i3));
                    }
                }
                if (!jSONObject.isNull(kcreative_type_tag)) {
                    hashMap.put("url", jSONObject.getString(kcreative_type_tag));
                }
            }
        }
        BannerAdDescriptor bannerAdDescriptor = new BannerAdDescriptor(hashMap);
        bannerAdDescriptor.setImpressionTrackers(arrayList);
        bannerAdDescriptor.setClickTrackers(arrayList2);
        adResponse.setRenderable(bannerAdDescriptor);
        return adResponse;
    }
}
