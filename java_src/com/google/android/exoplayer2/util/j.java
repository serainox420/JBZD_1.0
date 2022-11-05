package com.google.android.exoplayer2.util;

import android.util.Log;
import com.flurry.android.Constants;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* compiled from: NalUnitUtil.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f3507a = {0, 0, 0, 1};
    public static final float[] b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object c = new Object();
    private static int[] d = new int[10];

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3509a;
        public final int b;
        public final int c;
        public final float d;
        public final boolean e;
        public final boolean f;
        public final int g;
        public final int h;
        public final int i;
        public final boolean j;

        public b(int i, int i2, int i3, float f, boolean z, boolean z2, int i4, int i5, int i6, boolean z3) {
            this.f3509a = i;
            this.b = i2;
            this.c = i3;
            this.d = f;
            this.e = z;
            this.f = z2;
            this.g = i4;
            this.h = i5;
            this.i = i6;
            this.j = z3;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3508a;
        public final int b;
        public final boolean c;

        public a(int i, int i2, boolean z) {
            this.f3508a = i;
            this.b = i2;
            this.c = z;
        }
    }

    public static int a(byte[] bArr, int i) {
        int i2;
        synchronized (c) {
            int i3 = 0;
            int i4 = 0;
            while (i4 < i) {
                int c2 = c(bArr, i4, i);
                if (c2 < i) {
                    if (d.length <= i3) {
                        d = Arrays.copyOf(d, d.length * 2);
                    }
                    d[i3] = c2;
                    i3++;
                    i4 = c2 + 3;
                } else {
                    i4 = c2;
                }
            }
            i2 = i - i3;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = d[i7] - i6;
                System.arraycopy(bArr, i6, bArr, i5, i8);
                int i9 = i5 + i8;
                int i10 = i9 + 1;
                bArr[i9] = 0;
                i5 = i10 + 1;
                bArr[i10] = 0;
                i6 += i8 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i5, i2 - i5);
        }
        return i2;
    }

    public static void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i = 0;
        for (int i2 = 0; i2 + 1 < position; i2++) {
            int i3 = byteBuffer.get(i2) & Constants.UNKNOWN;
            if (i == 3) {
                if (i3 == 1 && (byteBuffer.get(i2 + 1) & 31) == 7) {
                    ByteBuffer duplicate = byteBuffer.duplicate();
                    duplicate.position(i2 - 3);
                    duplicate.limit(position);
                    byteBuffer.position(0);
                    byteBuffer.put(duplicate);
                    return;
                }
            } else if (i3 == 0) {
                i++;
            }
            if (i3 != 0) {
                i = 0;
            }
        }
        byteBuffer.clear();
    }

    public static boolean a(String str, byte b2) {
        return ("video/avc".equals(str) && (b2 & 31) == 6) || ("video/hevc".equals(str) && ((b2 & 126) >> 1) == 39);
    }

    public static int b(byte[] bArr, int i) {
        return bArr[i + 3] & 31;
    }

    public static int c(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    public static b a(byte[] bArr, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        float f;
        int i5;
        int i6;
        m mVar = new m(bArr, i, i2);
        mVar.a(8);
        int c2 = mVar.c(8);
        mVar.a(16);
        int c3 = mVar.c();
        boolean z2 = false;
        if (c2 != 100 && c2 != 110 && c2 != 122 && c2 != 244 && c2 != 44 && c2 != 83 && c2 != 86 && c2 != 118 && c2 != 128 && c2 != 138) {
            z = false;
            i3 = 1;
        } else {
            int c4 = mVar.c();
            if (c4 == 3) {
                z2 = mVar.a();
            }
            mVar.c();
            mVar.c();
            mVar.a(1);
            if (mVar.a()) {
                int i7 = c4 != 3 ? 8 : 12;
                int i8 = 0;
                while (i8 < i7) {
                    if (mVar.a()) {
                        a(mVar, i8 < 6 ? 16 : 64);
                    }
                    i8++;
                }
            }
            z = z2;
            i3 = c4;
        }
        int c5 = mVar.c() + 4;
        int c6 = mVar.c();
        int i9 = 0;
        boolean z3 = false;
        if (c6 == 0) {
            i9 = mVar.c() + 4;
        } else if (c6 == 1) {
            z3 = mVar.a();
            mVar.d();
            mVar.d();
            long c7 = mVar.c();
            for (int i10 = 0; i10 < c7; i10++) {
                mVar.c();
            }
        }
        mVar.c();
        mVar.a(1);
        int c8 = mVar.c() + 1;
        int c9 = mVar.c() + 1;
        boolean a2 = mVar.a();
        int i11 = (2 - (a2 ? 1 : 0)) * c9;
        if (!a2) {
            mVar.a(1);
        }
        mVar.a(1);
        int i12 = c8 * 16;
        int i13 = i11 * 16;
        if (mVar.a()) {
            int c10 = mVar.c();
            int c11 = mVar.c();
            int c12 = mVar.c();
            int c13 = mVar.c();
            if (i3 == 0) {
                i5 = 1;
                i6 = 2 - (a2 ? 1 : 0);
            } else {
                i5 = i3 == 3 ? 1 : 2;
                i6 = (2 - (a2 ? 1 : 0)) * (i3 == 1 ? 2 : 1);
            }
            i4 = i12 - (i5 * (c10 + c11));
            i13 -= i6 * (c12 + c13);
        } else {
            i4 = i12;
        }
        float f2 = 1.0f;
        if (mVar.a() && mVar.a()) {
            int c14 = mVar.c(8);
            if (c14 == 255) {
                int c15 = mVar.c(16);
                int c16 = mVar.c(16);
                if (c15 != 0 && c16 != 0) {
                    f2 = c15 / c16;
                }
                f = f2;
            } else if (c14 < b.length) {
                f = b[c14];
            } else {
                Log.w("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + c14);
            }
            return new b(c3, i4, i13, f, z, a2, c5, c6, i9, z3);
        }
        f = 1.0f;
        return new b(c3, i4, i13, f, z, a2, c5, c6, i9, z3);
    }

    public static a b(byte[] bArr, int i, int i2) {
        m mVar = new m(bArr, i, i2);
        mVar.a(8);
        int c2 = mVar.c();
        int c3 = mVar.c();
        mVar.a(1);
        return new a(c2, c3, mVar.a());
    }

    public static int a(byte[] bArr, int i, int i2, boolean[] zArr) {
        boolean z = true;
        int i3 = i2 - i;
        com.google.android.exoplayer2.util.a.b(i3 >= 0);
        if (i3 != 0) {
            if (zArr != null) {
                if (zArr[0]) {
                    a(zArr);
                    return i - 3;
                } else if (i3 > 1 && zArr[1] && bArr[i] == 1) {
                    a(zArr);
                    return i - 2;
                } else if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
                    a(zArr);
                    return i - 1;
                }
            }
            int i4 = i2 - 1;
            int i5 = i + 2;
            while (i5 < i4) {
                if ((bArr[i5] & 254) == 0) {
                    if (bArr[i5 - 2] == 0 && bArr[i5 - 1] == 0 && bArr[i5] == 1) {
                        if (zArr != null) {
                            a(zArr);
                        }
                        return i5 - 2;
                    }
                    i5 -= 2;
                }
                i5 += 3;
            }
            if (zArr != null) {
                zArr[0] = i3 > 2 ? bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 1 : i3 == 2 ? zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 1 : zArr[1] && bArr[i2 + (-1)] == 1;
                zArr[1] = i3 > 1 ? bArr[i2 + (-2)] == 0 && bArr[i2 + (-1)] == 0 : zArr[2] && bArr[i2 + (-1)] == 0;
                if (bArr[i2 - 1] != 0) {
                    z = false;
                }
                zArr[2] = z;
                return i2;
            }
            return i2;
        }
        return i2;
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    private static int c(byte[] bArr, int i, int i2) {
        for (int i3 = i; i3 < i2 - 2; i3++) {
            if (bArr[i3] == 0 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 3) {
                return i3;
            }
        }
        return i2;
    }

    private static void a(m mVar, int i) {
        int i2 = 8;
        int i3 = 8;
        for (int i4 = 0; i4 < i; i4++) {
            if (i2 != 0) {
                i2 = ((mVar.d() + i3) + 256) % 256;
            }
            if (i2 != 0) {
                i3 = i2;
            }
        }
    }
}
