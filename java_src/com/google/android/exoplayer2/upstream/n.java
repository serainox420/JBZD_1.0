package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.e;
/* compiled from: FileDataSourceFactory.java */
/* loaded from: classes2.dex */
public final class n implements e.a {

    /* renamed from: a  reason: collision with root package name */
    private final r<? super FileDataSource> f3496a;

    public n() {
        this(null);
    }

    public n(r<? super FileDataSource> rVar) {
        this.f3496a = rVar;
    }

    @Override // com.google.android.exoplayer2.upstream.e.a
    public e a() {
        return new FileDataSource(this.f3496a);
    }
}
