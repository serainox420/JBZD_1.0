package com.openx.view.nativeAd;

import android.text.TextUtils;
import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.GetNetworkTask;
import com.openx.core.sdk.OXSettings;
import com.openx.model.vast.Impressions;
import java.io.Serializable;
import java.net.URLEncoder;
/* loaded from: classes3.dex */
public class AdNative implements Serializable {
    private static final long serialVersionUID = 1;
    private String auid;
    private boolean clickTracked;
    private String domain;
    private String oxClickURL;
    private String oxImpURL;
    private String rawJSON;
    private String transactionState;

    public AdNative(String str, String str2, String str3) {
        this.rawJSON = str;
        this.oxImpURL = str2;
        this.oxClickURL = str3;
        this.transactionState = this.oxClickURL.substring(this.oxClickURL.indexOf("ts"), this.oxClickURL.length());
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setAuid(String str) {
        this.auid = str;
    }

    public String getRawJSONAd() {
        return this.rawJSON;
    }

    public void trackImpression() {
        trackEvent(Impressions.VAST_IMPRESSION, this.oxImpURL);
    }

    public void trackClick() {
        if (!TextUtils.isEmpty(this.oxClickURL) && !this.clickTracked) {
            trackEvent("Click", this.oxClickURL);
            this.clickTracked = true;
        }
    }

    private void trackEvent(String str, String str2) {
        GetNetworkTask getNetworkTask = new GetNetworkTask(null);
        BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
        getUrlParams.name = str;
        getUrlParams.url = str2;
        getUrlParams.userAgent = OXSettings.userAgent;
        getNetworkTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
    }

    public void logEvent(String str) {
        logEvent(str, null);
    }

    public void logEvent(String str, String str2) {
        if (str != null && !str.contentEquals("")) {
            if (str2 == null) {
                str2 = "";
            }
            String replace = URLEncoder.encode(str).replace("+", "%20");
            trackEvent("Custom", "http://" + this.domain + "/w/1.0/rev?t=custom&c." + replace + "=" + URLEncoder.encode(str2).replace("+", "%20") + "&" + this.transactionState);
        }
    }
}
