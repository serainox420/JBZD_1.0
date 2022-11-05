package com.google.android.exoplayer2.c;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.j;
import com.google.android.exoplayer2.util.l;
import java.util.Collections;
import java.util.List;
/* compiled from: HevcConfig.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f3183a;
    public final int b;

    public static b a(l lVar) throws ParserException {
        try {
            lVar.d(21);
            int f = lVar.f() & 3;
            int f2 = lVar.f();
            int d = lVar.d();
            int i = 0;
            int i2 = 0;
            while (i < f2) {
                lVar.d(1);
                int g = lVar.g();
                int i3 = i2;
                for (int i4 = 0; i4 < g; i4++) {
                    int g2 = lVar.g();
                    i3 += g2 + 4;
                    lVar.d(g2);
                }
                i++;
                i2 = i3;
            }
            lVar.c(d);
            byte[] bArr = new byte[i2];
            int i5 = 0;
            int i6 = 0;
            while (i5 < f2) {
                lVar.d(1);
                int g3 = lVar.g();
                int i7 = i6;
                for (int i8 = 0; i8 < g3; i8++) {
                    int g4 = lVar.g();
                    System.arraycopy(j.f3507a, 0, bArr, i7, j.f3507a.length);
                    int length = i7 + j.f3507a.length;
                    System.arraycopy(lVar.f3511a, lVar.d(), bArr, length, g4);
                    i7 = length + g4;
                    lVar.d(g4);
                }
                i5++;
                i6 = i7;
            }
            return new b(i2 == 0 ? null : Collections.singletonList(bArr), f + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing HEVC config", e);
        }
    }

    private b(List<byte[]> list, int i) {
        this.f3183a = list;
        this.b = i;
    }
}
