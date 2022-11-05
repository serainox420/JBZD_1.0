package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;
/* loaded from: classes2.dex */
public class FunctionStartSession extends AnalyticsFunctions {

    /* renamed from: a  reason: collision with root package name */
    private Context f3740a;
    private String b;
    private Map<String, String> c;

    public FunctionStartSession(Context context, String str, Map<String, String> map) {
        this.f3740a = context;
        this.b = str;
        this.c = map;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.f3740a) == null) {
            SessionInfo.storeAppId(this.f3740a, this.b);
            SessionInfo.storeSessionId(this.f3740a);
            SessionInfo.storeFirstTime(this.f3740a);
            AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_START_SESSION);
            if (this.c != null) {
                analyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(this.c));
            }
            analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.f3740a));
            analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.f3740a));
            analyticsEvent.setEventTimeStamp(SessionInfo.getSessionTime(this.f3740a));
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
