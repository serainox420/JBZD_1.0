package com.apprupt.sdk;

import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SerialExecutor implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Queue<Runnable> f1967a = new ArrayDeque();
    private final Executor b = Executors.newSingleThreadExecutor();
    private Runnable c;

    @Override // java.util.concurrent.Executor
    public synchronized void execute(final Runnable runnable) {
        this.f1967a.offer(new Runnable() { // from class: com.apprupt.sdk.SerialExecutor.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } finally {
                    SerialExecutor.this.a();
                }
            }
        });
        if (this.c == null) {
            a();
        }
    }

    protected synchronized void a() {
        Runnable poll = this.f1967a.poll();
        this.c = poll;
        if (poll != null) {
            this.b.execute(this.c);
        }
    }
}
