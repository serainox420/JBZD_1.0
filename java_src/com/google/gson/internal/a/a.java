package com.google.gson.internal.a;

import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* compiled from: ArrayTypeAdapter.java */
/* loaded from: classes2.dex */
public final class a<E> extends o<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final p f3633a = new p() { // from class: com.google.gson.internal.a.a.1
        @Override // com.google.gson.p
        public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
            Type b = aVar.b();
            if (!(b instanceof GenericArrayType) && (!(b instanceof Class) || !((Class) b).isArray())) {
                return null;
            }
            Type g = com.google.gson.internal.b.g(b);
            return new a(dVar, dVar.a((com.google.gson.b.a) com.google.gson.b.a.a(g)), com.google.gson.internal.b.e(g));
        }
    };
    private final Class<E> b;
    private final o<E> c;

    public a(com.google.gson.d dVar, o<E> oVar, Class<E> cls) {
        this.c = new m(dVar, oVar, cls);
        this.b = cls;
    }

    @Override // com.google.gson.o
    public Object b(com.google.gson.stream.a aVar) throws IOException {
        if (aVar.f() == JsonToken.NULL) {
            aVar.j();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.a();
        while (aVar.e()) {
            arrayList.add(this.c.b(aVar));
        }
        aVar.b();
        Object newInstance = Array.newInstance((Class<?>) this.b, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gson.o
    public void a(com.google.gson.stream.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.f();
            return;
        }
        bVar.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.c.a(bVar, Array.get(obj, i));
        }
        bVar.c();
    }
}
