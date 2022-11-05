package com.fasterxml.jackson.core.sym;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class NameN extends Name {
    private final int[] q;
    private final int q1;
    private final int q2;
    private final int q3;
    private final int q4;
    private final int qlen;

    NameN(String str, int i, int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        super(str, i);
        this.q1 = i2;
        this.q2 = i3;
        this.q3 = i4;
        this.q4 = i5;
        this.q = iArr;
        this.qlen = i6;
    }

    public static NameN construct(String str, int i, int[] iArr, int i2) {
        int[] iArr2;
        if (i2 < 4) {
            throw new IllegalArgumentException();
        }
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        if (i2 - 4 > 0) {
            iArr2 = Arrays.copyOfRange(iArr, 4, i2);
        } else {
            iArr2 = null;
        }
        return new NameN(str, i, i3, i4, i5, i6, iArr2, i2);
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i, int i2) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i, int i2, int i3) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.fasterxml.jackson.core.sym.Name
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(int[] iArr, int i) {
        if (i == this.qlen && iArr[0] == this.q1 && iArr[1] == this.q2 && iArr[2] == this.q3 && iArr[3] == this.q4) {
            switch (i) {
                case 4:
                    return true;
                case 5:
                    if (iArr[4] != this.q[0]) {
                        return false;
                    }
                    return true;
                case 6:
                    if (iArr[5] != this.q[1]) {
                        return false;
                    }
                    if (iArr[4] != this.q[0]) {
                    }
                    return true;
                case 7:
                    if (iArr[6] != this.q[2]) {
                        return false;
                    }
                    if (iArr[5] != this.q[1]) {
                    }
                    if (iArr[4] != this.q[0]) {
                    }
                    return true;
                case 8:
                    if (iArr[7] != this.q[3]) {
                        return false;
                    }
                    if (iArr[6] != this.q[2]) {
                    }
                    if (iArr[5] != this.q[1]) {
                    }
                    if (iArr[4] != this.q[0]) {
                    }
                    return true;
                default:
                    return _equals2(iArr);
            }
        }
        return false;
    }

    private final boolean _equals2(int[] iArr) {
        int i = this.qlen - 4;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2 + 4] != this.q[i2]) {
                return false;
            }
        }
        return true;
    }
}
