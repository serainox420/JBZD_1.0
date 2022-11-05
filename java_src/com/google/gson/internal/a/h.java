package com.google.gson.internal.a;

import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.o;
import com.google.gson.p;
import java.io.IOException;
import java.util.ArrayList;
/* compiled from: ObjectTypeAdapter.java */
/* loaded from: classes2.dex */
public final class h extends o<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final p f3642a = new p() { // from class: com.google.gson.internal.a.h.1
        @Override // com.google.gson.p
        public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Object.class) {
                return new h(dVar);
            }
            return null;
        }
    };
    private final com.google.gson.d b;

    h(com.google.gson.d dVar) {
        this.b = dVar;
    }

    @Override // com.google.gson.o
    public Object b(com.google.gson.stream.a aVar) throws IOException {
        switch (aVar.f()) {
            case BEGIN_ARRAY:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(b(aVar));
                }
                aVar.b();
                return arrayList;
            case BEGIN_OBJECT:
                LinkedTreeMap linkedTreeMap = new LinkedTreeMap();
                aVar.c();
                while (aVar.e()) {
                    linkedTreeMap.put(aVar.g(), b(aVar));
                }
                aVar.d();
                return linkedTreeMap;
            case STRING:
                return aVar.h();
            case NUMBER:
                return Double.valueOf(aVar.k());
            case BOOLEAN:
                return Boolean.valueOf(aVar.i());
            case NULL:
                aVar.j();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.o
    public void a(com.google.gson.stream.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.f();
            return;
        }
        o a2 = this.b.a((Class) obj.getClass());
        if (a2 instanceof h) {
            bVar.d();
            bVar.e();
            return;
        }
        a2.a(bVar, obj);
    }
}
