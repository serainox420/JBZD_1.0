package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.v;
import com.inmobi.monetization.internal.Constants;
/* compiled from: DefaultLoadControl.java */
/* loaded from: classes2.dex */
public final class c implements i {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.h f3181a;
    private final long b;
    private final long c;
    private final long d;
    private final long e;
    private final PriorityTaskManager f;
    private int g;
    private boolean h;

    public c() {
        this(new com.google.android.exoplayer2.upstream.h(true, 65536));
    }

    public c(com.google.android.exoplayer2.upstream.h hVar) {
        this(hVar, Constants.HTTP_TIMEOUT, 30000, 2500L, 5000L);
    }

    public c(com.google.android.exoplayer2.upstream.h hVar, int i, int i2, long j, long j2) {
        this(hVar, i, i2, j, j2, null);
    }

    public c(com.google.android.exoplayer2.upstream.h hVar, int i, int i2, long j, long j2, PriorityTaskManager priorityTaskManager) {
        this.f3181a = hVar;
        this.b = i * 1000;
        this.c = i2 * 1000;
        this.d = j * 1000;
        this.e = j2 * 1000;
        this.f = priorityTaskManager;
    }

    @Override // com.google.android.exoplayer2.i
    public void a() {
        a(false);
    }

    @Override // com.google.android.exoplayer2.i
    public void a(j[] jVarArr, com.google.android.exoplayer2.source.m mVar, com.google.android.exoplayer2.b.g gVar) {
        this.g = 0;
        for (int i = 0; i < jVarArr.length; i++) {
            if (gVar.a(i) != null) {
                this.g += v.c(jVarArr[i].a());
            }
        }
        this.f3181a.a(this.g);
    }

    @Override // com.google.android.exoplayer2.i
    public void b() {
        a(true);
    }

    @Override // com.google.android.exoplayer2.i
    public void c() {
        a(true);
    }

    @Override // com.google.android.exoplayer2.i
    public com.google.android.exoplayer2.upstream.b d() {
        return this.f3181a;
    }

    @Override // com.google.android.exoplayer2.i
    public boolean a(long j, boolean z) {
        long j2 = z ? this.e : this.d;
        return j2 <= 0 || j >= j2;
    }

    @Override // com.google.android.exoplayer2.i
    public boolean a(long j) {
        boolean z = true;
        int b = b(j);
        boolean z2 = this.f3181a.e() >= this.g;
        boolean z3 = this.h;
        if (b != 2 && (b != 1 || !this.h || z2)) {
            z = false;
        }
        this.h = z;
        if (this.f != null && this.h != z3) {
            if (this.h) {
                this.f.a(0);
            } else {
                this.f.b(0);
            }
        }
        return this.h;
    }

    private int b(long j) {
        if (j > this.c) {
            return 0;
        }
        return j < this.b ? 2 : 1;
    }

    private void a(boolean z) {
        this.g = 0;
        if (this.f != null && this.h) {
            this.f.b(0);
        }
        this.h = false;
        if (z) {
            this.f3181a.d();
        }
    }
}
