package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.f.u;
import java.util.List;
/* compiled from: SeiReader.java */
/* loaded from: classes2.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    private final List<Format> f3276a;
    private final com.google.android.exoplayer2.extractor.n[] b;

    public r(List<Format> list) {
        this.f3276a = list;
        this.b = new com.google.android.exoplayer2.extractor.n[list.size()];
    }

    public void a(com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        for (int i = 0; i < this.b.length; i++) {
            cVar.a();
            com.google.android.exoplayer2.extractor.n a2 = hVar.a(cVar.b(), 3);
            Format format = this.f3276a.get(i);
            String str = format.f;
            com.google.android.exoplayer2.util.a.a("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            a2.a(Format.a(cVar.c(), str, (String) null, -1, format.w, format.x, format.y, (DrmInitData) null));
            this.b[i] = a2;
        }
    }

    public void a(long j, com.google.android.exoplayer2.util.l lVar) {
        com.google.android.exoplayer2.text.a.g.a(j, lVar, this.b);
    }
}
