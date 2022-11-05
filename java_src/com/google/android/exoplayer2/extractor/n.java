package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.Format;
import java.io.IOException;
/* compiled from: TrackOutput.java */
/* loaded from: classes2.dex */
public interface n {
    int a(g gVar, int i, boolean z) throws IOException, InterruptedException;

    void a(long j, int i, int i2, int i3, byte[] bArr);

    void a(Format format);

    void a(com.google.android.exoplayer2.util.l lVar, int i);
}
