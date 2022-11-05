package com.google.android.exoplayer2.util;

import com.flurry.android.Constants;
/* compiled from: ParsableNalUnitBitArray.java */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f3512a;
    private int b;
    private int c;
    private int d;

    public m(byte[] bArr, int i, int i2) {
        a(bArr, i, i2);
    }

    public void a(byte[] bArr, int i, int i2) {
        this.f3512a = bArr;
        this.c = i;
        this.b = i2;
        this.d = 0;
        f();
    }

    public void a(int i) {
        int i2 = this.c;
        this.c += i / 8;
        this.d += i % 8;
        if (this.d > 7) {
            this.c++;
            this.d -= 8;
        }
        while (true) {
            i2++;
            if (i2 <= this.c) {
                if (d(i2)) {
                    this.c++;
                    i2 += 2;
                }
            } else {
                f();
                return;
            }
        }
    }

    public boolean b(int i) {
        int i2 = this.c;
        int i3 = (i / 8) + this.c;
        int i4 = this.d + (i % 8);
        if (i4 > 7) {
            i3++;
            i4 -= 8;
        }
        int i5 = i2 + 1;
        int i6 = i3;
        int i7 = i5;
        while (i7 <= i6 && i6 < this.b) {
            if (d(i7)) {
                i6++;
                i7 += 2;
            }
            i7++;
        }
        return i6 < this.b || (i6 == this.b && i4 == 0);
    }

    public boolean a() {
        return c(1) == 1;
    }

    public int c(int i) {
        int i2;
        int i3 = 0;
        if (i != 0) {
            int i4 = i / 8;
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                int i7 = d(this.c + 1) ? this.c + 2 : this.c + 1;
                if (this.d != 0) {
                    i2 = ((this.f3512a[this.c] & Constants.UNKNOWN) << this.d) | ((this.f3512a[i7] & Constants.UNKNOWN) >>> (8 - this.d));
                } else {
                    i2 = this.f3512a[this.c];
                }
                i -= 8;
                i5 |= (i2 & 255) << i;
                this.c = i7;
            }
            if (i > 0) {
                int i8 = this.d + i;
                byte b = (byte) (255 >> (8 - i));
                int i9 = d(this.c + 1) ? this.c + 2 : this.c + 1;
                if (i8 > 8) {
                    i3 = ((((this.f3512a[this.c] & Constants.UNKNOWN) << (i8 - 8)) | ((this.f3512a[i9] & Constants.UNKNOWN) >> (16 - i8))) & b) | i5;
                    this.c = i9;
                } else {
                    i3 = (((this.f3512a[this.c] & Constants.UNKNOWN) >> (8 - i8)) & b) | i5;
                    if (i8 == 8) {
                        this.c = i9;
                    }
                }
                this.d = i8 % 8;
            } else {
                i3 = i5;
            }
            f();
        }
        return i3;
    }

    public boolean b() {
        int i = this.c;
        int i2 = this.d;
        int i3 = 0;
        while (this.c < this.b && !a()) {
            i3++;
        }
        boolean z = this.c == this.b;
        this.c = i;
        this.d = i2;
        return !z && b((i3 * 2) + 1);
    }

    public int c() {
        return e();
    }

    public int d() {
        int e = e();
        return (e % 2 == 0 ? -1 : 1) * ((e + 1) / 2);
    }

    private int e() {
        int i = 0;
        int i2 = 0;
        while (!a()) {
            i2++;
        }
        int i3 = (1 << i2) - 1;
        if (i2 > 0) {
            i = c(i2);
        }
        return i3 + i;
    }

    private boolean d(int i) {
        return 2 <= i && i < this.b && this.f3512a[i] == 3 && this.f3512a[i + (-2)] == 0 && this.f3512a[i + (-1)] == 0;
    }

    private void f() {
        a.b(this.c >= 0 && this.d >= 0 && this.d < 8 && (this.c < this.b || (this.c == this.b && this.d == 0)));
    }
}
