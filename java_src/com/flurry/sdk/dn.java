package com.flurry.sdk;
/* loaded from: classes2.dex */
public final class dn {

    /* renamed from: a  reason: collision with root package name */
    public int f2539a;
    public long b;
    public int c;
    public boolean d;
    public boolean e;

    public dn(int i, long j, int i2, boolean z, boolean z2) {
        this.f2539a = i;
        this.b = j == 0 ? 3000L : j;
        this.c = i2 == 0 ? 50 : i2;
        this.d = z;
        this.e = z2;
    }

    public dn(long j, int i) {
        this(0, j, i, false, false);
    }

    public final String toString() {
        return ("{\n type " + this.f2539a + ",\n") + (" durationMillis " + this.b + ",\n") + (" percentVisible " + this.c + ",\n") + (" needConsequtive " + this.d + ",\n") + (" needAudioOn " + this.e + "\n}\n");
    }
}
