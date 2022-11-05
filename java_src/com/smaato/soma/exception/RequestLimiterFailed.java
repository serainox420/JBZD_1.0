package com.smaato.soma.exception;
/* loaded from: classes3.dex */
public class RequestLimiterFailed extends Exception {
    public RequestLimiterFailed() {
    }

    public RequestLimiterFailed(String str) {
        super(str);
    }

    public RequestLimiterFailed(Throwable th) {
        super(th);
    }

    public RequestLimiterFailed(String str, Throwable th) {
        super(str, th);
    }
}
