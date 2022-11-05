package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.u;
import com.google.android.exoplayer2.util.v;
import java.util.List;
import java.util.UUID;
/* compiled from: SsManifest.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f3420a;
    public final int b;
    public final int c;
    public final boolean d;
    public final C0144a e;
    public final b[] f;
    public final long g;
    public final long h;

    public a(int i, int i2, long j, long j2, long j3, int i3, boolean z, C0144a c0144a, b[] bVarArr) {
        this.f3420a = i;
        this.b = i2;
        this.c = i3;
        this.d = z;
        this.e = c0144a;
        this.f = bVarArr;
        this.h = j3 == 0 ? -9223372036854775807L : v.a(j3, 1000000L, j);
        this.g = j2 == 0 ? -9223372036854775807L : v.a(j2, 1000000L, j);
    }

    /* compiled from: SsManifest.java */
    /* renamed from: com.google.android.exoplayer2.source.smoothstreaming.manifest.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0144a {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f3421a;
        public final byte[] b;

        public C0144a(UUID uuid, byte[] bArr) {
            this.f3421a = uuid;
            this.b = bArr;
        }
    }

    /* compiled from: SsManifest.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3422a;
        public final String b;
        public final long c;
        public final String d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final String i;
        public final Format[] j;
        public final int k;
        private final String l;
        private final String m;
        private final List<Long> n;
        private final long[] o;
        private final long p;

        public b(String str, String str2, int i, String str3, long j, String str4, int i2, int i3, int i4, int i5, String str5, Format[] formatArr, List<Long> list, long j2) {
            this.l = str;
            this.m = str2;
            this.f3422a = i;
            this.b = str3;
            this.c = j;
            this.d = str4;
            this.e = i2;
            this.f = i3;
            this.g = i4;
            this.h = i5;
            this.i = str5;
            this.j = formatArr;
            this.k = list.size();
            this.n = list;
            this.p = v.a(j2, 1000000L, j);
            this.o = v.a(list, 1000000L, j);
        }

        public int a(long j) {
            return v.a(this.o, j, true, true);
        }

        public long a(int i) {
            return this.o[i];
        }

        public long b(int i) {
            return i == this.k + (-1) ? this.p : this.o[i + 1] - this.o[i];
        }

        public Uri a(int i, int i2) {
            boolean z = true;
            com.google.android.exoplayer2.util.a.b(this.j != null);
            com.google.android.exoplayer2.util.a.b(this.n != null);
            if (i2 >= this.n.size()) {
                z = false;
            }
            com.google.android.exoplayer2.util.a.b(z);
            String num = Integer.toString(this.j[i].b);
            String l = this.n.get(i2).toString();
            return u.a(this.l, this.m.replace("{bitrate}", num).replace("{Bitrate}", num).replace("{start time}", l).replace("{start_time}", l));
        }
    }
}
