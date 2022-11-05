package com.google.android.exoplayer2.source;

import java.util.Arrays;
/* compiled from: TrackGroupArray.java */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final m f3408a = new m(new l[0]);
    public final int b;
    private final l[] c;
    private int d;

    public m(l... lVarArr) {
        this.c = lVarArr;
        this.b = lVarArr.length;
    }

    public l a(int i) {
        return this.c[i];
    }

    public int a(l lVar) {
        for (int i = 0; i < this.b; i++) {
            if (this.c[i] == lVar) {
                return i;
            }
        }
        return -1;
    }

    public int hashCode() {
        if (this.d == 0) {
            this.d = Arrays.hashCode(this.c);
        }
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return this.b == mVar.b && Arrays.equals(this.c, mVar.c);
    }
}
