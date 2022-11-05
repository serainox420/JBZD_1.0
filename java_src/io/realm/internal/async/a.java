package io.realm.internal.async;

import android.os.Process;
/* compiled from: BgPriorityRunnable.java */
/* loaded from: classes3.dex */
public class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f5788a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Runnable runnable) {
        this.f5788a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        this.f5788a.run();
    }
}
