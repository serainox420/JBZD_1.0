package com.pubmatic.sdk.banner;

import java.util.concurrent.ScheduledThreadPoolExecutor;
/* loaded from: classes3.dex */
public class Background {
    private static final ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(1);

    public static ScheduledThreadPoolExecutor getExecutor() {
        return executor;
    }
}
