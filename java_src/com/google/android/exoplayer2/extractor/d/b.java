package com.google.android.exoplayer2.extractor.d;

import com.facebook.imageutils.JfifUtil;
import com.flurry.android.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.d.h;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: FlacReader.java */
/* loaded from: classes2.dex */
final class b extends h {

    /* renamed from: a  reason: collision with root package name */
    private com.google.android.exoplayer2.util.f f3240a;
    private a b;

    public static boolean a(l lVar) {
        return lVar.b() >= 5 && lVar.f() == 127 && lVar.k() == 1179402563;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.extractor.d.h
    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.f3240a = null;
            this.b = null;
        }
    }

    private static boolean a(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.exoplayer2.extractor.d.h
    protected long b(l lVar) {
        if (!a(lVar.f3511a)) {
            return -1L;
        }
        return c(lVar);
    }

    @Override // com.google.android.exoplayer2.extractor.d.h
    protected boolean a(l lVar, long j, h.a aVar) throws IOException, InterruptedException {
        byte[] bArr = lVar.f3511a;
        if (this.f3240a == null) {
            this.f3240a = new com.google.android.exoplayer2.util.f(bArr, 17);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, lVar.c());
            copyOfRange[4] = Byte.MIN_VALUE;
            aVar.f3247a = Format.a(null, "audio/x-flac", null, -1, this.f3240a.a(), this.f3240a.f, this.f3240a.e, Collections.singletonList(copyOfRange), null, 0, null);
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            this.b = new a();
            this.b.a(lVar);
        } else if (a(bArr)) {
            if (this.b == null) {
                return false;
            }
            this.b.c(j);
            aVar.b = this.b;
            return false;
        }
        return true;
    }

    private int c(l lVar) {
        int i = (lVar.f3511a[2] & Constants.UNKNOWN) >> 4;
        switch (i) {
            case 1:
                return JfifUtil.MARKER_SOFn;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
            case 7:
                lVar.d(4);
                lVar.y();
                int f = i == 6 ? lVar.f() : lVar.g();
                lVar.c(0);
                return f + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    /* compiled from: FlacReader.java */
    /* loaded from: classes2.dex */
    private class a implements f, m {
        private long[] b;
        private long[] c;
        private long d = -1;
        private long e = -1;

        public a() {
        }

        public void c(long j) {
            this.d = j;
        }

        public void a(l lVar) {
            lVar.d(1);
            int j = lVar.j() / 18;
            this.b = new long[j];
            this.c = new long[j];
            for (int i = 0; i < j; i++) {
                this.b[i] = lVar.o();
                this.c[i] = lVar.o();
                lVar.d(2);
            }
        }

        @Override // com.google.android.exoplayer2.extractor.d.f
        public long a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
            if (this.e >= 0) {
                long j = -(this.e + 2);
                this.e = -1L;
                return j;
            }
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.d.f
        public long a(long j) {
            long b = b.this.b(j);
            this.e = this.b[v.a(this.b, b, true, true)];
            return b;
        }

        @Override // com.google.android.exoplayer2.extractor.d.f
        public m c() {
            return this;
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public boolean a() {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public long b(long j) {
            int a2 = v.a(this.b, b.this.b(j), true, true);
            return this.c[a2] + this.d;
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public long b() {
            return b.this.f3240a.b();
        }
    }
}
