package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
class CrashlyticsUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    private final CrashListener crashListener;
    private final Thread.UncaughtExceptionHandler defaultHandler;
    private final AtomicBoolean isHandlingException = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    interface CrashListener {
        void onUncaughtException(Thread thread, Throwable th);
    }

    public CrashlyticsUncaughtExceptionHandler(CrashListener crashListener, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.crashListener = crashListener;
        this.defaultHandler = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.isHandlingException.set(true);
        try {
            try {
                this.crashListener.onUncaughtException(thread, th);
                c.h().a(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
                this.defaultHandler.uncaughtException(thread, th);
                this.isHandlingException.set(false);
            } catch (Exception e) {
                c.h().e(CrashlyticsCore.TAG, "An error occurred in the uncaught exception handler", e);
                c.h().a(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
                this.defaultHandler.uncaughtException(thread, th);
                this.isHandlingException.set(false);
            }
        } catch (Throwable th2) {
            c.h().a(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
            this.defaultHandler.uncaughtException(thread, th);
            this.isHandlingException.set(false);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHandlingException() {
        return this.isHandlingException.get();
    }
}
