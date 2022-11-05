package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.Format;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: DummyTrackOutput.java */
/* loaded from: classes2.dex */
public final class e implements n {
    @Override // com.google.android.exoplayer2.extractor.n
    public void a(Format format) {
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public int a(g gVar, int i, boolean z) throws IOException, InterruptedException {
        int a2 = gVar.a(i);
        if (a2 == -1) {
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        return a2;
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public void a(com.google.android.exoplayer2.util.l lVar, int i) {
        lVar.d(i);
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public void a(long j, int i, int i2, int i3, byte[] bArr) {
    }
}
