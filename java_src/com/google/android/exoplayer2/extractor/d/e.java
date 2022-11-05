package com.google.android.exoplayer2.extractor.d;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: OggPageHeader.java */
/* loaded from: classes2.dex */
final class e {
    private static final int k = v.g("OggS");

    /* renamed from: a  reason: collision with root package name */
    public int f3244a;
    public int b;
    public long c;
    public long d;
    public long e;
    public long f;
    public int g;
    public int h;
    public int i;
    public final int[] j = new int[255];
    private final l l = new l(255);

    public void a() {
        this.f3244a = 0;
        this.b = 0;
        this.c = 0L;
        this.d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = 0;
        this.h = 0;
        this.i = 0;
    }

    public boolean a(com.google.android.exoplayer2.extractor.g gVar, boolean z) throws IOException, InterruptedException {
        this.l.a();
        a();
        if (!(gVar.d() == -1 || gVar.d() - gVar.b() >= 27) || !gVar.b(this.l.f3511a, 0, 27, true)) {
            if (!z) {
                throw new EOFException();
            }
            return false;
        } else if (this.l.k() != k) {
            if (z) {
                return false;
            }
            throw new ParserException("expected OggS capture pattern at begin of page");
        } else {
            this.f3244a = this.l.f();
            if (this.f3244a != 0) {
                if (z) {
                    return false;
                }
                throw new ParserException("unsupported bit stream revision");
            }
            this.b = this.l.f();
            this.c = this.l.p();
            this.d = this.l.l();
            this.e = this.l.l();
            this.f = this.l.l();
            this.g = this.l.f();
            this.h = this.g + 27;
            this.l.a();
            gVar.c(this.l.f3511a, 0, this.g);
            for (int i = 0; i < this.g; i++) {
                this.j[i] = this.l.f();
                this.i += this.j[i];
            }
            return true;
        }
    }
}
