package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
/* compiled from: BaseMediaChunk.java */
/* loaded from: classes2.dex */
public abstract class a extends l {
    private b j;
    private int[] k;

    public a(com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.g gVar, Format format, int i, Object obj, long j, long j2, int i2) {
        super(eVar, gVar, format, i, obj, j, j2, i2);
    }

    public void a(b bVar) {
        this.j = bVar;
        this.k = bVar.a();
    }

    public final int a(int i) {
        return this.k[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final b d() {
        return this.j;
    }
}
