package com.google.android.exoplayer2.b;

import java.util.Arrays;
/* compiled from: TrackSelectionArray.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final int f3178a;
    private final f[] b;
    private int c;

    public g(f... fVarArr) {
        this.b = fVarArr;
        this.f3178a = fVarArr.length;
    }

    public f a(int i) {
        return this.b[i];
    }

    public f[] a() {
        return (f[]) this.b.clone();
    }

    public int hashCode() {
        if (this.c == 0) {
            this.c = Arrays.hashCode(this.b) + 527;
        }
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((g) obj).b);
    }
}
