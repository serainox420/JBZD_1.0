package com.google.android.exoplayer2.b;

import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.l;
import java.util.Arrays;
import java.util.Comparator;
/* compiled from: BaseTrackSelection.java */
/* loaded from: classes2.dex */
public abstract class b implements f {

    /* renamed from: a  reason: collision with root package name */
    protected final l f3172a;
    protected final int b;
    protected final int[] c;
    private final Format[] d;
    private final long[] e;
    private int f;

    public b(l lVar, int... iArr) {
        com.google.android.exoplayer2.util.a.b(iArr.length > 0);
        this.f3172a = (l) com.google.android.exoplayer2.util.a.a(lVar);
        this.b = iArr.length;
        this.d = new Format[this.b];
        for (int i = 0; i < iArr.length; i++) {
            this.d[i] = lVar.a(iArr[i]);
        }
        Arrays.sort(this.d, new a());
        this.c = new int[this.b];
        for (int i2 = 0; i2 < this.b; i2++) {
            this.c[i2] = lVar.a(this.d[i2]);
        }
        this.e = new long[this.b];
    }

    @Override // com.google.android.exoplayer2.b.f
    public final l d() {
        return this.f3172a;
    }

    @Override // com.google.android.exoplayer2.b.f
    public final int e() {
        return this.c.length;
    }

    @Override // com.google.android.exoplayer2.b.f
    public final Format a(int i) {
        return this.d[i];
    }

    @Override // com.google.android.exoplayer2.b.f
    public final int b(int i) {
        return this.c[i];
    }

    @Override // com.google.android.exoplayer2.b.f
    public final int a(Format format) {
        for (int i = 0; i < this.b; i++) {
            if (this.d[i] == format) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.b.f
    public final int c(int i) {
        for (int i2 = 0; i2 < this.b; i2++) {
            if (this.c[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.b.f
    public final Format f() {
        return this.d[a()];
    }

    @Override // com.google.android.exoplayer2.b.f
    public final int g() {
        return this.c[a()];
    }

    @Override // com.google.android.exoplayer2.b.f
    public final boolean a(int i, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean b = b(i, elapsedRealtime);
        int i2 = 0;
        while (i2 < this.b && !b) {
            b = i2 != i && !b(i2, elapsedRealtime);
            i2++;
        }
        if (!b) {
            return false;
        }
        this.e[i] = Math.max(this.e[i], elapsedRealtime + j);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b(int i, long j) {
        return this.e[i] > j;
    }

    public int hashCode() {
        if (this.f == 0) {
            this.f = (System.identityHashCode(this.f3172a) * 31) + Arrays.hashCode(this.c);
        }
        return this.f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3172a == bVar.f3172a && Arrays.equals(this.c, bVar.c);
    }

    /* compiled from: BaseTrackSelection.java */
    /* loaded from: classes2.dex */
    private static final class a implements Comparator<Format> {
        private a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Format format, Format format2) {
            return format2.b - format.b;
        }
    }
}
