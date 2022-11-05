package com.google.android.exoplayer2.extractor.c;

import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* compiled from: Sniffer.java */
/* loaded from: classes2.dex */
final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3230a = {v.g("isom"), v.g("iso2"), v.g("iso3"), v.g("iso4"), v.g("iso5"), v.g("iso6"), v.g("avc1"), v.g("hvc1"), v.g("hev1"), v.g("mp41"), v.g("mp42"), v.g("3g2a"), v.g("3g2b"), v.g("3gr6"), v.g("3gs6"), v.g("3ge6"), v.g("3gg6"), v.g("M4V "), v.g("M4A "), v.g("f4v "), v.g("kddi"), v.g("M4VP"), v.g("qt  "), v.g("MSNV")};

    public static boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        return a(gVar, true);
    }

    public static boolean b(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        return a(gVar, false);
    }

    private static boolean a(com.google.android.exoplayer2.extractor.g gVar, boolean z) throws IOException, InterruptedException {
        long d = gVar.d();
        if (d == -1 || d > 4096) {
            d = 4096;
        }
        int i = (int) d;
        com.google.android.exoplayer2.util.l lVar = new com.google.android.exoplayer2.util.l(64);
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (i2 < i) {
            int i3 = 8;
            lVar.a(8);
            gVar.c(lVar.f3511a, 0, 8);
            long k = lVar.k();
            int m = lVar.m();
            if (k == 1) {
                i3 = 16;
                gVar.c(lVar.f3511a, 8, 8);
                lVar.b(16);
                k = lVar.u();
            }
            if (k < i3) {
                return false;
            }
            i2 += i3;
            if (m != a.B) {
                if (m == a.K || m == a.M) {
                    z3 = true;
                    break;
                } else if ((i2 + k) - i3 >= i) {
                    break;
                } else {
                    int i4 = (int) (k - i3);
                    int i5 = i2 + i4;
                    if (m == a.f3215a) {
                        if (i4 < 8) {
                            return false;
                        }
                        lVar.a(i4);
                        gVar.c(lVar.f3511a, 0, i4);
                        int i6 = i4 / 4;
                        int i7 = 0;
                        while (true) {
                            if (i7 >= i6) {
                                break;
                            }
                            if (i7 == 1) {
                                lVar.d(4);
                            } else if (a(lVar.m())) {
                                z2 = true;
                                break;
                            }
                            i7++;
                        }
                        if (!z2) {
                            return false;
                        }
                    } else if (i4 != 0) {
                        gVar.c(i4);
                    }
                    i2 = i5;
                }
            }
        }
        return z2 && z == z3;
    }

    private static boolean a(int i) {
        if ((i >>> 8) == v.g("3gp")) {
            return true;
        }
        for (int i2 : f3230a) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }
}
