package com.mopub.nativeads;
/* loaded from: classes3.dex */
public class IntInterval implements Comparable<IntInterval> {

    /* renamed from: a  reason: collision with root package name */
    private int f4581a;
    private int b;

    public IntInterval(int i, int i2) {
        this.f4581a = i;
        this.b = i2;
    }

    public int getStart() {
        return this.f4581a;
    }

    public int getLength() {
        return this.b;
    }

    public void setStart(int i) {
        this.f4581a = i;
    }

    public void setLength(int i) {
        this.b = i;
    }

    public boolean equals(int i, int i2) {
        return this.f4581a == i && this.b == i2;
    }

    public String toString() {
        return "{start : " + this.f4581a + ", length : " + this.b + "}";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntInterval)) {
            return false;
        }
        IntInterval intInterval = (IntInterval) obj;
        return this.f4581a == intInterval.f4581a && this.b == intInterval.b;
    }

    public int hashCode() {
        return ((this.f4581a + 899) * 31) + this.b;
    }

    @Override // java.lang.Comparable
    public int compareTo(IntInterval intInterval) {
        return this.f4581a == intInterval.f4581a ? this.b - intInterval.b : this.f4581a - intInterval.f4581a;
    }
}
