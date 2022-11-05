package com.google.android.exoplayer2.text.a;

import java.util.Collections;
import java.util.List;
/* compiled from: CeaSubtitle.java */
/* loaded from: classes2.dex */
final class f implements com.google.android.exoplayer2.text.e {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.text.b> f3431a;

    public f(List<com.google.android.exoplayer2.text.b> list) {
        this.f3431a = list;
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
        return j >= 0 ? this.f3431a : Collections.emptyList();
    }
}
