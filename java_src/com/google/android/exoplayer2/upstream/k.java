package com.google.android.exoplayer2.upstream;

import android.content.Context;
import com.google.android.exoplayer2.upstream.e;
/* compiled from: DefaultDataSourceFactory.java */
/* loaded from: classes2.dex */
public final class k implements e.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3494a;
    private final r<? super e> b;
    private final e.a c;

    public k(Context context, String str, r<? super e> rVar) {
        this(context, rVar, new m(str, rVar));
    }

    public k(Context context, r<? super e> rVar, e.a aVar) {
        this.f3494a = context.getApplicationContext();
        this.b = rVar;
        this.c = aVar;
    }

    @Override // com.google.android.exoplayer2.upstream.e.a
    /* renamed from: b */
    public j a() {
        return new j(this.f3494a, this.b, this.c.a());
    }
}
