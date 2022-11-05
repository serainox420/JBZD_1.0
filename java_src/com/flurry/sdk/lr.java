package com.flurry.sdk;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
public final class lr implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadGroup f3039a;
    private final int b = 1;

    public lr(String str) {
        this.f3039a = new ThreadGroup(str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f3039a, runnable);
        thread.setName(this.f3039a.getName() + ":" + thread.getId());
        thread.setPriority(this.b);
        return thread;
    }
}
