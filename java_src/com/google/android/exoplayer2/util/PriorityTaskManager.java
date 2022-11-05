package com.google.android.exoplayer2.util;

import java.io.IOException;
import java.util.PriorityQueue;
/* loaded from: classes2.dex */
public final class PriorityTaskManager {

    /* renamed from: a  reason: collision with root package name */
    private final Object f3499a;
    private final PriorityQueue<Integer> b;
    private int c;

    /* loaded from: classes2.dex */
    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i, int i2) {
            super("Priority too low [priority=" + i + ", highest=" + i2 + "]");
        }
    }

    public void a(int i) {
        synchronized (this.f3499a) {
            this.b.add(Integer.valueOf(i));
            this.c = Math.max(this.c, i);
        }
    }

    public void b(int i) {
        synchronized (this.f3499a) {
            this.b.remove(Integer.valueOf(i));
            this.c = this.b.isEmpty() ? Integer.MIN_VALUE : this.b.peek().intValue();
            this.f3499a.notifyAll();
        }
    }
}
