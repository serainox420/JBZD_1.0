package com.applovin.impl.sdk;

import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes.dex */
class bs {

    /* renamed from: a  reason: collision with root package name */
    private final int f1621a;
    private final Queue b;
    private final Object c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs(int i) {
        this.f1621a = i > 10 ? 10 : i;
        this.b = new LinkedList();
        this.c = new Object();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        int size;
        synchronized (this.c) {
            size = this.b.size();
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(az azVar) {
        synchronized (this.c) {
            if (!c()) {
                this.b.offer(azVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f1621a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        boolean z;
        synchronized (this.c) {
            z = a() >= this.f1621a;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        boolean z;
        synchronized (this.c) {
            z = a() == 0;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public az e() {
        az azVar;
        try {
            synchronized (this.c) {
                azVar = !d() ? (az) this.b.poll() : null;
            }
            return azVar;
        } catch (Exception e) {
            return null;
        }
    }
}
