package com.google.android.exoplayer2.text.b;

import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.v;
import java.util.Collections;
import java.util.List;
/* compiled from: SubripSubtitle.java */
/* loaded from: classes2.dex */
final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.text.b[] f3434a;
    private final long[] b;

    public b(com.google.android.exoplayer2.text.b[] bVarArr, long[] jArr) {
        this.f3434a = bVarArr;
        this.b = jArr;
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
        boolean z = true;
        com.google.android.exoplayer2.util.a.a(i >= 0);
        if (i >= this.b.length) {
            z = false;
        }
        com.google.android.exoplayer2.util.a.a(z);
        return this.b[i];
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.b> b(long j) {
        int a2 = v.a(this.b, j, true, false);
        return (a2 == -1 || this.f3434a[a2] == null) ? Collections.emptyList() : Collections.singletonList(this.f3434a[a2]);
    }
}
