package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.metric.MetricConfigParams;
import com.inmobi.commons.uid.UIDMapConfigParams;
import java.util.Map;
/* loaded from: classes2.dex */
public class AdTrackerConfigParams {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3748a = "Starting.*: Intent.*(?:http://market.android.com/details|market://details|play.google.com).*(?:id=" + InternalSDKUtil.getContext().getPackageName() + ").*referrer=([^&\\s]+)";
    private int b = 60;
    private int c = 300;
    private String d = f3748a;
    private AdTrackerGoalRetryParams e = new AdTrackerGoalRetryParams();
    private MetricConfigParams f = new MetricConfigParams();
    private UIDMapConfigParams g = new UIDMapConfigParams();

    public int getConnectionTimeout() {
        return this.b * 1000;
    }

    public int getWebviewTimeout() {
        return this.c * 1000;
    }

    public int getReferrerWaitTime() {
        return 300000;
    }

    public int getReferrerWaitTimeRetryCount() {
        return 3;
    }

    public int getReferrerWaitTimeRetryInterval() {
        return 5000;
    }

    public String getLogcatPattern() {
        return this.d;
    }

    public AdTrackerGoalRetryParams getRetryParams() {
        return this.e;
    }

    public MetricConfigParams getMetric() {
        return this.f;
    }

    public Map<String, Boolean> getDeviceIdMaskMap() {
        return this.g.getMap();
    }

    public void setFromMap(Map<String, Object> map) {
        this.b = InternalSDKUtil.getIntFromMap(map, "cto", 1, 2147483647L);
        this.c = InternalSDKUtil.getIntFromMap(map, "wto", 1, 2147483647L);
        this.d = InternalSDKUtil.getStringFromMap(map, "rlp").replace("$PKG", InternalSDKUtil.getContext().getPackageName());
        this.e.setFromMap((Map) map.get("rp"));
        this.f.setFromMap((Map) map.get("metric"));
        this.g.setMap(InternalSDKUtil.getObjectFromMap(map, "ids"));
    }
}
