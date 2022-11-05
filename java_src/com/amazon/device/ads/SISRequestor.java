package com.amazon.device.ads;

import com.amazon.device.ads.Configuration;
import com.amazon.device.ads.WebRequest;
import com.loopme.debugging.Params;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SISRequestor {
    protected static final String API_LEVEL_ENDPOINT = "/api3";
    private final Configuration configuration;
    private final SISRequestorCallback sisRequestorCallback;
    private final SISRequest[] sisRequests;
    private final WebRequest.WebRequestFactory webRequestFactory;

    public SISRequestor(SISRequestorCallback sISRequestorCallback, SISRequest... sISRequestArr) {
        this(new WebRequest.WebRequestFactory(), sISRequestorCallback, Configuration.getInstance(), sISRequestArr);
    }

    SISRequestor(WebRequest.WebRequestFactory webRequestFactory, SISRequestorCallback sISRequestorCallback, Configuration configuration, SISRequest... sISRequestArr) {
        this.webRequestFactory = webRequestFactory;
        this.sisRequestorCallback = sISRequestorCallback;
        this.configuration = configuration;
        this.sisRequests = sISRequestArr;
    }

    public void startCallSIS() {
        for (SISRequest sISRequest : this.sisRequests) {
            callSIS(sISRequest);
        }
        SISRequestorCallback sisRequestorCallback = getSisRequestorCallback();
        if (sisRequestorCallback != null) {
            sisRequestorCallback.onSISCallComplete();
        }
    }

    private void callSIS(SISRequest sISRequest) {
        try {
            JSONObject readAsJSON = getWebRequest(sISRequest).makeCall().getResponseReader().readAsJSON();
            if (readAsJSON != null) {
                int integerFromJSON = JSONUtils.getIntegerFromJSON(readAsJSON, "rcode", 0);
                String stringFromJSON = JSONUtils.getStringFromJSON(readAsJSON, Params.MSG, "");
                if (integerFromJSON == 1) {
                    sISRequest.getLogger().i("Result - code: %d, msg: %s", Integer.valueOf(integerFromJSON), stringFromJSON);
                    sISRequest.onResponseReceived(readAsJSON);
                    return;
                }
                sISRequest.getLogger().w("Result - code: %d, msg: %s", Integer.valueOf(integerFromJSON), stringFromJSON);
            }
        } catch (WebRequest.WebRequestException e) {
        }
    }

    private WebRequest getWebRequest(SISRequest sISRequest) {
        WebRequest createWebRequest = this.webRequestFactory.createWebRequest();
        createWebRequest.setExternalLogTag(sISRequest.getLogTag());
        createWebRequest.setHttpMethod(WebRequest.HttpMethod.POST);
        createWebRequest.setHost(getHostname());
        createWebRequest.setPath(getEndpoint(sISRequest));
        createWebRequest.enableLog(true);
        HashMap<String, String> postParameters = sISRequest.getPostParameters();
        if (postParameters != null) {
            for (Map.Entry<String, String> entry : postParameters.entrySet()) {
                createWebRequest.putPostParameter(entry.getKey(), entry.getValue());
            }
        }
        createWebRequest.setQueryStringParameters(sISRequest.getQueryParameters());
        createWebRequest.setMetricsCollector(Metrics.getInstance().getMetricsCollector());
        createWebRequest.setServiceCallLatencyMetric(sISRequest.getCallMetricType());
        return createWebRequest;
    }

    private String getHostname() {
        int indexOf;
        String string = this.configuration.getString(Configuration.ConfigOption.SIS_URL);
        if (string != null && (indexOf = string.indexOf("/")) > -1) {
            return string.substring(0, indexOf);
        }
        return string;
    }

    private String getEndpoint(SISRequest sISRequest) {
        String string = this.configuration.getString(Configuration.ConfigOption.SIS_URL);
        if (string != null) {
            int indexOf = string.indexOf("/");
            if (indexOf > -1) {
                string = string.substring(indexOf);
            } else {
                string = "";
            }
        }
        return string + API_LEVEL_ENDPOINT + sISRequest.getPath();
    }

    private SISRequestorCallback getSisRequestorCallback() {
        return this.sisRequestorCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SISRequestorFactory {
        public SISRequestor createSISRequestor(SISRequest... sISRequestArr) {
            return createSISRequestor(null, sISRequestArr);
        }

        public SISRequestor createSISRequestor(SISRequestorCallback sISRequestorCallback, SISRequest... sISRequestArr) {
            return new SISRequestor(sISRequestorCallback, sISRequestArr);
        }
    }
}
