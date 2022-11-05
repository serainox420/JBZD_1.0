package com.google.android.exoplayer2.extractor.a;

import com.flurry.android.Constants;
import com.google.android.exoplayer2.extractor.g;
import java.io.IOException;
/* compiled from: VarintReader.java */
/* loaded from: classes2.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final long[] f3208a = {128, 64, 32, 16, 8, 4, 2, 1};
    private final byte[] b = new byte[8];
    private int c;
    private int d;

    public void a() {
        this.c = 0;
        this.d = 0;
    }

    public long a(g gVar, boolean z, boolean z2, int i) throws IOException, InterruptedException {
        if (this.c == 0) {
            if (!gVar.a(this.b, 0, 1, z)) {
                return -1L;
            }
            this.d = a(this.b[0] & Constants.UNKNOWN);
            if (this.d == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.c = 1;
        }
        if (this.d > i) {
            this.c = 0;
            return -2L;
        }
        if (this.d != 1) {
            gVar.b(this.b, 1, this.d - 1);
        }
        this.c = 0;
        return a(this.b, this.d, z2);
    }

    public int b() {
        return this.d;
    }

    public static int a(int i) {
        for (int i2 = 0; i2 < f3208a.length; i2++) {
            if ((f3208a[i2] & i) != 0) {
                return i2 + 1;
            }
        }
        return -1;
    }

    public static long a(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= f3208a[i - 1] ^ (-1);
        }
        long j2 = j;
        for (int i2 = 1; i2 < i; i2++) {
            j2 = (j2 << 8) | (bArr[i2] & 255);
        }
        return j2;
    }
}
