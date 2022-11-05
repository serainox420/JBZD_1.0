package com.facebook.ads.internal.i.b.a;

import java.io.File;
/* loaded from: classes.dex */
public class g extends e {

    /* renamed from: a  reason: collision with root package name */
    private final long f2183a;

    public g(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.f2183a = j;
    }

    @Override // com.facebook.ads.internal.i.b.a.e, com.facebook.ads.internal.i.b.a.a
    public /* bridge */ /* synthetic */ void a(File file) {
        super.a(file);
    }

    @Override // com.facebook.ads.internal.i.b.a.e
    protected boolean a(File file, long j, int i) {
        return j <= this.f2183a;
    }
}
