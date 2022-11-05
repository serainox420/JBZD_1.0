package io.fabric.sdk.android.services.b;

import android.content.Context;
/* compiled from: TimeBasedFileRollOverRunnable.java */
/* loaded from: classes3.dex */
public class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5656a;
    private final e b;

    public i(Context context, e eVar) {
        this.f5656a = context;
        this.b = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            io.fabric.sdk.android.services.common.i.a(this.f5656a, "Performing time based file roll over.");
            if (!this.b.rollFileOver()) {
                this.b.cancelTimeBasedFileRollOver();
            }
        } catch (Exception e) {
            io.fabric.sdk.android.services.common.i.a(this.f5656a, "Failed to roll over file", e);
        }
    }
}
