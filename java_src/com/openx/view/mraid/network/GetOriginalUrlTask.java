package com.openx.view.mraid.network;

import android.text.TextUtils;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.BaseResponseHandler;
import java.net.HttpURLConnection;
/* loaded from: classes3.dex */
public class GetOriginalUrlTask extends BaseNetworkTask {
    private static final int MAX_REDIRECTS = 3;
    public String connectionURL;
    BaseNetworkTask.GetUrlResult result;

    public GetOriginalUrlTask(BaseResponseHandler baseResponseHandler) {
        super(baseResponseHandler);
        this.result = new BaseNetworkTask.GetUrlResult();
    }

    @Override // com.openx.core.network.BaseNetworkTask
    public BaseNetworkTask.GetUrlResult customParser(int i, HttpURLConnection httpURLConnection) {
        String[] strArr = new String[3];
        if (i == 301) {
            String headerField = httpURLConnection.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                headerField = this.connectionURL;
            }
            strArr[0] = headerField;
        } else {
            strArr[0] = this.connectionURL;
            strArr[2] = "quit";
        }
        strArr[1] = httpURLConnection.getHeaderField("Content-Type");
        this.result.JSRedirectURI = strArr;
        return this.result;
    }

    private String[] getRedirectionUrlWithType(BaseNetworkTask.GetUrlParams getUrlParams) {
        this.connectionURL = getUrlParams.url;
        if (Utils.isRecognizedUrl(getUrlParams.url) || TextUtils.isEmpty(getUrlParams.url)) {
            return new String[]{getUrlParams.url, null, null};
        }
        this.result = super.doInBackground(getUrlParams);
        return this.result.JSRedirectURI;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.openx.core.network.BaseNetworkTask, android.os.AsyncTask
    public BaseNetworkTask.GetUrlResult doInBackground(BaseNetworkTask.GetUrlParams... getUrlParamsArr) {
        String[] redirectionUrlWithType;
        if (!validParams(getUrlParamsArr)) {
            return this.result;
        }
        BaseNetworkTask.GetUrlParams getUrlParams = getUrlParamsArr[0];
        this.result.originalUrl = getUrlParams != null ? getUrlParams.url : null;
        getUrlParams.followRedirect = false;
        int i = 0;
        while (true) {
            if (i >= 3 || (redirectionUrlWithType = getRedirectionUrlWithType(getUrlParams)) == null) {
                break;
            } else if (TextUtils.isEmpty(redirectionUrlWithType[0])) {
                if (TextUtils.isEmpty(this.result.contentType)) {
                    this.result.contentType = redirectionUrlWithType[1];
                }
            } else {
                this.result.originalUrl = redirectionUrlWithType[0];
                this.result.contentType = redirectionUrlWithType[1];
                if (redirectionUrlWithType[2] != null) {
                    break;
                }
                i++;
            }
        }
        return this.result;
    }
}
