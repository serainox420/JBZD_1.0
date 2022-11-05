package com.inmobi.commons.metric;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
/* loaded from: classes2.dex */
public class Queuer {

    /* renamed from: a  reason: collision with root package name */
    private StringBuffer f3808a = new StringBuffer();
    private long b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        return this.b;
    }

    public void log(EventLog eventLog) {
        synchronized (this.f3808a) {
            this.f3808a.append(eventLog.toString()).append(',');
            this.b++;
        }
    }

    public String get() {
        String stringBuffer;
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Reading from queue");
        synchronized (this.f3808a) {
            stringBuffer = this.f3808a.toString();
        }
        return stringBuffer;
    }

    public void reset() {
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Resetting queue");
        synchronized (this.f3808a) {
            this.f3808a = new StringBuffer();
            this.b = 0L;
        }
    }
}
