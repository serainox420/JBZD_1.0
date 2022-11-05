package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
/* compiled from: CacheSpan.java */
/* loaded from: classes2.dex */
public class e implements Comparable<e> {

    /* renamed from: a  reason: collision with root package name */
    public final String f3482a;
    public final long b;
    public final long c;
    public final boolean d;
    public final File e;
    public final long f;

    public e(String str, long j, long j2, long j3, File file) {
        this.f3482a = str;
        this.b = j;
        this.c = j2;
        this.d = file != null;
        this.e = file;
        this.f = j3;
    }

    public boolean a() {
        return this.c == -1;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(e eVar) {
        if (!this.f3482a.equals(eVar.f3482a)) {
            return this.f3482a.compareTo(eVar.f3482a);
        }
        long j = this.b - eVar.b;
        if (j == 0) {
            return 0;
        }
        return j < 0 ? -1 : 1;
    }
}
