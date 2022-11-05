package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class TaskExecutors {
    public static final Executor MAIN_THREAD = new zza();
    static final Executor zzbND = new Executor() { // from class: com.google.android.gms.tasks.TaskExecutors.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    };

    /* loaded from: classes2.dex */
    private static final class zza implements Executor {
        private final Handler mHandler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.mHandler.post(runnable);
        }
    }

    private TaskExecutors() {
    }
}
