package com.unity3d.ads.api;

import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.request.IWebRequestListener;
import com.unity3d.ads.request.WebRequest;
import com.unity3d.ads.request.WebRequestError;
import com.unity3d.ads.request.WebRequestEvent;
import com.unity3d.ads.request.WebRequestThread;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes.dex */
public class Request {
    @WebViewExposed
    public static void get(final String str, String str2, JSONArray jSONArray, Integer num, Integer num2, WebViewCallback webViewCallback) {
        if (jSONArray != null && jSONArray.length() == 0) {
            jSONArray = null;
        }
        try {
            WebRequestThread.request(str2, WebRequest.RequestType.GET, getHeadersMap(jSONArray), null, num, num2, new IWebRequestListener() { // from class: com.unity3d.ads.api.Request.1
                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onComplete(String str3, String str4, int i, Map<String, List<String>> map) {
                    try {
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.COMPLETE, str, str3, str4, Integer.valueOf(i), Request.getResponseHeadersMap(map));
                    } catch (Exception e) {
                        DeviceLog.exception("Error parsing response headers", e);
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, str, str3, "Error parsing response headers");
                    }
                }

                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onFailed(String str3, String str4) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, str, str3, str4);
                }
            });
            webViewCallback.invoke(str);
        } catch (Exception e) {
            DeviceLog.exception("Error mapping headers for the request", e);
            webViewCallback.error(WebRequestError.MAPPING_HEADERS_FAILED, str);
        }
    }

    @WebViewExposed
    public static void post(final String str, String str2, String str3, JSONArray jSONArray, Integer num, Integer num2, WebViewCallback webViewCallback) {
        String str4 = (str3 == null || str3.length() != 0) ? str3 : null;
        if (jSONArray != null && jSONArray.length() == 0) {
            jSONArray = null;
        }
        try {
            WebRequestThread.request(str2, WebRequest.RequestType.POST, getHeadersMap(jSONArray), str4, num, num2, new IWebRequestListener() { // from class: com.unity3d.ads.api.Request.2
                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onComplete(String str5, String str6, int i, Map<String, List<String>> map) {
                    try {
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.COMPLETE, str, str5, str6, Integer.valueOf(i), Request.getResponseHeadersMap(map));
                    } catch (Exception e) {
                        DeviceLog.exception("Error parsing response headers", e);
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, str, str5, "Error parsing response headers");
                    }
                }

                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onFailed(String str5, String str6) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, str, str5, str6);
                }
            });
            webViewCallback.invoke(str);
        } catch (Exception e) {
            DeviceLog.exception("Error mapping headers for the request", e);
            webViewCallback.error(WebRequestError.MAPPING_HEADERS_FAILED, str);
        }
    }

    @WebViewExposed
    public static void head(final String str, String str2, JSONArray jSONArray, Integer num, Integer num2, WebViewCallback webViewCallback) {
        if (jSONArray != null && jSONArray.length() == 0) {
            jSONArray = null;
        }
        try {
            WebRequestThread.request(str2, WebRequest.RequestType.HEAD, getHeadersMap(jSONArray), num, num2, new IWebRequestListener() { // from class: com.unity3d.ads.api.Request.3
                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onComplete(String str3, String str4, int i, Map<String, List<String>> map) {
                    try {
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.COMPLETE, str, str3, str4, Integer.valueOf(i), Request.getResponseHeadersMap(map));
                    } catch (Exception e) {
                        DeviceLog.exception("Error parsing response headers", e);
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, str, str3, "Error parsing response headers");
                    }
                }

                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onFailed(String str3, String str4) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, str, str3, str4);
                }
            });
            webViewCallback.invoke(str);
        } catch (Exception e) {
            DeviceLog.exception("Error mapping headers for the request", e);
            webViewCallback.error(WebRequestError.MAPPING_HEADERS_FAILED, str);
        }
    }

    public static JSONArray getResponseHeadersMap(Map<String, List<String>> map) {
        JSONArray jSONArray;
        JSONArray jSONArray2 = new JSONArray();
        if (map != null && map.size() > 0) {
            for (String str : map.keySet()) {
                JSONArray jSONArray3 = null;
                Iterator<String> it = map.get(str).iterator();
                while (true) {
                    jSONArray = jSONArray3;
                    if (it.hasNext()) {
                        jSONArray3 = new JSONArray();
                        jSONArray3.put(str);
                        jSONArray3.put(it.next());
                    }
                }
                jSONArray2.put(jSONArray);
            }
        }
        return jSONArray2;
    }

    private static HashMap<String, List<String>> getHeadersMap(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        HashMap<String, List<String>> hashMap = new HashMap<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONArray jSONArray2 = (JSONArray) jSONArray.get(i);
            List<String> list = hashMap.get(jSONArray2.getString(0));
            if (list == null) {
                list = new ArrayList<>();
            }
            list.add(jSONArray2.getString(1));
            hashMap.put(jSONArray2.getString(0), list);
        }
        return hashMap;
    }
}
