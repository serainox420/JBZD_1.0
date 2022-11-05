package com.google.android.exoplayer2.source.b;

import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.s;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WebvttExtractor.java */
/* loaded from: classes2.dex */
public final class l implements com.google.android.exoplayer2.extractor.f {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3370a = Pattern.compile("LOCAL:([^,]+)");
    private static final Pattern b = Pattern.compile("MPEGTS:(\\d+)");
    private final String c;
    private final s d;
    private com.google.android.exoplayer2.extractor.h f;
    private int h;
    private final com.google.android.exoplayer2.util.l e = new com.google.android.exoplayer2.util.l();
    private byte[] g = new byte[1024];

    public l(String str, s sVar) {
        this.c = str;
        this.d = sVar;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(com.google.android.exoplayer2.extractor.h hVar) {
        this.f = hVar;
        hVar.a(new m.a(-9223372036854775807L));
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        int d = (int) gVar.d();
        if (this.h == this.g.length) {
            this.g = Arrays.copyOf(this.g, ((d != -1 ? d : this.g.length) * 3) / 2);
        }
        int a2 = gVar.a(this.g, this.h, this.g.length - this.h);
        if (a2 != -1) {
            this.h = a2 + this.h;
            if (d == -1 || this.h != d) {
                return 0;
            }
        }
        a();
        return -1;
    }

    private void a() throws ParserException {
        com.google.android.exoplayer2.util.l lVar = new com.google.android.exoplayer2.util.l(this.g);
        try {
            com.google.android.exoplayer2.text.e.h.a(lVar);
            long j = 0;
            long j2 = 0;
            while (true) {
                String x = lVar.x();
                if (!TextUtils.isEmpty(x)) {
                    if (x.startsWith("X-TIMESTAMP-MAP")) {
                        Matcher matcher = f3370a.matcher(x);
                        if (!matcher.find()) {
                            throw new ParserException("X-TIMESTAMP-MAP doesn't contain local timestamp: " + x);
                        }
                        Matcher matcher2 = b.matcher(x);
                        if (!matcher2.find()) {
                            throw new ParserException("X-TIMESTAMP-MAP doesn't contain media timestamp: " + x);
                        }
                        j2 = com.google.android.exoplayer2.text.e.h.a(matcher.group(1));
                        j = s.d(Long.parseLong(matcher2.group(1)));
                    }
                } else {
                    Matcher b2 = com.google.android.exoplayer2.text.e.h.b(lVar);
                    if (b2 == null) {
                        a(0L);
                        return;
                    }
                    long a2 = com.google.android.exoplayer2.text.e.h.a(b2.group(1));
                    long c = this.d.c((j + a2) - j2);
                    n a3 = a(c - a2);
                    this.e.a(this.g, this.h);
                    a3.a(this.e, this.h);
                    a3.a(c, 1, this.h, 0, null);
                    return;
                }
            }
        } catch (SubtitleDecoderException e) {
            throw new ParserException(e);
        }
    }

    private n a(long j) {
        n a2 = this.f.a(0, 3);
        a2.a(Format.a((String) null, "text/vtt", (String) null, -1, 0, this.c, (DrmInitData) null, j));
        this.f.a();
        return a2;
    }
}
