package io.realm.internal;

import io.realm.log.RealmLog;
import java.lang.ref.ReferenceQueue;
/* compiled from: FinalizerRunnable.java */
/* loaded from: classes3.dex */
class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ReferenceQueue<g> f5796a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(ReferenceQueue<g> referenceQueue) {
        this.f5796a = referenceQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                ((NativeObjectReference) this.f5796a.remove()).a();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                RealmLog.c("The FinalizerRunnable thread has been interrupted. Native resources cannot be freed anymore", new Object[0]);
                return;
            }
        }
    }
}
