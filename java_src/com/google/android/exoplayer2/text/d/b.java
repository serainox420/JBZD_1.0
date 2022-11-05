package com.google.android.exoplayer2.text.d;

import com.google.android.exoplayer2.text.e;
import java.util.Collections;
import java.util.List;
/* compiled from: Tx3gSubtitle.java */
/* loaded from: classes2.dex */
final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3443a = new b();
    private final List<com.google.android.exoplayer2.text.b> b;

    public b(com.google.android.exoplayer2.text.b bVar) {
        this.b = Collections.singletonList(bVar);
    }

    private b() {
        this.b = Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int b() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public long a(int i) {
        com.google.android.exoplayer2.util.a.a(i == 0);
        return 0L;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.b> b(long j) {
        return j >= 0 ? this.b : Collections.emptyList();
    }
}
