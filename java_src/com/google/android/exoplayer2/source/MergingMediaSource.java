package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.source.g;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class MergingMediaSource implements g {

    /* renamed from: a  reason: collision with root package name */
    private final g[] f3335a;
    private final ArrayList<g> b;
    private final n.b c;
    private g.a d;
    private n e;
    private Object f;
    private int g;
    private IllegalMergeException h;

    /* loaded from: classes2.dex */
    public static final class IllegalMergeException extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 1;
        public static final int REASON_WINDOWS_ARE_DYNAMIC = 0;
        public final int reason;

        public IllegalMergeException(int i) {
            this.reason = i;
        }
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(com.google.android.exoplayer2.d dVar, boolean z, g.a aVar) {
        this.d = aVar;
        for (final int i = 0; i < this.f3335a.length; i++) {
            this.f3335a[i].a(dVar, false, new g.a() { // from class: com.google.android.exoplayer2.source.MergingMediaSource.1
                @Override // com.google.android.exoplayer2.source.g.a
                public void a(n nVar, Object obj) {
                    MergingMediaSource.this.a(i, nVar, obj);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a() throws IOException {
        if (this.h != null) {
            throw this.h;
        }
        for (g gVar : this.f3335a) {
            gVar.a();
        }
    }

    @Override // com.google.android.exoplayer2.source.g
    public f a(int i, com.google.android.exoplayer2.upstream.b bVar, long j) {
        f[] fVarArr = new f[this.f3335a.length];
        for (int i2 = 0; i2 < fVarArr.length; i2++) {
            fVarArr[i2] = this.f3335a[i2].a(i, bVar, j);
        }
        return new h(fVarArr);
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(f fVar) {
        h hVar = (h) fVar;
        for (int i = 0; i < this.f3335a.length; i++) {
            this.f3335a[i].a(hVar.f3406a[i]);
        }
    }

    @Override // com.google.android.exoplayer2.source.g
    public void b() {
        for (g gVar : this.f3335a) {
            gVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, n nVar, Object obj) {
        if (this.h == null) {
            this.h = a(nVar);
        }
        if (this.h == null) {
            this.b.remove(this.f3335a[i]);
            if (i == 0) {
                this.e = nVar;
                this.f = obj;
            }
            if (this.b.isEmpty()) {
                this.d.a(this.e, this.f);
            }
        }
    }

    private IllegalMergeException a(n nVar) {
        int b = nVar.b();
        for (int i = 0; i < b; i++) {
            if (nVar.a(i, this.c, false).e) {
                return new IllegalMergeException(0);
            }
        }
        if (this.g == -1) {
            this.g = nVar.c();
        } else if (nVar.c() != this.g) {
            return new IllegalMergeException(1);
        }
        return null;
    }
}
