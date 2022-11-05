package com.google.android.exoplayer2.extractor.d;

import com.google.android.exoplayer2.extractor.m;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.vision.barcode.Barcode;
import java.io.EOFException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultOggSeeker.java */
/* loaded from: classes2.dex */
public final class a implements f {

    /* renamed from: a  reason: collision with root package name */
    private final e f3237a = new e();
    private final long b;
    private final long c;
    private final h d;
    private int e;
    private long f;
    private long g;
    private long h;
    private long i;
    private long j;
    private long k;
    private long l;

    public a(long j, long j2, h hVar, int i, long j3) {
        com.google.android.exoplayer2.util.a.a(j >= 0 && j2 > j);
        this.d = hVar;
        this.b = j;
        this.c = j2;
        if (i == j2 - j) {
            this.f = j3;
            this.e = 3;
            return;
        }
        this.e = 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.exoplayer2.extractor.d.f
    public long a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        long j = 0;
        switch (this.e) {
            case 0:
                this.g = gVar.c();
                this.e = 1;
                long j2 = this.c - 65307;
                if (j2 > this.g) {
                    return j2;
                }
                break;
            case 1:
                break;
            case 2:
                if (this.h != 0) {
                    long a2 = a(this.h, gVar);
                    if (a2 >= 0) {
                        return a2;
                    }
                    j = a(gVar, this.h, -(a2 + 2));
                }
                this.e = 3;
                return -(j + 2);
            case 3:
                return -1L;
            default:
                throw new IllegalStateException();
        }
        this.f = c(gVar);
        this.e = 3;
        return this.g;
    }

    @Override // com.google.android.exoplayer2.extractor.d.f
    public long a(long j) {
        com.google.android.exoplayer2.util.a.a(this.e == 3 || this.e == 2);
        this.h = j == 0 ? 0L : this.d.b(j);
        this.e = 2;
        b();
        return this.h;
    }

    @Override // com.google.android.exoplayer2.extractor.d.f
    /* renamed from: a */
    public C0135a c() {
        if (this.f != 0) {
            return new C0135a();
        }
        return null;
    }

    public void b() {
        this.i = this.b;
        this.j = this.c;
        this.k = 0L;
        this.l = this.f;
    }

    public long a(long j, com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        if (this.i == this.j) {
            return -(this.k + 2);
        }
        long c = gVar.c();
        if (!a(gVar, this.j)) {
            if (this.i == c) {
                throw new IOException("No ogg page can be found.");
            }
            return this.i;
        }
        this.f3237a.a(gVar, false);
        gVar.a();
        long j2 = j - this.f3237a.c;
        int i = this.f3237a.h + this.f3237a.i;
        if (j2 < 0 || j2 > 72000) {
            if (j2 < 0) {
                this.j = c;
                this.l = this.f3237a.c;
            } else {
                this.i = gVar.c() + i;
                this.k = this.f3237a.c;
                if ((this.j - this.i) + i < 100000) {
                    gVar.b(i);
                    return -(this.k + 2);
                }
            }
            if (this.j - this.i < 100000) {
                this.j = this.i;
                return this.i;
            }
            return Math.min(Math.max((gVar.c() - ((j2 <= 0 ? 2 : 1) * i)) + ((j2 * (this.j - this.i)) / (this.l - this.k)), this.i), this.j - 1);
        }
        gVar.b(i);
        return -(this.f3237a.c + 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(long j, long j2, long j3) {
        long j4 = ((((this.c - this.b) * j2) / this.f) - j3) + j;
        if (j4 < this.b) {
            j4 = this.b;
        }
        if (j4 >= this.c) {
            return this.c - 1;
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultOggSeeker.java */
    /* renamed from: com.google.android.exoplayer2.extractor.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0135a implements m {
        private C0135a() {
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public boolean a() {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public long b(long j) {
            if (j == 0) {
                return a.this.b;
            }
            return a.this.a(a.this.b, a.this.d.b(j), (long) NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public long b() {
            return a.this.d.a(a.this.f);
        }
    }

    void b(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        if (!a(gVar, this.c)) {
            throw new EOFException();
        }
    }

    boolean a(com.google.android.exoplayer2.extractor.g gVar, long j) throws IOException, InterruptedException {
        long min = Math.min(3 + j, this.c);
        byte[] bArr = new byte[Barcode.PDF417];
        int length = bArr.length;
        while (true) {
            if (gVar.c() + length <= min || (length = (int) (min - gVar.c())) >= 4) {
                gVar.b(bArr, 0, length, false);
                for (int i = 0; i < length - 3; i++) {
                    if (bArr[i] == 79 && bArr[i + 1] == 103 && bArr[i + 2] == 103 && bArr[i + 3] == 83) {
                        gVar.b(i);
                        return true;
                    }
                }
                gVar.b(length - 3);
            } else {
                return false;
            }
        }
    }

    long c(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        b(gVar);
        this.f3237a.a();
        while ((this.f3237a.b & 4) != 4 && gVar.c() < this.c) {
            this.f3237a.a(gVar, false);
            gVar.b(this.f3237a.h + this.f3237a.i);
        }
        return this.f3237a.c;
    }

    long a(com.google.android.exoplayer2.extractor.g gVar, long j, long j2) throws IOException, InterruptedException {
        this.f3237a.a(gVar, false);
        while (this.f3237a.c < j) {
            gVar.b(this.f3237a.h + this.f3237a.i);
            j2 = this.f3237a.c;
            this.f3237a.a(gVar, false);
        }
        gVar.a();
        return j2;
    }
}
