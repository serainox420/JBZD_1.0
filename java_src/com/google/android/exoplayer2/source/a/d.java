package com.google.android.exoplayer2.source.a;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.n;
import java.io.IOException;
/* compiled from: ChunkExtractorWrapper.java */
/* loaded from: classes2.dex */
public final class d implements com.google.android.exoplayer2.extractor.h {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.exoplayer2.extractor.f f3345a;
    private final Format b;
    private final SparseArray<a> c = new SparseArray<>();
    private boolean d;
    private b e;
    private com.google.android.exoplayer2.extractor.m f;
    private Format[] g;

    /* compiled from: ChunkExtractorWrapper.java */
    /* loaded from: classes2.dex */
    public interface b {
        n a(int i, int i2);
    }

    public d(com.google.android.exoplayer2.extractor.f fVar, Format format) {
        this.f3345a = fVar;
        this.b = format;
    }

    public com.google.android.exoplayer2.extractor.m b() {
        return this.f;
    }

    public Format[] c() {
        return this.g;
    }

    public void a(b bVar) {
        this.e = bVar;
        if (!this.d) {
            this.f3345a.a(this);
            this.d = true;
            return;
        }
        this.f3345a.a(0L, 0L);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.size()) {
                this.c.valueAt(i2).a(bVar);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public n a(int i, int i2) {
        a aVar = this.c.get(i);
        if (aVar == null) {
            com.google.android.exoplayer2.util.a.b(this.g == null);
            a aVar2 = new a(i, i2, this.b);
            aVar2.a(this.e);
            this.c.put(i, aVar2);
            return aVar2;
        }
        return aVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public void a() {
        Format[] formatArr = new Format[this.c.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.size()) {
                formatArr[i2] = this.c.valueAt(i2).f3346a;
                i = i2 + 1;
            } else {
                this.g = formatArr;
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public void a(com.google.android.exoplayer2.extractor.m mVar) {
        this.f = mVar;
    }

    /* compiled from: ChunkExtractorWrapper.java */
    /* loaded from: classes2.dex */
    private static final class a implements n {

        /* renamed from: a  reason: collision with root package name */
        public Format f3346a;
        private final int b;
        private final int c;
        private final Format d;
        private n e;

        public a(int i, int i2, Format format) {
            this.b = i;
            this.c = i2;
            this.d = format;
        }

        public void a(b bVar) {
            if (bVar == null) {
                this.e = new com.google.android.exoplayer2.extractor.e();
                return;
            }
            this.e = bVar.a(this.b, this.c);
            if (this.e != null) {
                this.e.a(this.f3346a);
            }
        }

        @Override // com.google.android.exoplayer2.extractor.n
        public void a(Format format) {
            this.f3346a = format.a(this.d);
            this.e.a(this.f3346a);
        }

        @Override // com.google.android.exoplayer2.extractor.n
        public int a(com.google.android.exoplayer2.extractor.g gVar, int i, boolean z) throws IOException, InterruptedException {
            return this.e.a(gVar, i, z);
        }

        @Override // com.google.android.exoplayer2.extractor.n
        public void a(com.google.android.exoplayer2.util.l lVar, int i) {
            this.e.a(lVar, i);
        }

        @Override // com.google.android.exoplayer2.extractor.n
        public void a(long j, int i, int i2, int i3, byte[] bArr) {
            this.e.a(j, i, i2, i3, bArr);
        }
    }
}
