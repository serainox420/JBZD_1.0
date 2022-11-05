package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;
/* loaded from: classes2.dex */
public class AnalyticsEndPointsConfig {

    /* renamed from: a  reason: collision with root package name */
    private String f3723a = "http://a.ai.inmobi.com/v2/ad.html";
    private String b = "https://rules-ltvp.inmobi.com/v2/rules.json";
    private String c = "https://e-ltvp.inmobi.com/storm/v1/event";

    public String getHouseUrl() {
        return this.f3723a;
    }

    public String getRulesUrl() {
        return this.b;
    }

    public String getEventsUrl() {
        return this.c;
    }

    public void setFromMap(Map<String, Object> map) {
        this.f3723a = InternalSDKUtil.getStringFromMap(map, "house");
        this.b = InternalSDKUtil.getStringFromMap(map, "rules");
        this.c = InternalSDKUtil.getStringFromMap(map, "events");
    }
}
