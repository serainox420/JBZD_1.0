package com.google.android.exoplayer2.c;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.j;
import com.google.android.exoplayer2.util.l;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AvcConfig.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f3182a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;

    public static a a(l lVar) throws ParserException {
        int i;
        int i2 = -1;
        try {
            lVar.d(4);
            int f = (lVar.f() & 3) + 1;
            if (f == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int f2 = lVar.f() & 31;
            for (int i3 = 0; i3 < f2; i3++) {
                arrayList.add(b(lVar));
            }
            int f3 = lVar.f();
            for (int i4 = 0; i4 < f3; i4++) {
                arrayList.add(b(lVar));
            }
            float f4 = 1.0f;
            if (f2 > 0) {
                j.b a2 = j.a((byte[]) arrayList.get(0), f, ((byte[]) arrayList.get(0)).length);
                i = a2.b;
                i2 = a2.c;
                f4 = a2.d;
            } else {
                i = -1;
            }
            return new a(arrayList, f, i, i2, f4);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing AVC config", e);
        }
    }

    private a(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f3182a = list;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f;
    }

    private static byte[] b(l lVar) {
        int g = lVar.g();
        int d = lVar.d();
        lVar.d(g);
        return com.google.android.exoplayer2.util.c.a(lVar.f3511a, d, g);
    }
}
