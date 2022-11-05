package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: JsonArray.java */
/* loaded from: classes2.dex */
public final class f extends i implements Iterable<i> {

    /* renamed from: a  reason: collision with root package name */
    private final List<i> f3617a = new ArrayList();

    public void a(i iVar) {
        if (iVar == null) {
            iVar = j.f3689a;
        }
        this.f3617a.add(iVar);
    }

    @Override // java.lang.Iterable
    public Iterator<i> iterator() {
        return this.f3617a.iterator();
    }

    @Override // com.google.gson.i
    public Number a() {
        if (this.f3617a.size() == 1) {
            return this.f3617a.get(0).a();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public String b() {
        if (this.f3617a.size() == 1) {
            return this.f3617a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public double c() {
        if (this.f3617a.size() == 1) {
            return this.f3617a.get(0).c();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public long d() {
        if (this.f3617a.size() == 1) {
            return this.f3617a.get(0).d();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public int e() {
        if (this.f3617a.size() == 1) {
            return this.f3617a.get(0).e();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.i
    public boolean f() {
        if (this.f3617a.size() == 1) {
            return this.f3617a.get(0).f();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof f) && ((f) obj).f3617a.equals(this.f3617a));
    }

    public int hashCode() {
        return this.f3617a.hashCode();
    }
}
