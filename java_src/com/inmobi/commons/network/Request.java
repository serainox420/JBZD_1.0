package com.inmobi.commons.network;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Request {
    protected static HashMap<String, Object> mHeaders;

    /* renamed from: a  reason: collision with root package name */
    private Format f3812a;
    private String c;
    private Method d;
    private final String b = "User-Agent";
    private int e = 0;
    protected HashMap<String, Object> mReqParams = new HashMap<>();

    /* loaded from: classes2.dex */
    public enum Format {
        KEY_VAL,
        JSON
    }

    /* loaded from: classes2.dex */
    public enum Method {
        GET,
        POST,
        PUT
    }

    public Request(String str, Format format, Method method) {
        this.f3812a = Format.KEY_VAL;
        this.c = null;
        this.d = Method.POST;
        mHeaders = new HashMap<>();
        RequestBuilderUtils.fillIdentityMap(this.mReqParams, null, true);
        mHeaders.put("User-Agent", InternalSDKUtil.getUserAgent());
        this.f3812a = format;
        this.c = str;
        this.d = method;
    }

    private String a() {
        Map<String, String> encodedMap = InternalSDKUtil.getEncodedMap(this.mReqParams);
        switch (this.f3812a) {
            case KEY_VAL:
                return InternalSDKUtil.encodeMapAndconvertToDelimitedString(this.mReqParams, "&");
            case JSON:
                return new JSONObject(encodedMap).toString();
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getPostBody() {
        if (this.d != Method.GET) {
            return a();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getQueryParams() {
        if (this.d == Method.GET) {
            return a();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getUrl() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setUrl(String str) {
        boolean z = true;
        boolean z2 = str != null;
        if ("".equals(str.trim())) {
            z = false;
        }
        if (z2 & z) {
            this.c = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Method getRequestMethod() {
        return this.d;
    }

    public int getTimeout() {
        return this.e;
    }

    public void setTimeout(int i) {
        this.e = i;
    }

    public Map<String, String> getHeaders() {
        return InternalSDKUtil.getEncodedMap(mHeaders);
    }

    public void fillAppInfo() {
        RequestBuilderUtils.fillAppInfoMap(this.mReqParams);
    }

    public void fillDemogInfo() {
        RequestBuilderUtils.fillDemogMap(this.mReqParams);
    }

    public void fillDeviceInfo() {
        RequestBuilderUtils.fillDeviceMap(this.mReqParams);
    }

    public void fillLocationInfo() {
        RequestBuilderUtils.fillLocationMap(this.mReqParams);
    }

    public void fillCustomInfo(Map<String, Object> map) {
        if (map != null) {
            this.mReqParams.putAll(map);
        }
    }
}
