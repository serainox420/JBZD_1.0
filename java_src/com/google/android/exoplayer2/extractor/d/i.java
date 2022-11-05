package com.google.android.exoplayer2.extractor.d;
/* compiled from: VorbisBitArray.java */
/* loaded from: classes2.dex */
final class i {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f3248a;
    private final int b;
    private int c;
    private int d;

    public i(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public i(byte[] bArr, int i) {
        this.f3248a = bArr;
        this.b = i * 8;
    }

    public boolean a() {
        return a(1) == 1;
    }

    public int a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        com.google.android.exoplayer2.util.a.b(b() + i <= this.b);
        if (i == 0) {
            return 0;
        }
        if (this.d != 0) {
            i2 = Math.min(i, 8 - this.d);
            i3 = (255 >>> (8 - i2)) & (this.f3248a[this.c] >>> this.d);
            this.d += i2;
            if (this.d == 8) {
                this.c++;
                this.d = 0;
            }
        } else {
            i2 = 0;
            i3 = 0;
        }
        if (i - i2 > 7) {
            int i7 = (i - i2) / 8;
            int i8 = i3;
            int i9 = 0;
            while (i9 < i7) {
                long j = i8;
                byte[] bArr = this.f3248a;
                this.c = this.c + 1;
                i2 += 8;
                i9++;
                i8 = (int) (j | ((bArr[i6] & 255) << i2));
            }
            int i10 = i2;
            i5 = i8;
            i4 = i10;
        } else {
            i4 = i2;
            i5 = i3;
        }
        if (i > i4) {
            int i11 = i - i4;
            i5 |= ((255 >>> (8 - i11)) & this.f3248a[this.c]) << i4;
            this.d += i11;
        }
        return i5;
    }

    public void b(int i) {
        com.google.android.exoplayer2.util.a.b(b() + i <= this.b);
        this.c += i / 8;
        this.d += i % 8;
        if (this.d > 7) {
            this.c++;
            this.d -= 8;
        }
    }

    public int b() {
        return (this.c * 8) + this.d;
    }
}
