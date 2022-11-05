package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.j;
import com.google.android.exoplayer2.util.l;
/* compiled from: VideoTagPayloadReader.java */
/* loaded from: classes2.dex */
final class d extends TagPayloadReader {
    private final l b;
    private final l c;
    private int d;
    private boolean e;
    private int f;

    public d(n nVar) {
        super(nVar);
        this.b = new l(j.f3507a);
        this.c = new l(4);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean a(l lVar) throws TagPayloadReader.UnsupportedFormatException {
        int f = lVar.f();
        int i = (f >> 4) & 15;
        int i2 = f & 15;
        if (i2 != 7) {
            throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i2);
        }
        this.f = i;
        return i != 5;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected void a(l lVar, long j) throws ParserException {
        int f = lVar.f();
        long j2 = (lVar.j() * 1000) + j;
        if (f == 0 && !this.e) {
            l lVar2 = new l(new byte[lVar.b()]);
            lVar.a(lVar2.f3511a, 0, lVar.b());
            com.google.android.exoplayer2.c.a a2 = com.google.android.exoplayer2.c.a.a(lVar2);
            this.d = a2.b;
            this.f3283a.a(Format.a((String) null, "video/avc", (String) null, -1, -1, a2.c, a2.d, -1.0f, a2.f3182a, -1, a2.e, (DrmInitData) null));
            this.e = true;
        } else if (f == 1) {
            byte[] bArr = this.c.f3511a;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i = 4 - this.d;
            int i2 = 0;
            while (lVar.b() > 0) {
                lVar.a(this.c.f3511a, i, this.d);
                this.c.c(0);
                int s = this.c.s();
                this.b.c(0);
                this.f3283a.a(this.b, 4);
                this.f3283a.a(lVar, s);
                i2 = i2 + 4 + s;
            }
            this.f3283a.a(j2, this.f == 1 ? 1 : 0, i2, 0, null);
        }
    }
}
