package com.google.android.exoplayer2.extractor.c;

import com.facebook.internal.Utility;
import com.google.android.exoplayer2.util.v;
/* compiled from: FixedSampleSizeRechunker.java */
/* loaded from: classes2.dex */
final class d {

    /* compiled from: FixedSampleSizeRechunker.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f3223a;
        public final int[] b;
        public final int c;
        public final long[] d;
        public final int[] e;

        private a(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
            this.f3223a = jArr;
            this.b = iArr;
            this.c = i;
            this.d = jArr2;
            this.e = iArr2;
        }
    }

    public static a a(int i, long[] jArr, int[] iArr, long j) {
        int i2 = Utility.DEFAULT_STREAM_BUFFER_SIZE / i;
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            i3++;
            i4 = v.a(iArr[i3], i2) + i4;
        }
        long[] jArr2 = new long[i4];
        int[] iArr2 = new int[i4];
        int i5 = 0;
        long[] jArr3 = new long[i4];
        int[] iArr3 = new int[i4];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i7;
            int i10 = i5;
            int i11 = i6;
            if (i8 < iArr.length) {
                int i12 = iArr[i8];
                long j2 = jArr[i8];
                i6 = i11;
                i5 = i10;
                i7 = i9;
                while (i12 > 0) {
                    int min = Math.min(i2, i12);
                    jArr2[i7] = j2;
                    iArr2[i7] = i * min;
                    int max = Math.max(i5, iArr2[i7]);
                    jArr3[i7] = i6 * j;
                    iArr3[i7] = 1;
                    j2 += iArr2[i7];
                    i7++;
                    i12 -= min;
                    i6 += min;
                    i5 = max;
                }
                i8++;
            } else {
                return new a(jArr2, iArr2, i10, jArr3, iArr3);
            }
        }
    }
}
