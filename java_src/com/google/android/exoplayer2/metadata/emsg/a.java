package com.google.android.exoplayer2.metadata.emsg;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.c;
import com.google.android.exoplayer2.util.l;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* compiled from: EventMessageDecoder.java */
/* loaded from: classes2.dex */
public final class a implements com.google.android.exoplayer2.metadata.a {
    @Override // com.google.android.exoplayer2.metadata.a
    public Metadata a(c cVar) {
        ByteBuffer byteBuffer = cVar.b;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        l lVar = new l(array, limit);
        String w = lVar.w();
        String w2 = lVar.w();
        long k = lVar.k();
        lVar.d(4);
        return new Metadata(new EventMessage(w, w2, (lVar.k() * 1000) / k, lVar.k(), Arrays.copyOfRange(array, lVar.d(), limit)));
    }
}
