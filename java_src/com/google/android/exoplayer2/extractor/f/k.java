package com.google.android.exoplayer2.extractor.f;

import android.util.Log;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.f.u;
/* compiled from: Id3Reader.java */
/* loaded from: classes2.dex */
public final class k implements g {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.l f3269a = new com.google.android.exoplayer2.util.l(10);
    private com.google.android.exoplayer2.extractor.n b;
    private boolean c;
    private long d;
    private int e;
    private int f;

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a() {
        this.c = false;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        cVar.a();
        this.b = hVar.a(cVar.b(), 4);
        this.b.a(Format.a(cVar.c(), "application/id3", null, -1, null));
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(long j, boolean z) {
        if (z) {
            this.c = true;
            this.d = j;
            this.e = 0;
            this.f = 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.util.l lVar) {
        if (this.c) {
            int b = lVar.b();
            if (this.f < 10) {
                int min = Math.min(b, 10 - this.f);
                System.arraycopy(lVar.f3511a, lVar.d(), this.f3269a.f3511a, this.f, min);
                if (min + this.f == 10) {
                    this.f3269a.c(0);
                    if (73 != this.f3269a.f() || 68 != this.f3269a.f() || 51 != this.f3269a.f()) {
                        Log.w("Id3Reader", "Discarding invalid ID3 tag");
                        this.c = false;
                        return;
                    }
                    this.f3269a.d(3);
                    this.e = this.f3269a.r() + 10;
                }
            }
            int min2 = Math.min(b, this.e - this.f);
            this.b.a(lVar, min2);
            this.f = min2 + this.f;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void b() {
        if (this.c && this.e != 0 && this.f == this.e) {
            this.b.a(this.d, 1, this.e, 0, null);
            this.c = false;
        }
    }
}
