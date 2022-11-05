package io.fabric.sdk.android.services.common;

import android.os.Process;
/* compiled from: BackgroundPriorityRunnable.java */
/* loaded from: classes3.dex */
public abstract class h implements Runnable {
    protected abstract void onRun();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        onRun();
    }
}
