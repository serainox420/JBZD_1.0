package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.math.BigDecimal;
/* loaded from: classes2.dex */
public final class LazilyParsedNumber extends Number {

    /* renamed from: a  reason: collision with root package name */
    private final String f3618a;

    public LazilyParsedNumber(String str) {
        this.f3618a = str;
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            return Integer.parseInt(this.f3618a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f3618a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f3618a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f3618a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f3618a).longValue();
        }
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f3618a);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f3618a);
    }

    public String toString() {
        return this.f3618a;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new BigDecimal(this.f3618a);
    }

    public int hashCode() {
        return this.f3618a.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazilyParsedNumber)) {
            return false;
        }
        LazilyParsedNumber lazilyParsedNumber = (LazilyParsedNumber) obj;
        return this.f3618a == lazilyParsedNumber.f3618a || this.f3618a.equals(lazilyParsedNumber.f3618a);
    }
}
