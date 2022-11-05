package com.intentsoftware.addapptr;

import com.intentsoftware.addapptr.b.b;
import java.util.HashMap;
/* compiled from: DataReporter.java */
/* loaded from: classes2.dex */
abstract class m {
    private static final int MAX_RETRIES = 3;
    private static final long RETRY_DELAY = 7000;
    private static final long RETRY_DELAY_ON_NO_NETWORK = 30000;

    abstract String getReportUrl();

    /* JADX INFO: Access modifiers changed from: package-private */
    public b.a createRetryListener(HashMap<String, String> hashMap) {
        return new com.intentsoftware.addapptr.c.f(getReportUrl(), hashMap, 3, RETRY_DELAY, 30000L);
    }
}
