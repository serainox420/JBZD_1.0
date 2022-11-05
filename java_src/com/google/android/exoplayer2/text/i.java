package com.google.android.exoplayer2.text;

import com.facebook.common.time.Clock;
import java.util.List;
/* compiled from: SubtitleOutputBuffer.java */
/* loaded from: classes2.dex */
public abstract class i extends com.google.android.exoplayer2.a.f implements e {
    private e c;
    private long d;

    public abstract void e();

    public void a(long j, e eVar, long j2) {
        this.f3149a = j;
        this.c = eVar;
        if (j2 == Clock.MAX_TIME) {
            j2 = this.f3149a;
        }
        this.d = j2;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int b() {
        return this.c.b();
    }

    @Override // com.google.android.exoplayer2.text.e
    public long a(int i) {
        return this.c.a(i) + this.d;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j) {
        return this.c.a(j - this.d);
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<b> b(long j) {
        return this.c.b(j - this.d);
    }

    @Override // com.google.android.exoplayer2.a.a
    public void a() {
        super.a();
        this.c = null;
    }
}
