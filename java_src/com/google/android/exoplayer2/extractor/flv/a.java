package com.google.android.exoplayer2.extractor.flv;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.l;
import java.util.Collections;
import java.util.List;
/* compiled from: AudioTagPayloadReader.java */
/* loaded from: classes2.dex */
final class a extends TagPayloadReader {
    private boolean b;
    private boolean c;
    private int d;

    public a(n nVar) {
        super(nVar);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean a(l lVar) throws TagPayloadReader.UnsupportedFormatException {
        if (!this.b) {
            int f = lVar.f();
            this.d = (f >> 4) & 15;
            if (this.d == 7 || this.d == 8) {
                this.f3283a.a(Format.a((String) null, this.d == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", (String) null, -1, -1, 1, 8000, (f & 1) == 1 ? 2 : 3, (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
                this.c = true;
            } else if (this.d != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.d);
            }
            this.b = true;
        } else {
            lVar.d(1);
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected void a(l lVar, long j) {
        int f = lVar.f();
        if (f == 0 && !this.c) {
            byte[] bArr = new byte[lVar.b()];
            lVar.a(bArr, 0, bArr.length);
            Pair<Integer, Integer> a2 = com.google.android.exoplayer2.util.c.a(bArr);
            this.f3283a.a(Format.a(null, "audio/mp4a-latm", null, -1, -1, ((Integer) a2.second).intValue(), ((Integer) a2.first).intValue(), Collections.singletonList(bArr), null, 0, null));
            this.c = true;
        } else if (this.d != 10 || f == 1) {
            int b = lVar.b();
            this.f3283a.a(lVar, b);
            this.f3283a.a(j, 1, b, 0, null);
        }
    }
}
