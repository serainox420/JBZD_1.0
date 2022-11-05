package com.google.android.exoplayer2.extractor.c;

import android.util.Log;
import android.util.Pair;
import com.facebook.imagepipeline.common.RotationOptions;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.c.a;
import com.google.android.exoplayer2.extractor.c.d;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.v;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: AtomParsers.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int f3216a = v.g("vide");
    private static final int b = v.g("soun");
    private static final int c = v.g(CommonConstants.RESPONSE_TEXT);
    private static final int d = v.g("sbtl");
    private static final int e = v.g("subt");
    private static final int f = v.g("clcp");
    private static final int g = v.g("cenc");
    private static final int h = v.g("meta");

    /* compiled from: AtomParsers.java */
    /* renamed from: com.google.android.exoplayer2.extractor.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private interface InterfaceC0134b {
        int a();

        int b();

        boolean c();
    }

    public static j a(a.C0133a c0133a, a.b bVar, long j, DrmInitData drmInitData, boolean z) throws ParserException {
        long a2;
        a.C0133a e2 = c0133a.e(com.google.android.exoplayer2.extractor.c.a.E);
        int c2 = c(e2.d(com.google.android.exoplayer2.extractor.c.a.S).aQ);
        if (c2 == -1) {
            return null;
        }
        f b2 = b(c0133a.d(com.google.android.exoplayer2.extractor.c.a.O).aQ);
        long j2 = j == -9223372036854775807L ? b2.b : j;
        long a3 = a(bVar.aQ);
        if (j2 == -9223372036854775807L) {
            a2 = -9223372036854775807L;
        } else {
            a2 = v.a(j2, 1000000L, a3);
        }
        a.C0133a e3 = e2.e(com.google.android.exoplayer2.extractor.c.a.F).e(com.google.android.exoplayer2.extractor.c.a.G);
        Pair<Long, String> d2 = d(e2.d(com.google.android.exoplayer2.extractor.c.a.R).aQ);
        c a4 = a(e3.d(com.google.android.exoplayer2.extractor.c.a.T).aQ, b2.f3221a, b2.c, (String) d2.second, drmInitData, z);
        Pair<long[], long[]> a5 = a(c0133a.e(com.google.android.exoplayer2.extractor.c.a.P));
        if (a4.b != null) {
            return new j(b2.f3221a, c2, ((Long) d2.first).longValue(), a3, a2, a4.b, a4.d, a4.f3218a, a4.c, (long[]) a5.first, (long[]) a5.second);
        }
        return null;
    }

    public static m a(j jVar, a.C0133a c0133a, com.google.android.exoplayer2.extractor.j jVar2) throws ParserException {
        InterfaceC0134b eVar;
        int i;
        com.google.android.exoplayer2.util.l lVar;
        int i2;
        long[] jArr;
        int[] iArr;
        int i3;
        long[] jArr2;
        int[] iArr2;
        long j;
        boolean z;
        int i4;
        int i5;
        int i6;
        int i7;
        a.b d2 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.aq);
        if (d2 != null) {
            eVar = new d(d2);
        } else {
            a.b d3 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.ar);
            if (d3 == null) {
                throw new ParserException("Track has no sample table size information");
            }
            eVar = new e(d3);
        }
        int a2 = eVar.a();
        if (a2 == 0) {
            return new m(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        boolean z2 = false;
        a.b d4 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.as);
        if (d4 == null) {
            z2 = true;
            d4 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.at);
        }
        com.google.android.exoplayer2.util.l lVar2 = d4.aQ;
        com.google.android.exoplayer2.util.l lVar3 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.ap).aQ;
        com.google.android.exoplayer2.util.l lVar4 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.am).aQ;
        a.b d5 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.an);
        com.google.android.exoplayer2.util.l lVar5 = d5 != null ? d5.aQ : null;
        a.b d6 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.ao);
        com.google.android.exoplayer2.util.l lVar6 = d6 != null ? d6.aQ : null;
        a aVar = new a(lVar3, lVar2, z2);
        lVar4.c(12);
        int s = lVar4.s() - 1;
        int s2 = lVar4.s();
        int s3 = lVar4.s();
        int i8 = 0;
        if (lVar6 != null) {
            lVar6.c(12);
            i8 = lVar6.s();
        }
        if (lVar5 == null) {
            i = -1;
            lVar = lVar5;
            i2 = 0;
        } else {
            lVar5.c(12);
            int s4 = lVar5.s();
            if (s4 <= 0) {
                i = -1;
                lVar = null;
                i2 = s4;
            } else {
                i = lVar5.s() - 1;
                lVar = lVar5;
                i2 = s4;
            }
        }
        if (!(eVar.c() && "audio/raw".equals(jVar.f.f) && s == 0 && i8 == 0 && i2 == 0)) {
            long[] jArr3 = new long[a2];
            int[] iArr3 = new int[a2];
            long[] jArr4 = new long[a2];
            int[] iArr4 = new int[a2];
            long j2 = 0;
            int i9 = 0;
            int i10 = s2;
            int i11 = 0;
            int i12 = i2;
            int i13 = 0;
            int i14 = i;
            int i15 = i8;
            long j3 = 0;
            int i16 = 0;
            int i17 = 0;
            int i18 = s3;
            int i19 = s;
            int i20 = i14;
            while (i9 < a2) {
                long j4 = j2;
                int i21 = i17;
                while (i21 == 0) {
                    com.google.android.exoplayer2.util.a.b(aVar.a());
                    j4 = aVar.d;
                    i21 = aVar.c;
                }
                if (lVar6 != null) {
                    while (i11 == 0 && i15 > 0) {
                        i11 = lVar6.s();
                        i13 = lVar6.m();
                        i15--;
                    }
                    i11--;
                }
                jArr3[i9] = j4;
                iArr3[i9] = eVar.b();
                if (iArr3[i9] > i16) {
                    i16 = iArr3[i9];
                }
                jArr4[i9] = i13 + j3;
                iArr4[i9] = lVar == null ? 1 : 0;
                if (i9 == i20) {
                    iArr4[i9] = 1;
                    int i22 = i12 - 1;
                    if (i22 > 0) {
                        i20 = lVar.s() - 1;
                        i12 = i22;
                    } else {
                        i12 = i22;
                    }
                }
                long j5 = i18 + j3;
                int i23 = i10 - 1;
                if (i23 != 0 || i19 <= 0) {
                    int i24 = i18;
                    i6 = i23;
                    i7 = i24;
                } else {
                    i6 = lVar4.s();
                    i7 = lVar4.s();
                    i19--;
                }
                long j6 = j4 + iArr3[i9];
                int i25 = i21 - 1;
                i9++;
                j2 = j6;
                i10 = i6;
                i18 = i7;
                i17 = i25;
                j3 = j5;
            }
            com.google.android.exoplayer2.util.a.a(i11 == 0);
            while (i15 > 0) {
                com.google.android.exoplayer2.util.a.a(lVar6.s() == 0);
                lVar6.m();
                i15--;
            }
            if (i12 != 0 || i10 != 0 || i17 != 0 || i19 != 0) {
                Log.w("AtomParsers", "Inconsistent stbl box for track " + jVar.f3231a + ": remainingSynchronizationSamples " + i12 + ", remainingSamplesAtTimestampDelta " + i10 + ", remainingSamplesInChunk " + i17 + ", remainingTimestampDeltaChanges " + i19);
            }
            iArr2 = iArr4;
            jArr2 = jArr4;
            i3 = i16;
            iArr = iArr3;
            jArr = jArr3;
            j = j3;
        } else {
            long[] jArr5 = new long[aVar.f3217a];
            int[] iArr5 = new int[aVar.f3217a];
            while (aVar.a()) {
                jArr5[aVar.b] = aVar.d;
                iArr5[aVar.b] = aVar.c;
            }
            d.a a3 = com.google.android.exoplayer2.extractor.c.d.a(eVar.b(), jArr5, iArr5, s3);
            jArr = a3.f3223a;
            iArr = a3.b;
            i3 = a3.c;
            jArr2 = a3.d;
            iArr2 = a3.e;
            j = 0;
        }
        if (jVar.i == null || jVar2.a()) {
            v.a(jArr2, 1000000L, jVar.c);
            return new m(jArr, iArr, i3, jArr2, iArr2);
        }
        if (jVar.i.length == 1 && jVar.b == 1 && jArr2.length >= 2) {
            long j7 = jVar.j[0];
            long a4 = v.a(jVar.i[0], jVar.c, jVar.d) + j7;
            if (jArr2[0] <= j7 && j7 < jArr2[1] && jArr2[jArr2.length - 1] < a4 && a4 <= j) {
                long a5 = v.a(j7 - jArr2[0], jVar.f.r, jVar.c);
                long a6 = v.a(j - a4, jVar.f.r, jVar.c);
                if ((a5 != 0 || a6 != 0) && a5 <= 2147483647L && a6 <= 2147483647L) {
                    jVar2.b = (int) a5;
                    jVar2.c = (int) a6;
                    v.a(jArr2, 1000000L, jVar.c);
                    return new m(jArr, iArr, i3, jArr2, iArr2);
                }
            }
        }
        if (jVar.i.length == 1 && jVar.i[0] == 0) {
            for (int i26 = 0; i26 < jArr2.length; i26++) {
                jArr2[i26] = v.a(jArr2[i26] - jVar.j[0], 1000000L, jVar.c);
            }
            return new m(jArr, iArr, i3, jArr2, iArr2);
        }
        boolean z3 = jVar.b == 1;
        int i27 = 0;
        int i28 = 0;
        boolean z4 = false;
        int i29 = 0;
        while (true) {
            int i30 = i29;
            z = z4;
            int i31 = i28;
            i4 = i27;
            if (i30 >= jVar.i.length) {
                break;
            }
            long j8 = jVar.j[i30];
            if (j8 != -1) {
                long a7 = v.a(jVar.i[i30], jVar.c, jVar.d);
                int b2 = v.b(jArr2, j8, true, true);
                i28 = v.b(jArr2, a7 + j8, z3, false);
                i27 = i4 + (i28 - b2);
                z4 = z | (i31 != b2);
            } else {
                z4 = z;
                i28 = i31;
                i27 = i4;
            }
            i29 = i30 + 1;
        }
        boolean z5 = z | (i4 != a2);
        long[] jArr6 = z5 ? new long[i4] : jArr;
        int[] iArr6 = z5 ? new int[i4] : iArr;
        int i32 = z5 ? 0 : i3;
        int[] iArr7 = z5 ? new int[i4] : iArr2;
        long[] jArr7 = new long[i4];
        int i33 = 0;
        int i34 = 0;
        long j9 = 0;
        int i35 = i32;
        while (i33 < jVar.i.length) {
            long j10 = jVar.j[i33];
            long j11 = jVar.i[i33];
            if (j10 != -1) {
                long a8 = j10 + v.a(j11, jVar.c, jVar.d);
                int b3 = v.b(jArr2, j10, true, true);
                int b4 = v.b(jArr2, a8, z3, false);
                if (z5) {
                    int i36 = b4 - b3;
                    System.arraycopy(jArr, b3, jArr6, i34, i36);
                    System.arraycopy(iArr, b3, iArr6, i34, i36);
                    System.arraycopy(iArr2, b3, iArr7, i34, i36);
                }
                int i37 = i34;
                for (int i38 = b3; i38 < b4; i38++) {
                    jArr7[i37] = v.a(jArr2[i38] - j10, 1000000L, jVar.c) + v.a(j9, 1000000L, jVar.d);
                    if (z5 && iArr6[i37] > i35) {
                        i35 = iArr[i38];
                    }
                    i37++;
                }
                i5 = i37;
            } else {
                i5 = i34;
            }
            i33++;
            i34 = i5;
            j9 = j11 + j9;
            i35 = i35;
        }
        boolean z6 = false;
        for (int i39 = 0; i39 < iArr7.length && !z6; i39++) {
            z6 |= (iArr7[i39] & 1) != 0;
        }
        if (!z6) {
            throw new ParserException("The edited sample sequence does not contain a sync sample.");
        }
        return new m(jArr6, iArr6, i35, jArr7, iArr7);
    }

    public static Metadata a(a.b bVar, boolean z) {
        if (z) {
            return null;
        }
        com.google.android.exoplayer2.util.l lVar = bVar.aQ;
        lVar.c(8);
        while (lVar.b() >= 8) {
            int d2 = lVar.d();
            int m = lVar.m();
            if (lVar.m() == com.google.android.exoplayer2.extractor.c.a.aB) {
                lVar.c(d2);
                return a(lVar, d2 + m);
            }
            lVar.d(m - 8);
        }
        return null;
    }

    private static Metadata a(com.google.android.exoplayer2.util.l lVar, int i) {
        lVar.d(12);
        while (lVar.d() < i) {
            int d2 = lVar.d();
            int m = lVar.m();
            if (lVar.m() == com.google.android.exoplayer2.extractor.c.a.aC) {
                lVar.c(d2);
                return b(lVar, d2 + m);
            }
            lVar.d(m - 8);
        }
        return null;
    }

    private static Metadata b(com.google.android.exoplayer2.util.l lVar, int i) {
        lVar.d(8);
        ArrayList arrayList = new ArrayList();
        while (lVar.d() < i) {
            Metadata.Entry a2 = com.google.android.exoplayer2.extractor.c.f.a(lVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static long a(com.google.android.exoplayer2.util.l lVar) {
        int i = 8;
        lVar.c(8);
        if (com.google.android.exoplayer2.extractor.c.a.a(lVar.m()) != 0) {
            i = 16;
        }
        lVar.d(i);
        return lVar.k();
    }

    private static f b(com.google.android.exoplayer2.util.l lVar) {
        long k;
        int i;
        int i2 = 8;
        lVar.c(8);
        int a2 = com.google.android.exoplayer2.extractor.c.a.a(lVar.m());
        lVar.d(a2 == 0 ? 8 : 16);
        int m = lVar.m();
        lVar.d(4);
        boolean z = true;
        int d2 = lVar.d();
        if (a2 == 0) {
            i2 = 4;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            } else if (lVar.f3511a[d2 + i3] != -1) {
                z = false;
                break;
            } else {
                i3++;
            }
        }
        if (z) {
            lVar.d(i2);
            k = -9223372036854775807L;
        } else {
            k = a2 == 0 ? lVar.k() : lVar.u();
            if (k == 0) {
                k = -9223372036854775807L;
            }
        }
        lVar.d(16);
        int m2 = lVar.m();
        int m3 = lVar.m();
        lVar.d(4);
        int m4 = lVar.m();
        int m5 = lVar.m();
        if (m2 == 0 && m3 == 65536 && m4 == (-65536) && m5 == 0) {
            i = 90;
        } else if (m2 == 0 && m3 == (-65536) && m4 == 65536 && m5 == 0) {
            i = RotationOptions.ROTATE_270;
        } else {
            i = (m2 == (-65536) && m3 == 0 && m4 == 0 && m5 == (-65536)) ? RotationOptions.ROTATE_180 : 0;
        }
        return new f(m, k, i);
    }

    private static int c(com.google.android.exoplayer2.util.l lVar) {
        lVar.c(16);
        int m = lVar.m();
        if (m == b) {
            return 1;
        }
        if (m == f3216a) {
            return 2;
        }
        if (m == c || m == d || m == e || m == f) {
            return 3;
        }
        if (m == h) {
            return 4;
        }
        return -1;
    }

    private static Pair<Long, String> d(com.google.android.exoplayer2.util.l lVar) {
        int i = 8;
        lVar.c(8);
        int a2 = com.google.android.exoplayer2.extractor.c.a.a(lVar.m());
        lVar.d(a2 == 0 ? 8 : 16);
        long k = lVar.k();
        if (a2 == 0) {
            i = 4;
        }
        lVar.d(i);
        int g2 = lVar.g();
        return Pair.create(Long.valueOf(k), "" + ((char) (((g2 >> 10) & 31) + 96)) + ((char) (((g2 >> 5) & 31) + 96)) + ((char) ((g2 & 31) + 96)));
    }

    private static c a(com.google.android.exoplayer2.util.l lVar, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        lVar.c(12);
        int m = lVar.m();
        c cVar = new c(m);
        for (int i3 = 0; i3 < m; i3++) {
            int d2 = lVar.d();
            int m2 = lVar.m();
            com.google.android.exoplayer2.util.a.a(m2 > 0, "childAtomSize should be positive");
            int m3 = lVar.m();
            if (m3 == com.google.android.exoplayer2.extractor.c.a.b || m3 == com.google.android.exoplayer2.extractor.c.a.c || m3 == com.google.android.exoplayer2.extractor.c.a.Z || m3 == com.google.android.exoplayer2.extractor.c.a.al || m3 == com.google.android.exoplayer2.extractor.c.a.d || m3 == com.google.android.exoplayer2.extractor.c.a.e || m3 == com.google.android.exoplayer2.extractor.c.a.f || m3 == com.google.android.exoplayer2.extractor.c.a.aK || m3 == com.google.android.exoplayer2.extractor.c.a.aL) {
                a(lVar, m3, d2, m2, i, i2, drmInitData, cVar, i3);
            } else if (m3 == com.google.android.exoplayer2.extractor.c.a.i || m3 == com.google.android.exoplayer2.extractor.c.a.aa || m3 == com.google.android.exoplayer2.extractor.c.a.n || m3 == com.google.android.exoplayer2.extractor.c.a.p || m3 == com.google.android.exoplayer2.extractor.c.a.r || m3 == com.google.android.exoplayer2.extractor.c.a.u || m3 == com.google.android.exoplayer2.extractor.c.a.s || m3 == com.google.android.exoplayer2.extractor.c.a.t || m3 == com.google.android.exoplayer2.extractor.c.a.ay || m3 == com.google.android.exoplayer2.extractor.c.a.az || m3 == com.google.android.exoplayer2.extractor.c.a.l || m3 == com.google.android.exoplayer2.extractor.c.a.m || m3 == com.google.android.exoplayer2.extractor.c.a.j || m3 == com.google.android.exoplayer2.extractor.c.a.aO) {
                a(lVar, m3, d2, m2, i, str, z, drmInitData, cVar, i3);
            } else if (m3 == com.google.android.exoplayer2.extractor.c.a.aj) {
                cVar.b = Format.a(Integer.toString(i), "application/ttml+xml", (String) null, -1, 0, str, drmInitData);
            } else if (m3 == com.google.android.exoplayer2.extractor.c.a.au) {
                cVar.b = Format.a(Integer.toString(i), "application/x-quicktime-tx3g", (String) null, -1, 0, str, drmInitData);
            } else if (m3 == com.google.android.exoplayer2.extractor.c.a.av) {
                cVar.b = Format.a(Integer.toString(i), "application/x-mp4-vtt", (String) null, -1, 0, str, drmInitData);
            } else if (m3 == com.google.android.exoplayer2.extractor.c.a.aw) {
                cVar.b = Format.a(Integer.toString(i), "application/ttml+xml", (String) null, -1, 0, str, drmInitData, 0L);
            } else if (m3 == com.google.android.exoplayer2.extractor.c.a.ax) {
                cVar.b = Format.a(Integer.toString(i), "application/x-mp4-cea-608", (String) null, -1, 0, str, drmInitData);
                cVar.d = 1;
            } else if (m3 == com.google.android.exoplayer2.extractor.c.a.aN) {
                cVar.b = Format.a(Integer.toString(i), "application/x-camera-motion", null, -1, drmInitData);
            }
            lVar.c(d2 + m2);
        }
        return cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0065 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0151  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void a(com.google.android.exoplayer2.util.l lVar, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, c cVar, int i6) throws ParserException {
        boolean z;
        lVar.c(i2 + 8);
        lVar.d(24);
        int g2 = lVar.g();
        int g3 = lVar.g();
        boolean z2 = false;
        float f2 = 1.0f;
        lVar.d(50);
        int d2 = lVar.d();
        if (i == com.google.android.exoplayer2.extractor.c.a.Z) {
            i = a(lVar, i2, i3, cVar, i6);
            lVar.c(d2);
        }
        List<byte[]> list = null;
        String str = null;
        byte[] bArr = null;
        int i7 = -1;
        int i8 = d2;
        while (i8 - i2 < i3) {
            lVar.c(i8);
            int d3 = lVar.d();
            int m = lVar.m();
            if (m != 0 || lVar.d() - i2 != i3) {
                com.google.android.exoplayer2.util.a.a(m > 0, "childAtomSize should be positive");
                int m2 = lVar.m();
                if (m2 == com.google.android.exoplayer2.extractor.c.a.H) {
                    com.google.android.exoplayer2.util.a.b(str == null);
                    str = "video/avc";
                    lVar.c(d3 + 8);
                    com.google.android.exoplayer2.c.a a2 = com.google.android.exoplayer2.c.a.a(lVar);
                    list = a2.f3182a;
                    cVar.c = a2.b;
                    if (!z2) {
                        f2 = a2.e;
                    }
                    z = z2;
                } else if (m2 == com.google.android.exoplayer2.extractor.c.a.I) {
                    com.google.android.exoplayer2.util.a.b(str == null);
                    str = "video/hevc";
                    lVar.c(d3 + 8);
                    com.google.android.exoplayer2.c.b a3 = com.google.android.exoplayer2.c.b.a(lVar);
                    list = a3.f3183a;
                    cVar.c = a3.b;
                    z = z2;
                } else if (m2 == com.google.android.exoplayer2.extractor.c.a.aM) {
                    com.google.android.exoplayer2.util.a.b(str == null);
                    str = i == com.google.android.exoplayer2.extractor.c.a.aK ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                    z = z2;
                } else if (m2 == com.google.android.exoplayer2.extractor.c.a.g) {
                    com.google.android.exoplayer2.util.a.b(str == null);
                    str = "video/3gpp";
                    z = z2;
                } else if (m2 == com.google.android.exoplayer2.extractor.c.a.J) {
                    com.google.android.exoplayer2.util.a.b(str == null);
                    Pair<String, byte[]> d4 = d(lVar, d3);
                    list = Collections.singletonList(d4.second);
                    str = (String) d4.first;
                    z = z2;
                } else if (m2 == com.google.android.exoplayer2.extractor.c.a.ai) {
                    f2 = c(lVar, d3);
                    z = true;
                } else if (m2 == com.google.android.exoplayer2.extractor.c.a.aI) {
                    bArr = d(lVar, d3, m);
                    z = z2;
                } else {
                    if (m2 == com.google.android.exoplayer2.extractor.c.a.aH) {
                        int f3 = lVar.f();
                        lVar.d(3);
                        if (f3 == 0) {
                            switch (lVar.f()) {
                                case 0:
                                    i7 = 0;
                                    z = z2;
                                    break;
                                case 1:
                                    i7 = 1;
                                    z = z2;
                                    break;
                                case 2:
                                    i7 = 2;
                                    z = z2;
                                    break;
                                case 3:
                                    i7 = 3;
                                    z = z2;
                                    break;
                            }
                        }
                    }
                    z = z2;
                }
                i8 += m;
                z2 = z;
            } else if (str == null) {
                cVar.b = Format.a(Integer.toString(i4), str, null, -1, -1, g2, g3, -1.0f, list, i5, f2, bArr, i7, drmInitData);
                return;
            } else {
                return;
            }
        }
        if (str == null) {
        }
    }

    private static Pair<long[], long[]> a(a.C0133a c0133a) {
        a.b d2;
        if (c0133a == null || (d2 = c0133a.d(com.google.android.exoplayer2.extractor.c.a.Q)) == null) {
            return Pair.create(null, null);
        }
        com.google.android.exoplayer2.util.l lVar = d2.aQ;
        lVar.c(8);
        int a2 = com.google.android.exoplayer2.extractor.c.a.a(lVar.m());
        int s = lVar.s();
        long[] jArr = new long[s];
        long[] jArr2 = new long[s];
        for (int i = 0; i < s; i++) {
            jArr[i] = a2 == 1 ? lVar.u() : lVar.k();
            jArr2[i] = a2 == 1 ? lVar.o() : lVar.m();
            if (lVar.i() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            lVar.d(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static float c(com.google.android.exoplayer2.util.l lVar, int i) {
        lVar.c(i + 8);
        return lVar.s() / lVar.s();
    }

    private static void a(com.google.android.exoplayer2.util.l lVar, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, c cVar, int i5) {
        int i6;
        int g2;
        int q;
        byte[] bArr;
        lVar.c(i2 + 8);
        if (z) {
            lVar.d(8);
            int g3 = lVar.g();
            lVar.d(6);
            i6 = g3;
        } else {
            lVar.d(16);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            g2 = lVar.g();
            lVar.d(6);
            q = lVar.q();
            if (i6 == 1) {
                lVar.d(16);
            }
        } else if (i6 == 2) {
            lVar.d(16);
            q = (int) Math.round(lVar.v());
            g2 = lVar.s();
            lVar.d(20);
        } else {
            return;
        }
        int d2 = lVar.d();
        if (i == com.google.android.exoplayer2.extractor.c.a.aa) {
            i = a(lVar, i2, i3, cVar, i5);
            lVar.c(d2);
        }
        String str2 = null;
        if (i == com.google.android.exoplayer2.extractor.c.a.n) {
            str2 = "audio/ac3";
        } else if (i == com.google.android.exoplayer2.extractor.c.a.p) {
            str2 = "audio/eac3";
        } else if (i == com.google.android.exoplayer2.extractor.c.a.r) {
            str2 = "audio/vnd.dts";
        } else if (i == com.google.android.exoplayer2.extractor.c.a.s || i == com.google.android.exoplayer2.extractor.c.a.t) {
            str2 = "audio/vnd.dts.hd";
        } else if (i == com.google.android.exoplayer2.extractor.c.a.u) {
            str2 = "audio/vnd.dts.hd;profile=lbr";
        } else if (i == com.google.android.exoplayer2.extractor.c.a.ay) {
            str2 = "audio/3gpp";
        } else if (i == com.google.android.exoplayer2.extractor.c.a.az) {
            str2 = "audio/amr-wb";
        } else if (i == com.google.android.exoplayer2.extractor.c.a.l || i == com.google.android.exoplayer2.extractor.c.a.m) {
            str2 = "audio/raw";
        } else if (i == com.google.android.exoplayer2.extractor.c.a.j) {
            str2 = "audio/mpeg";
        } else if (i == com.google.android.exoplayer2.extractor.c.a.aO) {
            str2 = "audio/alac";
        }
        byte[] bArr2 = null;
        int i7 = q;
        int i8 = g2;
        String str3 = str2;
        while (d2 - i2 < i3) {
            lVar.c(d2);
            int m = lVar.m();
            com.google.android.exoplayer2.util.a.a(m > 0, "childAtomSize should be positive");
            int m2 = lVar.m();
            if (m2 == com.google.android.exoplayer2.extractor.c.a.J || (z && m2 == com.google.android.exoplayer2.extractor.c.a.k)) {
                int a2 = m2 == com.google.android.exoplayer2.extractor.c.a.J ? d2 : a(lVar, d2, m);
                if (a2 != -1) {
                    Pair<String, byte[]> d3 = d(lVar, a2);
                    str3 = (String) d3.first;
                    bArr = (byte[]) d3.second;
                    if ("audio/mp4a-latm".equals(str3)) {
                        Pair<Integer, Integer> a3 = com.google.android.exoplayer2.util.c.a(bArr);
                        i7 = ((Integer) a3.first).intValue();
                        i8 = ((Integer) a3.second).intValue();
                    }
                } else {
                    bArr = bArr2;
                }
                bArr2 = bArr;
            } else if (m2 == com.google.android.exoplayer2.extractor.c.a.o) {
                lVar.c(d2 + 8);
                cVar.b = com.google.android.exoplayer2.audio.a.a(lVar, Integer.toString(i4), str, drmInitData);
            } else if (m2 == com.google.android.exoplayer2.extractor.c.a.q) {
                lVar.c(d2 + 8);
                cVar.b = com.google.android.exoplayer2.audio.a.b(lVar, Integer.toString(i4), str, drmInitData);
            } else if (m2 == com.google.android.exoplayer2.extractor.c.a.v) {
                cVar.b = Format.a(Integer.toString(i4), str3, null, -1, -1, i8, i7, null, drmInitData, 0, str);
            } else if (m2 == com.google.android.exoplayer2.extractor.c.a.aO) {
                bArr2 = new byte[m];
                lVar.c(d2);
                lVar.a(bArr2, 0, m);
            }
            d2 += m;
        }
        if (cVar.b == null && str3 != null) {
            cVar.b = Format.a(Integer.toString(i4), str3, (String) null, -1, -1, i8, i7, "audio/raw".equals(str3) ? 2 : -1, bArr2 == null ? null : Collections.singletonList(bArr2), drmInitData, 0, str);
        }
    }

    private static int a(com.google.android.exoplayer2.util.l lVar, int i, int i2) {
        int d2 = lVar.d();
        while (d2 - i < i2) {
            lVar.c(d2);
            int m = lVar.m();
            com.google.android.exoplayer2.util.a.a(m > 0, "childAtomSize should be positive");
            if (lVar.m() == com.google.android.exoplayer2.extractor.c.a.J) {
                return d2;
            }
            d2 += m;
        }
        return -1;
    }

    private static Pair<String, byte[]> d(com.google.android.exoplayer2.util.l lVar, int i) {
        String str = null;
        lVar.c(i + 8 + 4);
        lVar.d(1);
        e(lVar);
        lVar.d(2);
        int f2 = lVar.f();
        if ((f2 & 128) != 0) {
            lVar.d(2);
        }
        if ((f2 & 64) != 0) {
            lVar.d(lVar.g());
        }
        if ((f2 & 32) != 0) {
            lVar.d(2);
        }
        lVar.d(1);
        e(lVar);
        switch (lVar.f()) {
            case 32:
                str = "video/mp4v-es";
                break;
            case 33:
                str = "video/avc";
                break;
            case 35:
                str = "video/hevc";
                break;
            case 64:
            case 102:
            case 103:
            case 104:
                str = "audio/mp4a-latm";
                break;
            case 107:
                return Pair.create("audio/mpeg", null);
            case 165:
                str = "audio/ac3";
                break;
            case 166:
                str = "audio/eac3";
                break;
            case 169:
            case 172:
                return Pair.create("audio/vnd.dts", null);
            case 170:
            case 171:
                return Pair.create("audio/vnd.dts.hd", null);
        }
        lVar.d(12);
        lVar.d(1);
        int e2 = e(lVar);
        byte[] bArr = new byte[e2];
        lVar.a(bArr, 0, e2);
        return Pair.create(str, bArr);
    }

    private static int a(com.google.android.exoplayer2.util.l lVar, int i, int i2, c cVar, int i3) {
        Pair<Integer, k> b2;
        int d2 = lVar.d();
        while (true) {
            int i4 = d2;
            if (i4 - i < i2) {
                lVar.c(i4);
                int m = lVar.m();
                com.google.android.exoplayer2.util.a.a(m > 0, "childAtomSize should be positive");
                if (lVar.m() == com.google.android.exoplayer2.extractor.c.a.V && (b2 = b(lVar, i4, m)) != null) {
                    cVar.f3218a[i3] = (k) b2.second;
                    return ((Integer) b2.first).intValue();
                }
                d2 = i4 + m;
            } else {
                return 0;
            }
        }
    }

    private static Pair<Integer, k> b(com.google.android.exoplayer2.util.l lVar, int i, int i2) {
        boolean z = true;
        k kVar = null;
        boolean z2 = false;
        int i3 = i + 8;
        Integer num = null;
        while (i3 - i < i2) {
            lVar.c(i3);
            int m = lVar.m();
            int m2 = lVar.m();
            if (m2 == com.google.android.exoplayer2.extractor.c.a.ab) {
                num = Integer.valueOf(lVar.m());
            } else if (m2 == com.google.android.exoplayer2.extractor.c.a.W) {
                lVar.d(4);
                z2 = lVar.m() == g;
            } else if (m2 == com.google.android.exoplayer2.extractor.c.a.X) {
                kVar = c(lVar, i3, m);
            }
            i3 += m;
        }
        if (z2) {
            com.google.android.exoplayer2.util.a.a(num != null, "frma atom is mandatory");
            if (kVar == null) {
                z = false;
            }
            com.google.android.exoplayer2.util.a.a(z, "schi->tenc atom is mandatory");
            return Pair.create(num, kVar);
        }
        return null;
    }

    private static k c(com.google.android.exoplayer2.util.l lVar, int i, int i2) {
        boolean z = true;
        int i3 = i + 8;
        while (i3 - i < i2) {
            lVar.c(i3);
            int m = lVar.m();
            if (lVar.m() == com.google.android.exoplayer2.extractor.c.a.Y) {
                lVar.d(6);
                if (lVar.f() != 1) {
                    z = false;
                }
                int f2 = lVar.f();
                byte[] bArr = new byte[16];
                lVar.a(bArr, 0, bArr.length);
                return new k(z, f2, bArr);
            }
            i3 += m;
        }
        return null;
    }

    private static byte[] d(com.google.android.exoplayer2.util.l lVar, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            lVar.c(i3);
            int m = lVar.m();
            if (lVar.m() == com.google.android.exoplayer2.extractor.c.a.aJ) {
                return Arrays.copyOfRange(lVar.f3511a, i3, m + i3);
            }
            i3 += m;
        }
        return null;
    }

    private static int e(com.google.android.exoplayer2.util.l lVar) {
        int f2 = lVar.f();
        int i = f2 & 127;
        while ((f2 & 128) == 128) {
            f2 = lVar.f();
            i = (i << 7) | (f2 & 127);
        }
        return i;
    }

    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3217a;
        public int b;
        public int c;
        public long d;
        private final boolean e;
        private final com.google.android.exoplayer2.util.l f;
        private final com.google.android.exoplayer2.util.l g;
        private int h;
        private int i;

        public a(com.google.android.exoplayer2.util.l lVar, com.google.android.exoplayer2.util.l lVar2, boolean z) {
            boolean z2 = true;
            this.g = lVar;
            this.f = lVar2;
            this.e = z;
            lVar2.c(12);
            this.f3217a = lVar2.s();
            lVar.c(12);
            this.i = lVar.s();
            com.google.android.exoplayer2.util.a.b(lVar.m() != 1 ? false : z2, "first_chunk must be 1");
            this.b = -1;
        }

        public boolean a() {
            int i = this.b + 1;
            this.b = i;
            if (i == this.f3217a) {
                return false;
            }
            this.d = this.e ? this.f.u() : this.f.k();
            if (this.b == this.h) {
                this.c = this.g.s();
                this.g.d(4);
                int i2 = this.i - 1;
                this.i = i2;
                this.h = i2 > 0 ? this.g.s() - 1 : -1;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        private final int f3221a;
        private final long b;
        private final int c;

        public f(int i, long j, int i2) {
            this.f3221a = i;
            this.b = j;
            this.c = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final k[] f3218a;
        public Format b;
        public int c;
        public int d = 0;

        public c(int i) {
            this.f3218a = new k[i];
        }
    }

    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    static final class d implements InterfaceC0134b {

        /* renamed from: a  reason: collision with root package name */
        private final int f3219a;
        private final int b;
        private final com.google.android.exoplayer2.util.l c;

        public d(a.b bVar) {
            this.c = bVar.aQ;
            this.c.c(12);
            this.f3219a = this.c.s();
            this.b = this.c.s();
        }

        @Override // com.google.android.exoplayer2.extractor.c.b.InterfaceC0134b
        public int a() {
            return this.b;
        }

        @Override // com.google.android.exoplayer2.extractor.c.b.InterfaceC0134b
        public int b() {
            return this.f3219a == 0 ? this.c.s() : this.f3219a;
        }

        @Override // com.google.android.exoplayer2.extractor.c.b.InterfaceC0134b
        public boolean c() {
            return this.f3219a != 0;
        }
    }

    /* compiled from: AtomParsers.java */
    /* loaded from: classes2.dex */
    static final class e implements InterfaceC0134b {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.l f3220a;
        private final int b;
        private final int c;
        private int d;
        private int e;

        public e(a.b bVar) {
            this.f3220a = bVar.aQ;
            this.f3220a.c(12);
            this.c = this.f3220a.s() & 255;
            this.b = this.f3220a.s();
        }

        @Override // com.google.android.exoplayer2.extractor.c.b.InterfaceC0134b
        public int a() {
            return this.b;
        }

        @Override // com.google.android.exoplayer2.extractor.c.b.InterfaceC0134b
        public int b() {
            if (this.c == 8) {
                return this.f3220a.f();
            }
            if (this.c == 16) {
                return this.f3220a.g();
            }
            int i = this.d;
            this.d = i + 1;
            if (i % 2 == 0) {
                this.e = this.f3220a.f();
                return (this.e & 240) >> 4;
            }
            return this.e & 15;
        }

        @Override // com.google.android.exoplayer2.extractor.c.b.InterfaceC0134b
        public boolean c() {
            return false;
        }
    }
}
