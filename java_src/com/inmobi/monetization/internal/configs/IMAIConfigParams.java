package com.inmobi.monetization.internal.configs;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;
/* loaded from: classes2.dex */
public class IMAIConfigParams {

    /* renamed from: a  reason: collision with root package name */
    int f3879a = 3;
    int b = 10;
    int c = 120;
    int d = 10;
    int e = 1000;

    public int getmDefaultEventsBatch() {
        return this.d;
    }

    public void setmDefaultEventsBatch(int i) {
        this.d = i;
    }

    public int getmMaxDb() {
        return this.e;
    }

    public void setmMaxDb(int i) {
        this.e = i;
    }

    public int getPingTimeOut() {
        return this.c * 1000;
    }

    public int getMaxRetry() {
        return this.f3879a;
    }

    public int getRetryInterval() {
        return this.b * 1000;
    }

    public void setFromMap(Map<String, Object> map) {
        this.f3879a = InternalSDKUtil.getIntFromMap(map, "mr", 0, 2147483647L);
        this.b = InternalSDKUtil.getIntFromMap(map, "pint", 1, 2147483647L);
        this.c = InternalSDKUtil.getIntFromMap(map, "pto", 1, 2147483647L);
        this.d = InternalSDKUtil.getIntFromMap(map, "eb", 1, 2147483647L);
        this.e = InternalSDKUtil.getIntFromMap(map, "mdb", 1, 2147483647L);
    }
}
