package com.amazon.device.ads;

import com.amazon.device.ads.Metrics;
import com.amazon.device.ads.MetricsCollector;
import com.amazon.device.ads.WebRequest;
import io.fabric.sdk.android.services.b.b;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdMetrics {
    public static final String LOGTAG = AdMetrics.class.getSimpleName();
    private MetricsCollector globalMetrics;
    private final MobileAdsLogger logger;
    private final MobileAdsInfoStore mobileAdsInfoStore;
    private final Metrics.MetricsSubmitter submitter;
    private final WebRequest.WebRequestFactory webRequestFactory;

    public AdMetrics(Metrics.MetricsSubmitter metricsSubmitter) {
        this(metricsSubmitter, MobileAdsInfoStore.getInstance());
    }

    AdMetrics(Metrics.MetricsSubmitter metricsSubmitter, MobileAdsInfoStore mobileAdsInfoStore) {
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        this.webRequestFactory = new WebRequest.WebRequestFactory();
        this.submitter = metricsSubmitter;
        this.mobileAdsInfoStore = mobileAdsInfoStore;
    }

    private String getAaxUrlAndResetAdMetrics() {
        String str = this.submitter.getInstrumentationPixelUrl() + WebUtils.getURLEncodedString(getAaxJson());
        this.submitter.resetMetricsCollector();
        return str;
    }

    public WebRequest getAaxWebRequestAndResetAdMetrics() {
        WebRequest createWebRequest = this.webRequestFactory.createWebRequest();
        createWebRequest.setUrlString(getAaxUrlAndResetAdMetrics());
        return createWebRequest;
    }

    public boolean canSubmit() {
        String instrumentationPixelUrl = this.submitter.getInstrumentationPixelUrl();
        if (instrumentationPixelUrl == null || instrumentationPixelUrl.equals("")) {
            return false;
        }
        if (this.mobileAdsInfoStore.getRegistrationInfo().getAppKey() == null) {
            this.logger.d("Not submitting metrics because the AppKey is not set.");
            return false;
        }
        return true;
    }

    public void addGlobalMetrics(MetricsCollector metricsCollector) {
        this.globalMetrics = metricsCollector;
    }

    protected String getAaxJson() {
        JSONObject jSONObject = new JSONObject();
        JSONUtils.put(jSONObject, "c", "msdk");
        JSONUtils.put(jSONObject, "v", Version.getRawSDKVersion());
        addMetricsToJSON(jSONObject, this.submitter.getMetricsCollector());
        addMetricsToJSON(jSONObject, this.globalMetrics);
        String jSONObject2 = jSONObject.toString();
        return jSONObject2.substring(1, jSONObject2.length() - 1);
    }

    protected static void addMetricsToJSON(JSONObject jSONObject, MetricsCollector metricsCollector) {
        MetricsCollector.MetricHit[] metricHitArr;
        if (metricsCollector != null) {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            String adTypeMetricTag = metricsCollector.getAdTypeMetricTag();
            String str = adTypeMetricTag != null ? adTypeMetricTag + b.ROLL_OVER_FILE_NAME_SEPARATOR : adTypeMetricTag;
            for (MetricsCollector.MetricHit metricHit : (MetricsCollector.MetricHit[]) metricsCollector.getMetricHits().toArray(new MetricsCollector.MetricHit[metricsCollector.getMetricHits().size()])) {
                String aaxName = metricHit.metric.getAaxName();
                String str2 = (str == null || !metricHit.metric.isAdTypeSpecific()) ? aaxName : str + aaxName;
                if (metricHit instanceof MetricsCollector.MetricHitStartTime) {
                    hashMap.put(metricHit.metric, Long.valueOf(((MetricsCollector.MetricHitStartTime) metricHit).startTime));
                } else if (metricHit instanceof MetricsCollector.MetricHitStopTime) {
                    MetricsCollector.MetricHitStopTime metricHitStopTime = (MetricsCollector.MetricHitStopTime) metricHit;
                    Long l = (Long) hashMap.remove(metricHit.metric);
                    if (l != null) {
                        JSONUtils.put(jSONObject, str2, (JSONUtils.getLongFromJSON(jSONObject, str2, 0L) + metricHitStopTime.stopTime) - l.longValue());
                    }
                } else if (metricHit instanceof MetricsCollector.MetricHitTotalTime) {
                    JSONUtils.put(jSONObject, str2, ((MetricsCollector.MetricHitTotalTime) metricHit).totalTime);
                } else if (metricHit instanceof MetricsCollector.MetricHitIncrement) {
                    MetricsCollector.MetricHitIncrement metricHitIncrement = (MetricsCollector.MetricHitIncrement) metricHit;
                    Integer num = (Integer) hashMap2.get(metricHit.metric);
                    hashMap2.put(metricHit.metric, Integer.valueOf(num == null ? metricHitIncrement.increment : metricHitIncrement.increment + num.intValue()));
                } else if (metricHit instanceof MetricsCollector.MetricHitString) {
                    JSONUtils.put(jSONObject, str2, ((MetricsCollector.MetricHitString) metricHit).text);
                }
            }
            for (Map.Entry entry : hashMap2.entrySet()) {
                String aaxName2 = ((Metrics.MetricType) entry.getKey()).getAaxName();
                if (str != null && ((Metrics.MetricType) entry.getKey()).isAdTypeSpecific()) {
                    aaxName2 = str + aaxName2;
                }
                JSONUtils.put(jSONObject, aaxName2, ((Integer) entry.getValue()).intValue());
            }
        }
    }
}
