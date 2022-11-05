package com.flurry.sdk;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class jw extends kl<ku> {

    /* renamed from: a  reason: collision with root package name */
    private static jw f2941a = null;

    public static synchronized jw a() {
        jw jwVar;
        synchronized (jw.class) {
            if (f2941a == null) {
                f2941a = new jw();
            }
            jwVar = f2941a;
        }
        return jwVar;
    }

    protected jw() {
        super(jw.class.getName(), TimeUnit.MILLISECONDS, new PriorityBlockingQueue(11, new kj()));
    }
}
