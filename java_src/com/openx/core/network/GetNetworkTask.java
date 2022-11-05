package com.openx.core.network;

import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.BaseNetworkTask;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Locale;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
/* loaded from: classes3.dex */
public class GetNetworkTask extends BaseNetworkTask {
    private final String TAG;
    private BaseNetworkTask.GetUrlResult result;

    public GetNetworkTask(BaseResponseHandler baseResponseHandler) {
        super(baseResponseHandler);
        this.TAG = "GetNetworkTask";
    }

    @Override // com.openx.core.network.BaseNetworkTask
    public BaseNetworkTask.GetUrlResult sendRequest(BaseNetworkTask.GetUrlParams getUrlParams) throws MalformedURLException, IOException, Exception {
        OXLog.debug("GetNetworkTask", "url: GET: using DefaultHttpClient & GET: " + getUrlParams.url);
        this.result = new BaseNetworkTask.GetUrlResult();
        this.httpClient = setDefaultHTTPProperty();
        this.result = parseHttpResponse(sendDataOnHttpClient(this.httpClient, setHTTPHeaders(getUrlParams)));
        return this.result;
    }

    private HttpGet setHTTPHeaders(BaseNetworkTask.GetUrlParams getUrlParams) {
        HttpGet httpGet = new HttpGet(getUrlParams.url);
        httpGet.setHeader("User-Agent", getUrlParams.userAgent);
        httpGet.setHeader("Accept-Language", Locale.getDefault().toString());
        httpGet.setHeader("Accept", "application/x-www-form-urlencoded,text/plain,text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
        setHTTPClientAdditionalHeaders(httpGet, getUrlParams.additionalHeader);
        return httpGet;
    }

    private void setHTTPClientAdditionalHeaders(HttpGet httpGet, HashMap<String, ?> hashMap) {
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                httpGet.setHeader(str, (String) hashMap.get(str));
            }
        }
    }

    private HttpResponse sendDataOnHttpClient(DefaultHttpClient defaultHttpClient, HttpGet httpGet) {
        try {
            return defaultHttpClient.execute(httpGet);
        } catch (Exception e) {
            this.result.setException(e);
            OXLog.debug("GetNetworkTask", "Request error. while sending: exception: " + e.getCause());
            doCustomExecuteFailCall(e.getMessage());
            return null;
        }
    }
}
