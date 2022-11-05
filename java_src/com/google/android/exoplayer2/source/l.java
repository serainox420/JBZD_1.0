package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.Format;
import java.util.Arrays;
/* compiled from: TrackGroup.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final int f3407a;
    private final Format[] b;
    private int c;

    public l(Format... formatArr) {
        com.google.android.exoplayer2.util.a.b(formatArr.length > 0);
        this.b = formatArr;
        this.f3407a = formatArr.length;
    }

    public Format a(int i) {
        return this.b[i];
    }

    public int a(Format format) {
        for (int i = 0; i < this.b.length; i++) {
            if (format == this.b[i]) {
                return i;
            }
        }
        return -1;
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
        l lVar = (l) obj;
        return this.f3407a == lVar.f3407a && Arrays.equals(this.b, lVar.b);
    }
}
