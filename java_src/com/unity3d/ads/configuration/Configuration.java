package com.unity3d.ads.configuration;

import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.properties.SdkProperties;
import com.unity3d.ads.request.WebRequest;
import java.io.IOException;
import java.net.MalformedURLException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Configuration {
    private String _url;
    private Class[] _webAppApiClassList;
    private String _webViewData;
    private String _webViewHash;
    private String _webViewUrl;
    private String _webViewVersion;

    public Configuration() {
    }

    public Configuration(String str) {
        this._url = str;
    }

    public void setConfigUrl(String str) {
        this._url = str;
    }

    public String getConfigUrl() {
        return this._url;
    }

    public void setWebAppApiClassList(Class[] clsArr) {
        this._webAppApiClassList = clsArr;
    }

    public Class[] getWebAppApiClassList() {
        return this._webAppApiClassList;
    }

    public String getWebViewUrl() {
        return this._webViewUrl;
    }

    public void setWebViewUrl(String str) {
        this._webViewUrl = str;
    }

    public String getWebViewHash() {
        return this._webViewHash;
    }

    public void setWebViewHash(String str) {
        this._webViewHash = str;
    }

    public String getWebViewVersion() {
        return this._webViewVersion;
    }

    public String getWebViewData() {
        return this._webViewData;
    }

    public void setWebViewData(String str) {
        this._webViewData = str;
    }

    protected String buildQueryString() {
        return "?ts=" + System.currentTimeMillis() + "&sdkVersion=" + SdkProperties.getVersionCode() + "&sdkVersionName=" + SdkProperties.getVersionName();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void makeRequest() throws IOException, JSONException, IllegalStateException {
        if (this._url == null) {
            throw new MalformedURLException("Base URL is null");
        }
        String str = this._url + buildQueryString();
        DeviceLog.debug("Requesting configuration with: " + str);
        JSONObject jSONObject = new JSONObject(new WebRequest(str, "GET", null).makeRequest());
        this._webViewUrl = jSONObject.getString("url");
        if (!jSONObject.isNull("hash")) {
            this._webViewHash = jSONObject.getString("hash");
        }
        if (jSONObject.has("version")) {
            this._webViewVersion = jSONObject.getString("version");
        }
        if (this._webViewUrl == null || this._webViewUrl.isEmpty()) {
            throw new MalformedURLException("Invalid data. Web view URL is null or empty");
        }
    }
}
