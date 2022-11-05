package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.f.u;
/* compiled from: SpliceInfoSectionReader.java */
/* loaded from: classes2.dex */
public final class s implements p {

    /* renamed from: a  reason: collision with root package name */
    private com.google.android.exoplayer2.util.s f3277a;
    private com.google.android.exoplayer2.extractor.n b;
    private boolean c;

    @Override // com.google.android.exoplayer2.extractor.f.p
    public void a(com.google.android.exoplayer2.util.s sVar, com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        this.f3277a = sVar;
        cVar.a();
        this.b = hVar.a(cVar.b(), 4);
        this.b.a(Format.a(cVar.c(), "application/x-scte35", null, -1, null));
    }

    @Override // com.google.android.exoplayer2.extractor.f.p
    public void a(com.google.android.exoplayer2.util.l lVar) {
        if (!this.c) {
            if (this.f3277a.c() != -9223372036854775807L) {
                this.b.a(Format.a((String) null, "application/x-scte35", this.f3277a.c()));
                this.c = true;
            } else {
                return;
            }
        }
        int b = lVar.b();
        this.b.a(lVar, b);
        this.b.a(this.f3277a.b(), 1, b, 0, null);
    }
}
