package com.google.gson.internal.a;

import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* compiled from: CollectionTypeAdapterFactory.java */
/* loaded from: classes2.dex */
public final class b implements p {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.gson.internal.c f3635a;

    public b(com.google.gson.internal.c cVar) {
        this.f3635a = cVar;
    }

    @Override // com.google.gson.p
    public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
        Type b = aVar.b();
        Class<? super T> a2 = aVar.a();
        if (!Collection.class.isAssignableFrom(a2)) {
            return null;
        }
        Type a3 = com.google.gson.internal.b.a(b, (Class<?>) a2);
        return new a(dVar, a3, dVar.a((com.google.gson.b.a) com.google.gson.b.a.a(a3)), this.f3635a.a(aVar));
    }

    /* compiled from: CollectionTypeAdapterFactory.java */
    /* loaded from: classes2.dex */
    private static final class a<E> extends o<Collection<E>> {

        /* renamed from: a  reason: collision with root package name */
        private final o<E> f3636a;
        private final com.google.gson.internal.f<? extends Collection<E>> b;

        @Override // com.google.gson.o
        public /* bridge */ /* synthetic */ void a(com.google.gson.stream.b bVar, Object obj) throws IOException {
            a(bVar, (Collection) ((Collection) obj));
        }

        public a(com.google.gson.d dVar, Type type, o<E> oVar, com.google.gson.internal.f<? extends Collection<E>> fVar) {
            this.f3636a = new m(dVar, oVar, type);
            this.b = fVar;
        }

        @Override // com.google.gson.o
        /* renamed from: a */
        public Collection<E> b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            Collection<E> a2 = this.b.a();
            aVar.a();
            while (aVar.e()) {
                a2.add(this.f3636a.b(aVar));
            }
            aVar.b();
            return a2;
        }

        public void a(com.google.gson.stream.b bVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                bVar.f();
                return;
            }
            bVar.b();
            for (E e : collection) {
                this.f3636a.a(bVar, e);
            }
            bVar.c();
        }
    }
}
