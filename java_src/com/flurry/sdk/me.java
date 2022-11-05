package com.flurry.sdk;

import java.lang.Thread;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class me {
    private static me c;
    final Map<Thread.UncaughtExceptionHandler, Void> b = new WeakHashMap();

    /* renamed from: a  reason: collision with root package name */
    final Thread.UncaughtExceptionHandler f3056a = Thread.getDefaultUncaughtExceptionHandler();

    public static synchronized me a() {
        me meVar;
        synchronized (me.class) {
            if (c == null) {
                c = new me();
            }
            meVar = c;
        }
        return meVar;
    }

    final Set<Thread.UncaughtExceptionHandler> b() {
        Set<Thread.UncaughtExceptionHandler> keySet;
        synchronized (this.b) {
            keySet = this.b.keySet();
        }
        return keySet;
    }

    private me() {
        Thread.setDefaultUncaughtExceptionHandler(new a(this, (byte) 0));
    }

    /* loaded from: classes2.dex */
    final class a implements Thread.UncaughtExceptionHandler {
        private a() {
        }

        /* synthetic */ a(me meVar, byte b) {
            this();
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            for (Thread.UncaughtExceptionHandler uncaughtExceptionHandler : me.this.b()) {
                try {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                } catch (Throwable th2) {
                }
            }
            me meVar = me.this;
            if (meVar.f3056a != null) {
                try {
                    meVar.f3056a.uncaughtException(thread, th);
                } catch (Throwable th3) {
                }
            }
        }
    }
}
