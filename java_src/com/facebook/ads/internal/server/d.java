package com.facebook.ads.internal.server;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private com.facebook.ads.internal.f.d f2208a;
    private a b;

    /* loaded from: classes.dex */
    public enum a {
        UNKNOWN,
        ERROR,
        ADS
    }

    public d(a aVar, com.facebook.ads.internal.f.d dVar) {
        this.b = aVar;
        this.f2208a = dVar;
    }

    public a a() {
        return this.b;
    }

    public com.facebook.ads.internal.f.d b() {
        return this.f2208a;
    }
}
