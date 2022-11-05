package com.inmobi.commons.internal;

import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.MetricConfigParams;
import com.inmobi.commons.uid.UID;
import com.inmobi.commons.uid.UIDMapConfigParams;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.util.Map;
/* loaded from: classes2.dex */
public class CommonsConfig {

    /* renamed from: a  reason: collision with root package name */
    private static Log.INTERNAL_LOG_LEVEL f3794a = Log.INTERNAL_LOG_LEVEL.NONE;
    private static Log.INTERNAL_LOG_LEVEL b = f3794a;
    private MetricConfigParams c = new MetricConfigParams();

    /* JADX INFO: Access modifiers changed from: protected */
    public static int getLogLevelConfig() {
        return b.getValue();
    }

    public MetricConfigParams getApiStatsConfig() {
        return this.c;
    }

    public final void setFromMap(Map<String, Object> map) throws Exception {
        Map<String, Object> populateToNewMap = InternalSDKUtil.populateToNewMap((Map) map.get("AND"), (Map) map.get("common"), true);
        UIDMapConfigParams uIDMapConfigParams = new UIDMapConfigParams();
        uIDMapConfigParams.setMap(InternalSDKUtil.getObjectFromMap(populateToNewMap, "ids"));
        UID.getInstance().setCommonsDeviceIdMaskMap(uIDMapConfigParams.getMap());
        b = Log.getLogLevelValue(InternalSDKUtil.getIntFromMap(populateToNewMap, "ll", 0, 2L));
        this.c.setFromMap((Map) populateToNewMap.get(PhoenixConstants.APP_API_PARAM));
    }
}
