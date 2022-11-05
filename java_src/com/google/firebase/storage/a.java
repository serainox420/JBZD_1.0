package com.google.firebase.storage;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static a f3605a = new a();
    private static BlockingQueue<Runnable> b = new LinkedBlockingQueue(128);
    private static final ThreadPoolExecutor c = new ThreadPoolExecutor(5, 5, 5, TimeUnit.SECONDS, b, new ThreadFactoryC0505a("Command-"));
    private static BlockingQueue<Runnable> d = new LinkedBlockingQueue(128);
    private static final ThreadPoolExecutor e = new ThreadPoolExecutor(2, 2, 5, TimeUnit.SECONDS, d, new ThreadFactoryC0505a("Upload-"));
    private static BlockingQueue<Runnable> f = new LinkedBlockingQueue(128);
    private static final ThreadPoolExecutor g = new ThreadPoolExecutor(3, 3, 5, TimeUnit.SECONDS, f, new ThreadFactoryC0505a("Download-"));
    private static BlockingQueue<Runnable> h = new LinkedBlockingQueue(128);
    private static final ThreadPoolExecutor i = new ThreadPoolExecutor(1, 1, 5, TimeUnit.SECONDS, h, new ThreadFactoryC0505a("Callbacks-"));

    /* renamed from: com.google.firebase.storage.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class ThreadFactoryC0505a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f3606a = new AtomicInteger(1);
        private final String b;

        ThreadFactoryC0505a(String str) {
            this.b = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            String str = this.b;
            Thread thread = new Thread(runnable, new StringBuilder(String.valueOf(str).length() + 27).append("FirebaseStorage-").append(str).append(this.f3606a.getAndIncrement()).toString());
            thread.setDaemon(false);
            thread.setPriority(9);
            return thread;
        }
    }

    static {
        c.allowCoreThreadTimeOut(true);
        e.allowCoreThreadTimeOut(true);
        g.allowCoreThreadTimeOut(true);
        i.allowCoreThreadTimeOut(true);
    }

    public static a a() {
        return f3605a;
    }

    public void a(Runnable runnable) {
        i.execute(runnable);
    }
}
