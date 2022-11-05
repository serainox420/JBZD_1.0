package com.mdotm.android.utils;

import android.content.Context;
import com.mdotm.android.model.MdotMAdRequest;
import com.mdotm.android.view.MdotMInterstitial;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes3.dex */
public class MdotMRequestBuilder {
    private Context mContext;
    final String PARTNER_KEY = "mdotm";
    final String API_KEY = "mdotmsdk3";

    public MdotMRequestBuilder(Context context) {
        this.mContext = context;
    }

    public StringBuffer buildRequest(MdotMAdRequest mdotMAdRequest) {
        String adSize = mdotMAdRequest.getAdSize();
        StringBuffer stringBuffer = new StringBuffer(MdotMConfiguration.MDOTM_BASE_URL);
        stringBuffer.append("partnerkey=mdotm");
        stringBuffer.append("&");
        stringBuffer.append("apikey=mdotmsdk3");
        stringBuffer.append("&");
        try {
            stringBuffer.append("appkey=" + URLEncoder.encode(mdotMAdRequest.getAppKey().trim(), "UTF-8"));
            stringBuffer.append("&");
            stringBuffer.append("ua=" + URLEncoder.encode(MdotMUtils.getUtilsInstance().getUserAgent(this.mContext), "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        stringBuffer.append("&");
        if (adSize != null && adSize.length() > 0) {
            String[] split = adSize.split(",");
            stringBuffer.append("width=" + split[0]);
            MdotMLogger.d(this, "The width is:" + split[0]);
            stringBuffer.append("&");
            stringBuffer.append("height=" + split[1]);
            MdotMLogger.d(this, "The height is:" + split[1]);
            stringBuffer.append("&");
        }
        stringBuffer.append("fmt=xhtml");
        stringBuffer.append("&");
        stringBuffer.append("v=3.6.2");
        stringBuffer.append("&");
        if (MdotMUtils.getUtilsInstance().getBandWidth(this.mContext) != null) {
            stringBuffer.append("bandwidth=" + MdotMUtils.getUtilsInstance().getBandWidth(this.mContext));
            MdotMLogger.i(this, "The bandwidth is:" + MdotMUtils.getUtilsInstance().getBandWidth(this.mContext));
            stringBuffer.append("&");
        }
        stringBuffer.append("&");
        stringBuffer.append("test=" + mdotMAdRequest.isTestMode());
        if (mdotMAdRequest.getAge() != 0) {
            stringBuffer.append("&");
            stringBuffer.append("age=" + mdotMAdRequest.getAge());
        }
        MdotMLogger.d(this, "gender" + mdotMAdRequest.getGender());
        if (mdotMAdRequest.getGender() != null) {
            stringBuffer.append("&");
            stringBuffer.append("gender=" + mdotMAdRequest.getGender());
        }
        if (((int) mdotMAdRequest.getLatitude()) != 0) {
            stringBuffer.append("&");
            stringBuffer.append("latitude=" + mdotMAdRequest.getAge());
        }
        if (((int) mdotMAdRequest.getLongitude()) != 0) {
            stringBuffer.append("&");
            stringBuffer.append("longitude=" + mdotMAdRequest.getAge());
        }
        if (mdotMAdRequest.getExt() != null && mdotMAdRequest.getExt().length() < 1024) {
            stringBuffer.append("&");
            try {
                stringBuffer.append("ext=" + URLEncoder.encode(mdotMAdRequest.getExt(), "UTF-8"));
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        stringBuffer.append("&");
        if (isTablet(this.mContext)) {
            stringBuffer.append("istablet=1");
        } else {
            stringBuffer.append("istablet=0");
        }
        stringBuffer.append("&");
        if (MdotMInterstitial.getRewarded()) {
            stringBuffer.append("isrewarded=1");
        } else {
            stringBuffer.append("isrewarded=0");
        }
        return stringBuffer;
    }

    public static boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
