package com.google.android.exoplayer2.text.c;

import com.google.android.exoplayer2.util.v;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: TtmlSubtitle.java */
/* loaded from: classes2.dex */
final class f implements com.google.android.exoplayer2.text.e {

    /* renamed from: a  reason: collision with root package name */
    private final b f3441a;
    private final long[] b;
    private final Map<String, e> c;
    private final Map<String, c> d;

    public f(b bVar, Map<String, e> map, Map<String, c> map2) {
        this.f3441a = bVar;
        this.d = map2;
        this.c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.b = bVar.b();
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j) {
        int b = v.b(this.b, j, false, false);
        if (b < this.b.length) {
            return b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int b() {
        return this.b.length;
    }

    @Override // com.google.android.exoplayer2.text.e
    public long a(int i) {
        return this.b[i];
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.b> b(long j) {
        return this.f3441a.a(j, this.c, this.d);
    }
}
