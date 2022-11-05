package com.google.gson.internal.a;

import com.google.gson.o;
import com.google.gson.p;
import java.io.IOException;
/* compiled from: TreeTypeAdapter.java */
/* loaded from: classes2.dex */
public final class l<T> extends o<T> {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.gson.n<T> f3649a;
    private final com.google.gson.h<T> b;
    private final com.google.gson.d c;
    private final com.google.gson.b.a<T> d;
    private final p e;
    private final l<T>.a f = new a();
    private o<T> g;

    public l(com.google.gson.n<T> nVar, com.google.gson.h<T> hVar, com.google.gson.d dVar, com.google.gson.b.a<T> aVar, p pVar) {
        this.f3649a = nVar;
        this.b = hVar;
        this.c = dVar;
        this.d = aVar;
        this.e = pVar;
    }

    @Override // com.google.gson.o
    public T b(com.google.gson.stream.a aVar) throws IOException {
        if (this.b == null) {
            return b().b(aVar);
        }
        com.google.gson.i a2 = com.google.gson.internal.h.a(aVar);
        if (a2.j()) {
            return null;
        }
        return this.b.a(a2, this.d.b(), this.f);
    }

    @Override // com.google.gson.o
    public void a(com.google.gson.stream.b bVar, T t) throws IOException {
        if (this.f3649a == null) {
            b().a(bVar, t);
        } else if (t == null) {
            bVar.f();
        } else {
            com.google.gson.internal.h.a(this.f3649a.a(t, this.d.b(), this.f), bVar);
        }
    }

    private o<T> b() {
        o<T> oVar = this.g;
        if (oVar != null) {
            return oVar;
        }
        o<T> a2 = this.c.a(this.e, this.d);
        this.g = a2;
        return a2;
    }

    /* compiled from: TreeTypeAdapter.java */
    /* loaded from: classes2.dex */
    private final class a implements com.google.gson.g, com.google.gson.m {
        private a() {
        }
    }
}
