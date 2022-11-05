package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.v;
import com.google.android.gms.location.places.Place;
import java.util.UUID;
/* compiled from: C.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f3170a;
    public static final UUID b;
    public static final UUID c;
    public static final UUID d;
    public static final UUID e;

    static {
        f3170a = v.f3519a < 23 ? Place.TYPE_ROUTE : 6396;
        b = new UUID(0L, 0L);
        c = new UUID(1186680826959645954L, -5988876978535335093L);
        d = new UUID(-1301668207276963122L, -6645017420763422227L);
        e = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static long a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }

    public static long b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return 1000 * j;
    }
}
