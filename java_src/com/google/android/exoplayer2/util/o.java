package com.google.android.exoplayer2.util;

import android.os.HandlerThread;
import android.os.Process;
/* compiled from: PriorityHandlerThread.java */
/* loaded from: classes2.dex */
public final class o extends HandlerThread {

    /* renamed from: a  reason: collision with root package name */
    private final int f3513a;

    public o(String str, int i) {
        super(str);
        this.f3513a = i;
    }

    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(this.f3513a);
        super.run();
    }
}
