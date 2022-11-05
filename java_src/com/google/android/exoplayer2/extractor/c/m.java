package com.google.android.exoplayer2.extractor.c;

import com.google.android.exoplayer2.util.v;
/* compiled from: TrackSampleTable.java */
/* loaded from: classes2.dex */
final class m {

    /* renamed from: a  reason: collision with root package name */
    public final int f3234a;
    public final long[] b;
    public final int[] c;
    public final int d;
    public final long[] e;
    public final int[] f;

    public m(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        boolean z = true;
        com.google.android.exoplayer2.util.a.a(iArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(jArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(iArr2.length != jArr2.length ? false : z);
        this.b = jArr;
        this.c = iArr;
        this.d = i;
        this.e = jArr2;
        this.f = iArr2;
        this.f3234a = jArr.length;
    }

    public int a(long j) {
        for (int a2 = v.a(this.e, j, true, false); a2 >= 0; a2--) {
            if ((this.f[a2] & 1) != 0) {
                return a2;
            }
        }
        return -1;
    }

    public int b(long j) {
        for (int b = v.b(this.e, j, true, false); b < this.e.length; b++) {
            if ((this.f[b] & 1) != 0) {
                return b;
            }
        }
        return -1;
    }
}
