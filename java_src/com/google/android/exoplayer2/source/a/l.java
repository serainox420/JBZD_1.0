package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
/* compiled from: MediaChunk.java */
/* loaded from: classes2.dex */
public abstract class l extends c {
    public final int i;

    public abstract boolean g();

    public l(com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.g gVar, Format format, int i, Object obj, long j, long j2, int i2) {
        super(eVar, gVar, 1, format, i, obj, j, j2);
        com.google.android.exoplayer2.util.a.a(format);
        this.i = i2;
    }

    public int f() {
        return this.i + 1;
    }
}
