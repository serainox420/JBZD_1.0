package com.google.android.exoplayer2.util;

import com.flurry.android.Constants;
/* compiled from: ParsableBitArray.java */
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f3510a;
    private int b;
    private int c;
    private int d;

    public k() {
    }

    public k(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public k(byte[] bArr, int i) {
        this.f3510a = bArr;
        this.d = i;
    }

    public void a(byte[] bArr, int i) {
        this.f3510a = bArr;
        this.b = 0;
        this.c = 0;
        this.d = i;
    }

    public int a() {
        return ((this.d - this.b) * 8) - this.c;
    }

    public int b() {
        return (this.b * 8) + this.c;
    }

    public void a(int i) {
        this.b = i / 8;
        this.c = i - (this.b * 8);
        d();
    }

    public void b(int i) {
        this.b += i / 8;
        this.c += i % 8;
        if (this.c > 7) {
            this.b++;
            this.c -= 8;
        }
        d();
    }

    public boolean c() {
        return c(1) == 1;
    }

    public int c(int i) {
        int i2;
        int i3 = 0;
        if (i != 0) {
            int i4 = i / 8;
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                if (this.c != 0) {
                    i2 = ((this.f3510a[this.b] & Constants.UNKNOWN) << this.c) | ((this.f3510a[this.b + 1] & Constants.UNKNOWN) >>> (8 - this.c));
                } else {
                    i2 = this.f3510a[this.b];
                }
                i -= 8;
                i5 |= (i2 & 255) << i;
                this.b++;
            }
            if (i > 0) {
                int i7 = this.c + i;
                byte b = (byte) (255 >> (8 - i));
                if (i7 > 8) {
                    i3 = (b & (((this.f3510a[this.b] & Constants.UNKNOWN) << (i7 - 8)) | ((this.f3510a[this.b + 1] & Constants.UNKNOWN) >> (16 - i7)))) | i5;
                    this.b++;
                } else {
                    i3 = (b & ((this.f3510a[this.b] & Constants.UNKNOWN) >> (8 - i7))) | i5;
                    if (i7 == 8) {
                        this.b++;
                    }
                }
                this.c = i7 % 8;
            } else {
                i3 = i5;
            }
            d();
        }
        return i3;
    }

    private void d() {
        a.b(this.b >= 0 && this.c >= 0 && this.c < 8 && (this.b < this.d || (this.b == this.d && this.c == 0)));
    }
}
