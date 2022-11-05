package com.pubmatic.sdk.common.network;

import com.pubmatic.sdk.common.CommonConstants;
/* loaded from: classes3.dex */
public class HttpResponse {
    private CommonConstants.CONTENT_TYPE contentType;
    public int errorCode;
    public int errorType;
    private HttpRequest httpRequest;
    private StringBuffer stringResponse;

    public HttpResponse() {
        this.errorCode = 0;
        this.errorType = -999;
        this.contentType = CommonConstants.CONTENT_TYPE.INVALID;
        this.stringResponse = null;
        this.httpRequest = null;
    }

    public HttpResponse(String str) {
        this.errorCode = 0;
        this.errorType = -999;
        this.contentType = CommonConstants.CONTENT_TYPE.INVALID;
        this.stringResponse = null;
        this.httpRequest = null;
        this.stringResponse = new StringBuffer(str);
    }

    public HttpRequest getHttpRequest() {
        return this.httpRequest;
    }

    public void setHttpRequest(HttpRequest httpRequest) {
        this.httpRequest = httpRequest;
    }

    public String getResponseData() {
        if (this.stringResponse == null) {
            return null;
        }
        return this.stringResponse.toString();
    }

    public void setResponse(String str) {
        if (this.stringResponse == null) {
            this.stringResponse = new StringBuffer(str);
        } else {
            this.stringResponse.append(str);
        }
    }

    public void resetResponse() {
        this.stringResponse = null;
    }

    public CommonConstants.CONTENT_TYPE getContentType() {
        return this.contentType;
    }

    public void setContentType(CommonConstants.CONTENT_TYPE content_type) {
        this.contentType = content_type;
    }
}
