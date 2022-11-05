package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.dash.manifest.h;
import java.util.Collections;
import java.util.List;
/* compiled from: Representation.java */
/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    public final String f3398a;
    public final long b;
    public final Format c;
    public final String d;
    public final long e;
    public final List<g> f;
    private final e g;

    public abstract e d();

    public abstract com.google.android.exoplayer2.source.dash.d e();

    public abstract String f();

    public static f a(String str, long j, Format format, String str2, h hVar, List<g> list) {
        return a(str, j, format, str2, hVar, list, null);
    }

    public static f a(String str, long j, Format format, String str2, h hVar, List<g> list, String str3) {
        if (hVar instanceof h.e) {
            return new b(str, j, format, str2, (h.e) hVar, list, str3, -1L);
        }
        if (hVar instanceof h.a) {
            return new a(str, j, format, str2, (h.a) hVar, list);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    private f(String str, long j, Format format, String str2, h hVar, List<g> list) {
        List<g> unmodifiableList;
        this.f3398a = str;
        this.b = j;
        this.c = format;
        this.d = str2;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.f = unmodifiableList;
        this.g = hVar.a(this);
        this.e = hVar.a();
    }

    public e c() {
        return this.g;
    }

    /* compiled from: Representation.java */
    /* loaded from: classes2.dex */
    public static class b extends f {
        public final Uri g;
        public final long h;
        private final String i;
        private final e j;
        private final i k;

        public b(String str, long j, Format format, String str2, h.e eVar, List<g> list, String str3, long j2) {
            super(str, j, format, str2, eVar, list);
            this.g = Uri.parse(str2);
            this.j = eVar.b();
            this.i = str3 == null ? str != null ? str + "." + format.f3143a + "." + j : null : str3;
            this.h = j2;
            this.k = this.j != null ? null : new i(new e(null, 0L, j2));
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.f
        public e d() {
            return this.j;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.f
        public com.google.android.exoplayer2.source.dash.d e() {
            return this.k;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.f
        public String f() {
            return this.i;
        }
    }

    /* compiled from: Representation.java */
    /* loaded from: classes2.dex */
    public static class a extends f implements com.google.android.exoplayer2.source.dash.d {
        private final h.a g;

        public a(String str, long j, Format format, String str2, h.a aVar, List<g> list) {
            super(str, j, format, str2, aVar, list);
            this.g = aVar;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.f
        public e d() {
            return null;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.f
        public com.google.android.exoplayer2.source.dash.d e() {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.f
        public String f() {
            return null;
        }

        @Override // com.google.android.exoplayer2.source.dash.d
        public e b(int i) {
            return this.g.a(this, i);
        }

        @Override // com.google.android.exoplayer2.source.dash.d
        public int a(long j, long j2) {
            return this.g.a(j, j2);
        }

        @Override // com.google.android.exoplayer2.source.dash.d
        public long a(int i) {
            return this.g.a(i);
        }

        @Override // com.google.android.exoplayer2.source.dash.d
        public long a(int i, long j) {
            return this.g.a(i, j);
        }

        @Override // com.google.android.exoplayer2.source.dash.d
        public int a() {
            return this.g.b();
        }

        @Override // com.google.android.exoplayer2.source.dash.d
        public int a(long j) {
            return this.g.a(j);
        }

        @Override // com.google.android.exoplayer2.source.dash.d
        public boolean b() {
            return this.g.c();
        }
    }
}
