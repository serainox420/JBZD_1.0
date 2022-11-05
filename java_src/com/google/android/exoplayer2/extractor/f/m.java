package com.google.android.exoplayer2.extractor.f;

import java.util.Arrays;
/* compiled from: NalUnitTargetBuffer.java */
/* loaded from: classes2.dex */
final class m {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f3271a;
    public int b;
    private final int c;
    private boolean d;
    private boolean e;

    public m(int i, int i2) {
        this.c = i;
        this.f3271a = new byte[i2 + 3];
        this.f3271a[2] = 1;
    }

    public void a() {
        this.d = false;
        this.e = false;
    }

    public boolean b() {
        return this.e;
    }

    public void a(int i) {
        boolean z = true;
        com.google.android.exoplayer2.util.a.b(!this.d);
        if (i != this.c) {
            z = false;
        }
        this.d = z;
        if (this.d) {
            this.b = 3;
            this.e = false;
        }
    }

    public void a(byte[] bArr, int i, int i2) {
        if (this.d) {
            int i3 = i2 - i;
            if (this.f3271a.length < this.b + i3) {
                this.f3271a = Arrays.copyOf(this.f3271a, (this.b + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f3271a, this.b, i3);
            this.b = i3 + this.b;
        }
    }

    public boolean b(int i) {
        if (!this.d) {
            return false;
        }
        this.b -= i;
        this.d = false;
        this.e = true;
        return true;
    }
}
