package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.source.j;
import java.io.IOException;
/* compiled from: MediaPeriod.java */
/* loaded from: classes2.dex */
public interface f extends j {

    /* compiled from: MediaPeriod.java */
    /* loaded from: classes2.dex */
    public interface a extends j.a<f> {
        void a(f fVar);
    }

    long a(com.google.android.exoplayer2.b.f[] fVarArr, boolean[] zArr, i[] iVarArr, boolean[] zArr2, long j);

    void a(a aVar);

    @Override // com.google.android.exoplayer2.source.j
    boolean a(long j);

    void b(long j);

    @Override // com.google.android.exoplayer2.source.j
    long b_();

    long c(long j);

    void c() throws IOException;

    m d();

    long e();

    long f();
}
