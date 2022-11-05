package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Arrays;
/* compiled from: DataSpec.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f3489a;
    public final byte[] b;
    public final long c;
    public final long d;
    public final long e;
    public final String f;
    public final int g;

    public g(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    public g(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    public g(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    public g(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public g(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        com.google.android.exoplayer2.util.a.a(j >= 0);
        com.google.android.exoplayer2.util.a.a(j2 >= 0);
        com.google.android.exoplayer2.util.a.a(j3 > 0 || j3 == -1);
        this.f3489a = uri;
        this.b = bArr;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = str;
        this.g = i;
    }

    public boolean a(int i) {
        return (this.g & i) == i;
    }

    public String toString() {
        return "DataSpec[" + this.f3489a + ", " + Arrays.toString(this.b) + ", " + this.c + ", " + this.d + ", " + this.e + ", " + this.f + ", " + this.g + "]";
    }
}
