package com.google.android.exoplayer2.extractor.d;

import android.util.Log;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.l;
import java.util.Arrays;
/* compiled from: VorbisUtil.java */
/* loaded from: classes2.dex */
final class k {
    public static int a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static d a(l lVar) throws ParserException {
        a(1, lVar, false);
        long l = lVar.l();
        int f = lVar.f();
        long l2 = lVar.l();
        int n = lVar.n();
        int n2 = lVar.n();
        int n3 = lVar.n();
        int f2 = lVar.f();
        return new d(l, f, l2, n, n2, n3, (int) Math.pow(2.0d, f2 & 15), (int) Math.pow(2.0d, (f2 & 240) >> 4), (lVar.f() & 1) > 0, Arrays.copyOf(lVar.f3511a, lVar.c()));
    }

    public static b b(l lVar) throws ParserException {
        a(3, lVar, false);
        String e = lVar.e((int) lVar.l());
        long l = lVar.l();
        String[] strArr = new String[(int) l];
        int length = e.length() + 11 + 4;
        for (int i = 0; i < l; i++) {
            strArr[i] = lVar.e((int) lVar.l());
            length = length + 4 + strArr[i].length();
        }
        if ((lVar.f() & 1) == 0) {
            throw new ParserException("framing bit expected to be set");
        }
        return new b(e, strArr, length + 1);
    }

    public static boolean a(int i, l lVar, boolean z) throws ParserException {
        if (lVar.b() < 7) {
            if (!z) {
                throw new ParserException("too short header: " + lVar.b());
            }
            return false;
        } else if (lVar.f() != i) {
            if (z) {
                return false;
            }
            throw new ParserException("expected header type " + Integer.toHexString(i));
        } else if (lVar.f() != 118 || lVar.f() != 111 || lVar.f() != 114 || lVar.f() != 98 || lVar.f() != 105 || lVar.f() != 115) {
            if (z) {
                return false;
            }
            throw new ParserException("expected characters 'vorbis'");
        } else {
            return true;
        }
    }

    public static c[] a(l lVar, int i) throws ParserException {
        a(5, lVar, false);
        int f = lVar.f() + 1;
        i iVar = new i(lVar.f3511a);
        iVar.b(lVar.d() * 8);
        for (int i2 = 0; i2 < f; i2++) {
            d(iVar);
        }
        int a2 = iVar.a(6) + 1;
        for (int i3 = 0; i3 < a2; i3++) {
            if (iVar.a(16) != 0) {
                throw new ParserException("placeholder of time domain transforms not zeroed out");
            }
        }
        c(iVar);
        b(iVar);
        a(i, iVar);
        c[] a3 = a(iVar);
        if (!iVar.a()) {
            throw new ParserException("framing bit after modes not set as expected");
        }
        return a3;
    }

    private static c[] a(i iVar) {
        int a2 = iVar.a(6) + 1;
        c[] cVarArr = new c[a2];
        for (int i = 0; i < a2; i++) {
            cVarArr[i] = new c(iVar.a(), iVar.a(16), iVar.a(16), iVar.a(8));
        }
        return cVarArr;
    }

    private static void a(int i, i iVar) throws ParserException {
        int a2 = iVar.a(6) + 1;
        for (int i2 = 0; i2 < a2; i2++) {
            int a3 = iVar.a(16);
            switch (a3) {
                case 0:
                    int a4 = iVar.a() ? iVar.a(4) + 1 : 1;
                    if (iVar.a()) {
                        int a5 = iVar.a(8) + 1;
                        for (int i3 = 0; i3 < a5; i3++) {
                            iVar.b(a(i - 1));
                            iVar.b(a(i - 1));
                        }
                    }
                    if (iVar.a(2) != 0) {
                        throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                    }
                    if (a4 > 1) {
                        for (int i4 = 0; i4 < i; i4++) {
                            iVar.b(4);
                        }
                    }
                    for (int i5 = 0; i5 < a4; i5++) {
                        iVar.b(8);
                        iVar.b(8);
                        iVar.b(8);
                    }
                    break;
                default:
                    Log.e("VorbisUtil", "mapping type other than 0 not supported: " + a3);
                    break;
            }
        }
    }

