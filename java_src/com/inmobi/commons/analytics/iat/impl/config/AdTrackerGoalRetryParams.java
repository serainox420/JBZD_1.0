package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;
/* loaded from: classes2.dex */
public class AdTrackerGoalRetryParams {

    /* renamed from: a  reason: collision with root package name */
    private int f3750a = 1000;
    private int b = 900;

    public int getMaxWaitTime() {
        return this.b * 1000;
    }

    public int getMaxRetry() {
        return this.f3750a;
    }

    public void setFromMap(Map<String, Object> map) {
        this.f3750a = InternalSDKUtil.getIntFromMap(map, "mr", 0, 2147483647L);
        this.b = InternalSDKUtil.getIntFromMap(map, "mw", 0, 2147483647L);
    }
}
