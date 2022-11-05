package com.google.android.exoplayer2.util;

import com.flurry.android.Constants;
import java.nio.charset.Charset;
/* compiled from: ParsableByteArray.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f3511a;
    private int b;
    private int c;

    public l() {
    }

    public l(int i) {
        this.f3511a = new byte[i];
        this.c = i;
    }

    public l(byte[] bArr) {
        this.f3511a = bArr;
        this.c = bArr.length;
    }

    public l(byte[] bArr, int i) {
        this.f3511a = bArr;
        this.c = i;
    }

    public void a(int i) {
        a(e() < i ? new byte[i] : this.f3511a, i);
    }

    public void a(byte[] bArr, int i) {
        this.f3511a = bArr;
        this.c = i;
        this.b = 0;
    }

    public void a() {
        this.b = 0;
        this.c = 0;
    }

    public int b() {
        return this.c - this.b;
    }

    public int c() {
        return this.c;
    }

    public void b(int i) {
        a.a(i >= 0 && i <= this.f3511a.length);
        this.c = i;
    }

    public int d() {
        return this.b;
    }

    public int e() {
        if (this.f3511a == null) {
            return 0;
        }
        return this.f3511a.length;
    }

    public void c(int i) {
        a.a(i >= 0 && i <= this.c);
        this.b = i;
    }

    public void d(int i) {
        c(this.b + i);
    }

    public void a(k kVar, int i) {
        a(kVar.f3510a, 0, i);
        kVar.a(0);
    }

    public void a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f3511a, this.b, bArr, i, i2);
        this.b += i2;
    }

    public int f() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        return bArr[i] & Constants.UNKNOWN;
    }

    public int g() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        byte[] bArr2 = this.f3511a;
        int i2 = this.b;
        this.b = i2 + 1;
        return ((bArr[i] & Constants.UNKNOWN) << 8) | (bArr2[i2] & Constants.UNKNOWN);
    }

    public int h() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        int i2 = bArr[i] & Constants.UNKNOWN;
        byte[] bArr2 = this.f3511a;
        int i3 = this.b;
        this.b = i3 + 1;
        return i2 | ((bArr2[i3] & Constants.UNKNOWN) << 8);
    }

    public short i() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        byte[] bArr2 = this.f3511a;
        int i2 = this.b;
        this.b = i2 + 1;
        return (short) (((bArr[i] & Constants.UNKNOWN) << 8) | (bArr2[i2] & Constants.UNKNOWN));
    }

    public int j() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        byte[] bArr2 = this.f3511a;
        int i2 = this.b;
        this.b = i2 + 1;
        int i3 = ((bArr[i] & Constants.UNKNOWN) << 16) | ((bArr2[i2] & Constants.UNKNOWN) << 8);
        byte[] bArr3 = this.f3511a;
        int i4 = this.b;
        this.b = i4 + 1;
        return i3 | (bArr3[i4] & Constants.UNKNOWN);
    }

    public long k() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        byte[] bArr2 = this.f3511a;
        int i2 = this.b;
        this.b = i2 + 1;
        long j = ((bArr[i] & 255) << 24) | ((bArr2[i2] & 255) << 16);
        byte[] bArr3 = this.f3511a;
        int i3 = this.b;
        this.b = i3 + 1;
        long j2 = j | ((bArr3[i3] & 255) << 8);
        byte[] bArr4 = this.f3511a;
        int i4 = this.b;
        this.b = i4 + 1;
        return j2 | (bArr4[i4] & 255);
    }

    public long l() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        byte[] bArr2 = this.f3511a;
        int i2 = this.b;
        this.b = i2 + 1;
        long j = (bArr[i] & 255) | ((bArr2[i2] & 255) << 8);
        byte[] bArr3 = this.f3511a;
        int i3 = this.b;
        this.b = i3 + 1;
        long j2 = j | ((bArr3[i3] & 255) << 16);
        byte[] bArr4 = this.f3511a;
        int i4 = this.b;
        this.b = i4 + 1;
        return j2 | ((bArr4[i4] & 255) << 24);
    }

    public int m() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        byte[] bArr2 = this.f3511a;
        int i2 = this.b;
        this.b = i2 + 1;
        int i3 = ((bArr[i] & Constants.UNKNOWN) << 24) | ((bArr2[i2] & Constants.UNKNOWN) << 16);
        byte[] bArr3 = this.f3511a;
        int i4 = this.b;
        this.b = i4 + 1;
        int i5 = i3 | ((bArr3[i4] & Constants.UNKNOWN) << 8);
        byte[] bArr4 = this.f3511a;
        int i6 = this.b;
        this.b = i6 + 1;
        return i5 | (bArr4[i6] & Constants.UNKNOWN);
    }

    public int n() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        int i2 = bArr[i] & Constants.UNKNOWN;
        byte[] bArr2 = this.f3511a;
        int i3 = this.b;
        this.b = i3 + 1;
        int i4 = i2 | ((bArr2[i3] & Constants.UNKNOWN) << 8);
        byte[] bArr3 = this.f3511a;
        int i5 = this.b;
        this.b = i5 + 1;
        int i6 = i4 | ((bArr3[i5] & Constants.UNKNOWN) << 16);
        byte[] bArr4 = this.f3511a;
        int i7 = this.b;
        this.b = i7 + 1;
        return i6 | ((bArr4[i7] & Constants.UNKNOWN) << 24);
    }

    public long o() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        byte[] bArr2 = this.f3511a;
        int i2 = this.b;
        this.b = i2 + 1;
        long j = ((bArr[i] & 255) << 56) | ((bArr2[i2] & 255) << 48);
        byte[] bArr3 = this.f3511a;
        int i3 = this.b;
        this.b = i3 + 1;
        long j2 = j | ((bArr3[i3] & 255) << 40);
        byte[] bArr4 = this.f3511a;
        int i4 = this.b;
        this.b = i4 + 1;
        long j3 = j2 | ((bArr4[i4] & 255) << 32);
        byte[] bArr5 = this.f3511a;
        int i5 = this.b;
        this.b = i5 + 1;
        long j4 = j3 | ((bArr5[i5] & 255) << 24);
        byte[] bArr6 = this.f3511a;
        int i6 = this.b;
        this.b = i6 + 1;
        long j5 = j4 | ((bArr6[i6] & 255) << 16);
        byte[] bArr7 = this.f3511a;
        int i7 = this.b;
        this.b = i7 + 1;
        long j6 = j5 | ((bArr7[i7] & 255) << 8);
        byte[] bArr8 = this.f3511a;
        int i8 = this.b;
        this.b = i8 + 1;
        return j6 | (bArr8[i8] & 255);
    }

    public long p() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        byte[] bArr2 = this.f3511a;
        int i2 = this.b;
        this.b = i2 + 1;
        long j = (bArr[i] & 255) | ((bArr2[i2] & 255) << 8);
        byte[] bArr3 = this.f3511a;
        int i3 = this.b;
        this.b = i3 + 1;
        long j2 = j | ((bArr3[i3] & 255) << 16);
        byte[] bArr4 = this.f3511a;
        int i4 = this.b;
        this.b = i4 + 1;
        long j3 = j2 | ((bArr4[i4] & 255) << 24);
        byte[] bArr5 = this.f3511a;
        int i5 = this.b;
        this.b = i5 + 1;
        long j4 = j3 | ((bArr5[i5] & 255) << 32);
        byte[] bArr6 = this.f3511a;
        int i6 = this.b;
        this.b = i6 + 1;
        long j5 = j4 | ((bArr6[i6] & 255) << 40);
        byte[] bArr7 = this.f3511a;
        int i7 = this.b;
        this.b = i7 + 1;
        long j6 = j5 | ((bArr7[i7] & 255) << 48);
        byte[] bArr8 = this.f3511a;
        int i8 = this.b;
        this.b = i8 + 1;
        return j6 | ((bArr8[i8] & 255) << 56);
    }

    public int q() {
        byte[] bArr = this.f3511a;
        int i = this.b;
        this.b = i + 1;
        byte[] bArr2 = this.f3511a;
        int i2 = this.b;
        this.b = i2 + 1;
        int i3 = ((bArr[i] & Constants.UNKNOWN) << 8) | (bArr2[i2] & Constants.UNKNOWN);
        this.b += 2;
        return i3;
    }

    public int r() {
        return (f() << 21) | (f() << 14) | (f() << 7) | f();
    }

    public int s() {
        int m = m();
        if (m < 0) {
            throw new IllegalStateException("Top bit not zero: " + m);
        }
        return m;
    }

    public int t() {
        int n = n();
        if (n < 0) {
            throw new IllegalStateException("Top bit not zero: " + n);
        }
        return n;
    }

    public long u() {
        long o = o();
        if (o < 0) {
            throw new IllegalStateException("Top bit not zero: " + o);
        }
        return o;
    }

    public double v() {
        return Double.longBitsToDouble(o());
    }

    public String e(int i) {
        return a(i, Charset.defaultCharset());
    }

    public String a(int i, Charset charset) {
        String str = new String(this.f3511a, this.b, i, charset);
        this.b += i;
        return str;
    }

    public String f(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.b + i) - 1;
        String str = new String(this.f3511a, this.b, (i2 >= this.c || this.f3511a[i2] != 0) ? i : i - 1);
        this.b += i;
        return str;
    }

    public String w() {
        if (b() == 0) {
            return null;
        }
        int i = this.b;
        while (i < this.c && this.f3511a[i] != 0) {
            i++;
        }
        String str = new String(this.f3511a, this.b, i - this.b);
        this.b = i;
        if (this.b < this.c) {
            this.b++;
        }
        return str;
    }

    public String x() {
        if (b() == 0) {
            return null;
        }
        int i = this.b;
        while (i < this.c && !v.a(this.f3511a[i])) {
            i++;
        }
        if (i - this.b >= 3 && this.f3511a[this.b] == -17 && this.f3511a[this.b + 1] == -69 && this.f3511a[this.b + 2] == -65) {
            this.b += 3;
        }
        String str = new String(this.f3511a, this.b, i - this.b);
        this.b = i;
        if (this.b == this.c) {
            return str;
        }
        if (this.f3511a[this.b] == 13) {
            this.b++;
            if (this.b == this.c) {
                return str;
            }
        }
        if (this.f3511a[this.b] == 10) {
            this.b++;
        }
        return str;
    }

    public long y() {
        byte b;
        int i = 0;
        long j = this.f3511a[this.b];
        int i2 = 7;
        while (true) {
            if (i2 < 0) {
                break;
            } else if (((1 << i2) & j) != 0) {
                i2--;
            } else if (i2 < 6) {
                j &= (1 << i2) - 1;
                i = 7 - i2;
            } else if (i2 == 7) {
                i = 1;
            }
        }
        if (i == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j);
        }
        for (int i3 = 1; i3 < i; i3++) {
            if ((this.f3511a[this.b + i3] & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j);
            }
            j = (j << 6) | (b & 63);
        }
        this.b += i;
        return j;
    }
}
