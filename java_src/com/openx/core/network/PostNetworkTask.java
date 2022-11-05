package com.openx.core.network;

import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.BaseNetworkTask;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.Locale;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
/* loaded from: classes3.dex */
public class PostNetworkTask extends BaseNetworkTask {
    private final String TAG;
    private BaseNetworkTask.GetUrlResult result;

    public PostNetworkTask(BaseResponseHandler baseResponseHandler) {
        super(baseResponseHandler);
        this.TAG = "PostNetworkTask";
    }

    @Override // com.openx.core.network.BaseNetworkTask
    public BaseNetworkTask.GetUrlResult sendRequest(BaseNetworkTask.GetUrlParams getUrlParams) throws MalformedURLException, IOException, Exception {
        OXLog.debug("PostNetworkTask", "url: POST: using DefaultHttpClient & POST: " + getUrlParams.url);
        this.result = new BaseNetworkTask.GetUrlResult();
        this.httpClient = setDefaultHTTPProperty();
        HttpPost hTTPPostHeaders = setHTTPPostHeaders(getUrlParams);
        setHttpPostBody(hTTPPostHeaders, getUrlParams);
        this.result = parseHttpResponse(postDataOnHttpClient(this.httpClient, hTTPPostHeaders));
        return this.result;
    }

    private HttpPost setHTTPPostHeaders(BaseNetworkTask.GetUrlParams getUrlParams) {
        HttpPost httpPost = new HttpPost(getUrlParams.url);
        httpPost.setHeader("User-Agent", getUrlParams.userAgent);
        httpPost.setHeader("Accept-Language", Locale.getDefault().toString());
        httpPost.setHeader("Accept-Encoding", "gzip");
        httpPost.setHeader("Accept", "application/x-www-form-urlencoded,text/plain,text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
        httpPost.setHeader("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
        return httpPost;
    }

    private void setHttpPostBody(HttpPost httpPost, BaseNetworkTask.GetUrlParams getUrlParams) throws UnsupportedEncodingException {
        StringEntity stringEntity = new StringEntity(getUrlParams.queryParams, "UTF-8");
        OXLog.debug("PostNetworkTask", "url: POST: using DefaultHttpClient & POST: " + getUrlParams.queryParams);
        httpPost.setEntity(stringEntity);
    }

    private HttpResponse postDataOnHttpClient(DefaultHttpClient defaultHttpClient, HttpPost httpPost) {
        try {
            return defaultHttpClient.execute(httpPost);
        } catch (Exception e) {
            this.result.setException(e);
            OXLog.debug("PostNetworkTask", "Request error. while sending: exception: " + e.getCause());
            doCustomExecuteFailCall(e.getMessage());
            return null;
        }
    }
}