    private static void b(i iVar) throws ParserException {
        int a2 = iVar.a(6) + 1;
        for (int i = 0; i < a2; i++) {
            if (iVar.a(16) > 2) {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
            iVar.b(24);
            iVar.b(24);
            iVar.b(24);
            int a3 = iVar.a(6) + 1;
            iVar.b(8);
            int[] iArr = new int[a3];
            for (int i2 = 0; i2 < a3; i2++) {
                iArr[i2] = ((iVar.a() ? iVar.a(5) : 0) * 8) + iVar.a(3);
            }
            for (int i3 = 0; i3 < a3; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        iVar.b(8);
                    }
                }
            }
        }
    }

    private static void c(i iVar) throws ParserException {
        int a2 = iVar.a(6) + 1;
        for (int i = 0; i < a2; i++) {
            int a3 = iVar.a(16);
            switch (a3) {
                case 0:
                    iVar.b(8);
                    iVar.b(16);
                    iVar.b(16);
                    iVar.b(6);
                    iVar.b(8);
                    int a4 = iVar.a(4) + 1;
                    for (int i2 = 0; i2 < a4; i2++) {
                        iVar.b(8);
                    }
                    break;
                case 1:
                    int a5 = iVar.a(5);
                    int i3 = -1;
                    int[] iArr = new int[a5];
                    for (int i4 = 0; i4 < a5; i4++) {
                        iArr[i4] = iVar.a(4);
                        if (iArr[i4] > i3) {
                            i3 = iArr[i4];
                        }
                    }
                    int[] iArr2 = new int[i3 + 1];
                    for (int i5 = 0; i5 < iArr2.length; i5++) {
                        iArr2[i5] = iVar.a(3) + 1;
                        int a6 = iVar.a(2);
                        if (a6 > 0) {
                            iVar.b(8);
                        }
                        for (int i6 = 0; i6 < (1 << a6); i6++) {
                            iVar.b(8);
                        }
                    }
                    iVar.b(2);
                    int a7 = iVar.a(4);
                    int i7 = 0;
                    int i8 = 0;
                    for (int i9 = 0; i9 < a5; i9++) {
                        i8 += iArr2[iArr[i9]];
                        while (i7 < i8) {
                            iVar.b(a7);
                            i7++;
                        }
                    }
                    break;
                default:
                    throw new ParserException("floor type greater than 1 not decodable: " + a3);
            }
        }
    }

    private static a d(i iVar) throws ParserException {
        long j;
        if (iVar.a(24) != 5653314) {
            throw new ParserException("expected code book to start with [0x56, 0x43, 0x42] at " + iVar.b());
        }
        int a2 = iVar.a(16);
        int a3 = iVar.a(24);
        long[] jArr = new long[a3];
        boolean a4 = iVar.a();
        if (!a4) {
            boolean a5 = iVar.a();
            for (int i = 0; i < jArr.length; i++) {
                if (a5) {
                    if (iVar.a()) {
                        jArr[i] = iVar.a(5) + 1;
                    } else {
                        jArr[i] = 0;
                    }
                } else {
                    jArr[i] = iVar.a(5) + 1;
                }
            }
        } else {
            int a6 = iVar.a(5) + 1;
            int i2 = 0;
            while (i2 < jArr.length) {
                int a7 = iVar.a(a(a3 - i2));
                int i3 = 0;
                while (i3 < a7 && i2 < jArr.length) {
                    jArr[i2] = a6;
                    i3++;
                    i2++;
                }
                a6++;
            }
        }
        int a8 = iVar.a(4);
        if (a8 > 2) {
            throw new ParserException("lookup type greater than 2 not decodable: " + a8);
        }
        if (a8 == 1 || a8 == 2) {
            iVar.b(32);
            iVar.b(32);
            int a9 = iVar.a(4) + 1;
            iVar.b(1);
            if (a8 == 1) {
                if (a2 != 0) {
                    j = a(a3, a2);
                } else {
                    j = 0;
                }
            } else {
                j = a3 * a2;
            }
            iVar.b((int) (j * a9));
        }
        return new a(a2, a3, jArr, a8, a4);
    }

    private static long a(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3251a;
        public final int b;
        public final long[] c;
        public final int d;
        public final boolean e;

        public a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.f3251a = i;
            this.b = i2;
            this.c = jArr;
            this.d = i3;
            this.e = z;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f3252a;
        public final String[] b;
        public final int c;

        public b(String str, String[] strArr, int i) {
            this.f3252a = str;
            this.b = strArr;
            this.c = i;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f3254a;
        public final int b;
        public final long c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final boolean i;
        public final byte[] j;

        public d(long j, int i, long j2, int i2, int i3, int i4, int i5, int i6, boolean z, byte[] bArr) {
            this.f3254a = j;
            this.b = i;
            this.c = j2;
            this.d = i2;
            this.e = i3;
            this.f = i4;
            this.g = i5;
            this.h = i6;
            this.i = z;
            this.j = bArr;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f3253a;
        public final int b;
        public final int c;
        public final int d;

        public c(boolean z, int i, int i2, int i3) {
            this.f3253a = z;
            this.b = i;
            this.c = i2;
            this.d = i3;
        }
    }
}
