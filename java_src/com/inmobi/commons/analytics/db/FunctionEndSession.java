package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;
/* loaded from: classes2.dex */
public class FunctionEndSession extends AnalyticsFunctions {

    /* renamed from: a  reason: collision with root package name */
    private Context f3736a;
    private Map<String, String> b;

    public FunctionEndSession(Context context, Map<String, String> map) {
        this.f3736a = context;
        this.b = map;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.f3736a) != null) {
            AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_END_SESSION);
            analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.f3736a));
            analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.f3736a));
            analyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000);
            SessionInfo.removeSessionId(this.f3736a);
            if (this.b != null) {
                analyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(this.b));
            }
            insertInDatabase(analyticsEvent);
            return analyticsEvent;
        }
        return null;
    }

    @Override // com.inmobi.commons.analytics.db.AnalyticsFunctions
    public AnalyticsEvent processFunction() {
        return a();
    }
}
