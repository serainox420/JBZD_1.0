package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.v;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: DefaultExtractorInput.java */
/* loaded from: classes2.dex */
public final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f3209a = new byte[4096];
    private final com.google.android.exoplayer2.upstream.e b;
    private final long c;
    private long d;
    private byte[] e = new byte[65536];
    private int f;
    private int g;

    public b(com.google.android.exoplayer2.upstream.e eVar, long j, long j2) {
        this.b = eVar;
        this.d = j;
        this.c = j2;
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public int a(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int d = d(bArr, i, i2);
        if (d == 0) {
            d = a(bArr, i, i2, 0, true);
        }
        g(d);
        return d;
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int d = d(bArr, i, i2);
        while (d < i2 && d != -1) {
            d = a(bArr, i, i2, d, z);
        }
        g(d);
        return d != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public void b(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        a(bArr, i, i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public int a(int i) throws IOException, InterruptedException {
        int e = e(i);
        if (e == 0) {
            e = a(f3209a, 0, Math.min(i, f3209a.length), 0, true);
        }
        g(e);
        return e;
    }

    public boolean a(int i, boolean z) throws IOException, InterruptedException {
        int e = e(i);
        while (e < i && e != -1) {
            e = a(f3209a, -e, Math.min(i, f3209a.length + e), e, z);
        }
        g(e);
        return e != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public void b(int i) throws IOException, InterruptedException {
        a(i, false);
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public boolean b(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!b(i2, z)) {
            return false;
        }
        System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public void c(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        b(bArr, i, i2, false);
    }

    public boolean b(int i, boolean z) throws IOException, InterruptedException {
        d(i);
        int min = Math.min(this.g - this.f, i);
        while (min < i) {
            min = a(this.e, this.f, i, min, z);
            if (min == -1) {
                return false;
            }
        }
        this.f += i;
        this.g = Math.max(this.g, this.f);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public void c(int i) throws IOException, InterruptedException {
        b(i, false);
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public void a() {
        this.f = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public long b() {
        return this.d + this.f;
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public long c() {
        return this.d;
    }

    @Override // com.google.android.exoplayer2.extractor.g
    public long d() {
        return this.c;
    }

    private void d(int i) {
        int i2 = this.f + i;
        if (i2 > this.e.length) {
            this.e = Arrays.copyOf(this.e, v.a(this.e.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    private int e(int i) {
        int min = Math.min(this.g, i);
        f(min);
        return min;
    }

    private int d(byte[] bArr, int i, int i2) {
        if (this.g == 0) {
            return 0;
        }
        int min = Math.min(this.g, i2);
        System.arraycopy(this.e, 0, bArr, i, min);
        f(min);
        return min;
    }

    private void f(int i) {
        this.g -= i;
        this.f = 0;
        byte[] bArr = this.e;
        if (this.g < this.e.length - 524288) {
            bArr = new byte[this.g + 65536];
        }
        System.arraycopy(this.e, i, bArr, 0, this.g);
        this.e = bArr;
    }

    private int a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int a2 = this.b.a(bArr, i + i3, i2 - i3);
        if (a2 == -1) {
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        return i3 + a2;
    }

    private void g(int i) {
        if (i != -1) {
            this.d += i;
        }
    }
}
