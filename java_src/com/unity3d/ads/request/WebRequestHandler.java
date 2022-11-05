package com.unity3d.ads.request;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.mdotm.android.constants.MdotMConstants;
import com.millennialmedia.NativeAd;
import com.unity3d.ads.log.DeviceLog;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class WebRequestHandler extends Handler {
    private boolean _canceled = false;
    private WebRequest _currentRequest;

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Bundle data = message.getData();
        String string = data.getString("url");
        data.remove("url");
        String string2 = data.getString("type");
        data.remove("type");
        String string3 = data.getString(NativeAd.COMPONENT_ID_BODY);
        data.remove(NativeAd.COMPONENT_ID_BODY);
        WebRequestResultReceiver webRequestResultReceiver = (WebRequestResultReceiver) data.getParcelable("receiver");
        data.remove("receiver");
        int i = data.getInt("connectTimeout");
        data.remove("connectTimeout");
        int i2 = data.getInt("readTimeout");
        data.remove("readTimeout");
        HashMap<String, List<String>> hashMap = null;
        if (data.size() > 0) {
            DeviceLog.debug("There are headers left in data, reading them");
            hashMap = new HashMap<>();
            for (String str : data.keySet()) {
                hashMap.put(str, Arrays.asList(data.getStringArray(str)));
            }
        }
        if (message.what == 1) {
            DeviceLog.debug("Handling request message: " + string + " type=" + string2);
            try {
                makeRequest(string, string2, hashMap, string3, i, i2, webRequestResultReceiver);
                return;
            } catch (MalformedURLException e) {
                DeviceLog.exception("Malformed URL", e);
                if (webRequestResultReceiver != null) {
                    webRequestResultReceiver.send(2, getBundleForFailResult(string, "Malformed URL", string2, string3));
                    return;
                }
                return;
            }
        }
        DeviceLog.error("No implementation for message: " + message.what);
        if (webRequestResultReceiver != null) {
            webRequestResultReceiver.send(2, getBundleForFailResult(string, "Invalid Thread Message", string2, string3));
        }
    }

    public void setCancelStatus(boolean z) {
        this._canceled = z;
        if (this._canceled && this._currentRequest != null) {
            this._currentRequest.cancel();
        }
    }

    private void makeRequest(String str, String str2, HashMap<String, List<String>> hashMap, String str3, int i, int i2, WebRequestResultReceiver webRequestResultReceiver) throws MalformedURLException {
        if (!this._canceled) {
            this._currentRequest = new WebRequest(str, str2, hashMap, i, i2);
            if (str3 != null) {
                this._currentRequest.setBody(str3);
            }
            try {
                String makeRequest = this._currentRequest.makeRequest();
                if (!this._currentRequest.isCanceled()) {
                    Bundle bundle = new Bundle();
                    bundle.putString(MdotMConstants.RESPONSE, makeRequest);
                    bundle.putString("url", str);
                    bundle.putInt("responseCode", this._currentRequest.getResponseCode());
                    for (String str4 : this._currentRequest.getResponseHeaders().keySet()) {
                        if (str4 != null && !str4.contentEquals("null")) {
                            String[] strArr = new String[this._currentRequest.getResponseHeaders().get(str4).size()];
                            int i3 = 0;
                            while (true) {
                                int i4 = i3;
                                if (i4 >= this._currentRequest.getResponseHeaders().get(str4).size()) {
                                    break;
                                }
                                strArr[i4] = this._currentRequest.getResponseHeaders().get(str4).get(i4);
                                i3 = i4 + 1;
                            }
                            bundle.putStringArray(str4, strArr);
                        }
                    }
                    webRequestResultReceiver.send(1, bundle);
                }
            } catch (IOException | IllegalStateException e) {
                DeviceLog.exception("Error completing request", e);
                webRequestResultReceiver.send(2, getBundleForFailResult(str, e.getMessage(), str2, str3));
            }
        }
    }

    private Bundle getBundleForFailResult(String str, String str2, String str3, String str4) {
        Bundle bundle = new Bundle();
        bundle.putString("url", str);
        bundle.putString("error", str2);
        bundle.putString("type", str3);
        bundle.putString(NativeAd.COMPONENT_ID_BODY, str4);
        return bundle;
    }
}
