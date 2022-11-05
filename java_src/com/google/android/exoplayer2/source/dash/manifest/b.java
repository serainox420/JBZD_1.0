package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
/* compiled from: DashManifest.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final long f3393a;
    public final long b;
    public final long c;
    public final boolean d;
    public final long e;
    public final long f;
    public final long g;
    public final k h;
    public final Uri i;
    private final List<d> j;

    public b(long j, long j2, long j3, boolean z, long j4, long j5, long j6, k kVar, Uri uri, List<d> list) {
        this.f3393a = j;
        this.b = j2;
        this.c = j3;
        this.d = z;
        this.e = j4;
        this.f = j5;
        this.g = j6;
        this.h = kVar;
        this.i = uri;
        this.j = list == null ? Collections.emptyList() : list;
    }

    public final int a() {
        return this.j.size();
    }

    public final d a(int i) {
        return this.j.get(i);
    }

    public final long b(int i) {
        if (i == this.j.size() - 1) {
            if (this.b != -9223372036854775807L) {
                return this.b - this.j.get(i).b;
            }
            return -9223372036854775807L;
        }
        return this.j.get(i + 1).b - this.j.get(i).b;
    }

    public final long c(int i) {
        return com.google.android.exoplayer2.b.b(b(i));
    }
}
