package com.google.android.exoplayer2.source.a;

import android.util.Log;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.source.a.d;
/* compiled from: BaseMediaChunkOutput.java */
/* loaded from: classes2.dex */
final class b implements d.b {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f3343a;
    private final com.google.android.exoplayer2.extractor.d[] b;

    public b(int[] iArr, com.google.android.exoplayer2.extractor.d[] dVarArr) {
        this.f3343a = iArr;
        this.b = dVarArr;
    }

    @Override // com.google.android.exoplayer2.source.a.d.b
    public n a(int i, int i2) {
        for (int i3 = 0; i3 < this.f3343a.length; i3++) {
            if (i2 == this.f3343a[i3]) {
                return this.b[i3];
            }
        }
        Log.e("BaseMediaChunkOutput", "Unmatched track of type: " + i2);
        return new com.google.android.exoplayer2.extractor.e();
    }

    public int[] a() {
        int[] iArr = new int[this.b.length];
        for (int i = 0; i < this.b.length; i++) {
            if (this.b[i] != null) {
                iArr[i] = this.b[i].b();
            }
        }
        return iArr;
    }

    public void a(long j) {
        com.google.android.exoplayer2.extractor.d[] dVarArr;
        for (com.google.android.exoplayer2.extractor.d dVar : this.b) {
            if (dVar != null) {
                dVar.b(j);
            }
        }
    }
}
