package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;
/* loaded from: classes2.dex */
public class FunctionLevelBegin extends AnalyticsFunctions {

    /* renamed from: a  reason: collision with root package name */
    private Context f3737a;
    private Map<String, String> b;
    private int c;
    private String d;

    public FunctionLevelBegin(Context context, int i, String str, Map<String, String> map) {
        this.f3737a = context;
        this.b = map;
        this.c = i;
        this.d = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getLevelId() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getLevelName() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, String> getLbMap() {
        return this.b;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.f3737a) != null) {
            AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_LEVEL_BEGIN);
            analyticsEvent.setEventLevelId(Integer.toString(this.c));
            analyticsEvent.setEventLevelName(this.d);
            if (this.b != null) {
                analyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(this.b));
            }
            analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.f3737a));
            analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.f3737a));
            analyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000);
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
