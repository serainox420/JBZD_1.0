package com.pubmatic.sdk.common.network;

import com.facebook.ads.AudienceNetworkActivity;
import com.pubmatic.sdk.common.CommonConstants;
/* loaded from: classes3.dex */
public class HttpRequest {
    String mAccept;
    String mAcceptCharset;
    String mAcceptDateTime;
    String mAcceptLangauge;
    String mCacheControl;
    String mConnection;
    String mContentLanguage;
    String mContentLength;
    String mContentMd5;
    private CommonConstants.CONTENT_TYPE mContentType;
    String mContentTypeHeader;
    String mDate;
    String mHost;
    private String mPostData;
    private String mRLNClientIPAddress;
    private String mRequestMethod;
    private CommonConstants.AD_REQUEST_TYPE mRequestType;
    private String mRequestUrl;
    private String mUserAgent;

    public static HttpRequest getTrackingRequest(String str, CommonConstants.CHANNEL channel) {
        CommonConstants.AD_REQUEST_TYPE ad_request_type;
        HttpRequest httpRequest = new HttpRequest();
        httpRequest.setRequestUrl(str);
        if (channel == CommonConstants.CHANNEL.PUBMATIC) {
            ad_request_type = CommonConstants.AD_REQUEST_TYPE.PUB_TRACKER;
        } else {
            ad_request_type = channel == CommonConstants.CHANNEL.MOCEAN ? CommonConstants.AD_REQUEST_TYPE.MOCEAN_TRACKER : CommonConstants.AD_REQUEST_TYPE.PHOENIX_TRACKER;
        }
        httpRequest.setRequestType(ad_request_type);
        httpRequest.setRequestMethod("GET");
        return httpRequest;
    }

    public HttpRequest() {
        this.mRequestType = null;
        this.mRequestUrl = null;
        this.mPostData = null;
        this.mContentLanguage = "en";
        this.mAcceptCharset = AudienceNetworkActivity.WEBVIEW_ENCODING;
        this.mConnection = "close";
        this.mCacheControl = "no-cache";
        this.mAccept = "text/plain";
        this.mContentTypeHeader = null;
        this.mContentLength = null;
        this.mContentMd5 = null;
        this.mHost = null;
        this.mAcceptLangauge = null;
        this.mAcceptDateTime = null;
        this.mDate = null;
        this.mRequestMethod = null;
        this.mRLNClientIPAddress = null;
        this.mContentType = CommonConstants.CONTENT_TYPE.INVALID;
        this.mUserAgent = null;
    }

    public HttpRequest(CommonConstants.CONTENT_TYPE content_type) {
        this.mRequestType = null;
        this.mRequestUrl = null;
        this.mPostData = null;
        this.mContentLanguage = "en";
        this.mAcceptCharset = AudienceNetworkActivity.WEBVIEW_ENCODING;
        this.mConnection = "close";
        this.mCacheControl = "no-cache";
        this.mAccept = "text/plain";
        this.mContentTypeHeader = null;
        this.mContentLength = null;
        this.mContentMd5 = null;
        this.mHost = null;
        this.mAcceptLangauge = null;
        this.mAcceptDateTime = null;
        this.mDate = null;
        this.mRequestMethod = null;
        this.mRLNClientIPAddress = null;
        this.mContentType = CommonConstants.CONTENT_TYPE.INVALID;
        this.mUserAgent = null;
        this.mContentType = content_type;
    }

    public String getConnection() {
        return this.mConnection;
    }

    public void setConnection(String str) {
        this.mConnection = str;
    }

    public String getUserAgent() {
        return this.mUserAgent;
    }

    public void setUserAgent(String str) {
        this.mUserAgent = str;
    }

    public String getRequestUrl() {
        return this.mRequestUrl;
    }

    public void setRequestUrl(String str) {
        this.mRequestUrl = str;
    }

    public void appendRequestUrl(String str) {
        if (str == null) {
            this.mRequestUrl = str;
        } else {
            this.mRequestUrl += str;
        }
    }

    public CommonConstants.CONTENT_TYPE getContentType() {
        return this.mContentType;
    }

    public void setContentType(CommonConstants.CONTENT_TYPE content_type) {
        this.mContentType = content_type;
    }

    public CommonConstants.AD_REQUEST_TYPE getRequestType() {
        return this.mRequestType;
    }

    public void setRequestType(CommonConstants.AD_REQUEST_TYPE ad_request_type) {
        this.mRequestType = ad_request_type;
    }

    public String getPostData() {
        return this.mPostData;
    }

    public void setPostData(String str) {
        this.mPostData = str;
    }

    public String getRequestMethod() {
        return this.mRequestMethod;
    }

    public void setRequestMethod(String str) {
        this.mRequestMethod = str;
    }

    public String getRLNClientIPAddress() {
        return this.mRLNClientIPAddress;
    }

    public void setRLNClientIPAddress(String str) {
        this.mRLNClientIPAddress = str;
    }
}
