package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.HttpDataSource;
/* compiled from: DefaultHttpDataSourceFactory.java */
/* loaded from: classes2.dex */
public final class m extends HttpDataSource.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f3495a;
    private final r<? super e> b;
    private final int c;
    private final int d;
    private final boolean e;

    public m(String str, r<? super e> rVar) {
        this(str, rVar, 8000, 8000, false);
    }

    public m(String str, r<? super e> rVar, int i, int i2, boolean z) {
        this.f3495a = str;
        this.b = rVar;
        this.c = i;
        this.d = i2;
        this.e = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.upstream.HttpDataSource.a
    /* renamed from: a */
    public l b(HttpDataSource.c cVar) {
        return new l(this.f3495a, null, this.b, this.c, this.d, this.e, cVar);
    }
}
