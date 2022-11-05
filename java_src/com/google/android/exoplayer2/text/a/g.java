package com.google.android.exoplayer2.text.a;

import android.util.Log;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.l;
/* compiled from: CeaUtil.java */
/* loaded from: classes2.dex */
public final class g {
    public static void a(long j, l lVar, n[] nVarArr) {
        while (lVar.b() > 1) {
            int a2 = a(lVar);
            int a3 = a(lVar);
            if (a3 == -1 || a3 > lVar.b()) {
                Log.w("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                lVar.c(lVar.c());
            } else if (a(a2, a3, lVar)) {
                lVar.d(8);
                int f = lVar.f() & 31;
                lVar.d(1);
                int i = f * 3;
                int d = lVar.d();
                for (n nVar : nVarArr) {
                    lVar.c(d);
                    nVar.a(lVar, i);
                    nVar.a(j, 1, i, 0, null);
                }
                lVar.d(a3 - ((f * 3) + 10));
            } else {
                lVar.d(a3);
            }
        }
    }

    private static int a(l lVar) {
        int i = 0;
        while (lVar.b() != 0) {
            int f = lVar.f();
            i += f;
            if (f != 255) {
                return i;
            }
        }
        return -1;
    }

    private static boolean a(int i, int i2, l lVar) {
        if (i != 4 || i2 < 8) {
            return false;
        }
        int d = lVar.d();
        int f = lVar.f();
        int g = lVar.g();
        int m = lVar.m();
        int f2 = lVar.f();
        lVar.c(d);
        return f == 181 && g == 49 && m == 1195456820 && f2 == 3;
    }
}
