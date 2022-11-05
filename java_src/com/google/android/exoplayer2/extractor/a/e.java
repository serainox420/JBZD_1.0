package com.google.android.exoplayer2.extractor.a;

import com.flurry.android.Constants;
import com.google.android.exoplayer2.extractor.g;
import com.google.android.exoplayer2.util.l;
import java.io.IOException;
/* compiled from: Sniffer.java */
/* loaded from: classes2.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final l f3207a = new l(8);
    private int b;

    public boolean a(g gVar) throws IOException, InterruptedException {
        long d = gVar.d();
        int i = (int) ((d == -1 || d > 1024) ? 1024L : d);
        gVar.c(this.f3207a.f3511a, 0, 4);
        long k = this.f3207a.k();
        this.b = 4;
        while (k != 440786851) {
            int i2 = this.b + 1;
            this.b = i2;
            if (i2 == i) {
                return false;
            }
            gVar.c(this.f3207a.f3511a, 0, 1);
            k = ((k << 8) & (-256)) | (this.f3207a.f3511a[0] & Constants.UNKNOWN);
        }
        long b = b(gVar);
        long j = this.b;
        if (b != Long.MIN_VALUE) {
            if (d != -1 && j + b >= d) {
                return false;
            }
            while (this.b < j + b) {
                if (b(gVar) == Long.MIN_VALUE) {
                    return false;
                }
                long b2 = b(gVar);
                if (b2 < 0 || b2 > 2147483647L) {
                    return false;
                }
                if (b2 != 0) {
                    gVar.c((int) b2);
                    this.b = (int) (b2 + this.b);
                }
            }
            return ((long) this.b) == b + j;
        }
        return false;
    }

    private long b(g gVar) throws IOException, InterruptedException {
        gVar.c(this.f3207a.f3511a, 0, 1);
        int i = this.f3207a.f3511a[0] & Constants.UNKNOWN;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int i2 = 128;
        int i3 = 0;
        while ((i & i2) == 0) {
            i3++;
            i2 >>= 1;
        }
        int i4 = (i2 ^ (-1)) & i;
        gVar.c(this.f3207a.f3511a, 1, i3);
        for (int i5 = 0; i5 < i3; i5++) {
            i4 = (i4 << 8) + (this.f3207a.f3511a[i5 + 1] & Constants.UNKNOWN);
        }
        this.b += i3 + 1;
        return i4;
    }
}
