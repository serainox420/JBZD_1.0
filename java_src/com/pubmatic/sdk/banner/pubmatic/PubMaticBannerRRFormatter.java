package com.pubmatic.sdk.banner.pubmatic;

import com.pubmatic.sdk.banner.BannerAdDescriptor;
import com.pubmatic.sdk.common.AdRequest;
import com.pubmatic.sdk.common.AdResponse;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.RRFormatter;
import com.pubmatic.sdk.common.network.HttpRequest;
import com.pubmatic.sdk.common.network.HttpResponse;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PubMaticBannerRRFormatter implements RRFormatter {
    private static final String kPubMatic_BidTag = "PubMatic_Bid";
    private static final String kclick_tracking_url = "click_tracking_url";
    private static final String kcreative_tag = "creative_tag";
    private static final String kecpm = "ecpm";
    private static final String kerror_code = "error_code";
    private static final String kerror_message = "error_string";
    private static final String klanding_page = "landing_page";
    private static final String ktracking_url = "tracking_url";
    private AdRequest mRequest;

    @Override // com.pubmatic.sdk.common.RRFormatter
    public HttpRequest formatRequest(AdRequest adRequest) {
        this.mRequest = adRequest;
        PubMaticBannerAdRequest pubMaticBannerAdRequest = (PubMaticBannerAdRequest) adRequest;
        HttpRequest httpRequest = new HttpRequest(CommonConstants.CONTENT_TYPE.URL_ENCODED);
        httpRequest.setUserAgent(pubMaticBannerAdRequest.getUserAgent());
        httpRequest.setConnection("close");
        httpRequest.setRequestUrl(adRequest.getAdServerURL());
        httpRequest.setRequestMethod("POST");
        httpRequest.setRequestType(CommonConstants.AD_REQUEST_TYPE.PUB_BANNER);
        httpRequest.setPostData(pubMaticBannerAdRequest.getPostData());
        return httpRequest;
    }

    @Override // com.pubmatic.sdk.common.RRFormatter
    public AdResponse formatResponse(HttpResponse httpResponse) {
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
            JSONObject jSONObject = new JSONObject(httpResponse.getResponseData().toString()).getJSONObject(kPubMatic_BidTag);
            if (!jSONObject.isNull("error_code") && !jSONObject.getString("error_code").equalsIgnoreCase("")) {
                adResponse.setErrorCode(jSONObject.getString("error_code"));
                adResponse.setErrorMessage(jSONObject.getString(kerror_message));
                return adResponse;
            }
            if (!jSONObject.isNull(kcreative_tag) && !jSONObject.getString(kcreative_tag).equalsIgnoreCase("") && !jSONObject.isNull(ktracking_url) && !jSONObject.getString(ktracking_url).equalsIgnoreCase("")) {
                hashMap.put("content", jSONObject.getString(kcreative_tag));
                arrayList.add(jSONObject.getString(ktracking_url));
                if (!jSONObject.isNull(kecpm)) {
                    hashMap.put(kecpm, jSONObject.getString(kecpm));
                }
                if (!jSONObject.isNull(kclick_tracking_url)) {
                    arrayList2.add(jSONObject.getString(kclick_tracking_url));
                }
                if (!jSONObject.isNull(klanding_page)) {
                    hashMap.put("url", jSONObject.getString(klanding_page));
                }
            }
            BannerAdDescriptor bannerAdDescriptor = new BannerAdDescriptor(hashMap);
            bannerAdDescriptor.setImpressionTrackers(arrayList);
            bannerAdDescriptor.setClickTrackers(arrayList2);
            adResponse.setRenderable(bannerAdDescriptor);
            return adResponse;
        } catch (JSONException e) {
            e.printStackTrace();
            return adResponse;
        }
    }
}
