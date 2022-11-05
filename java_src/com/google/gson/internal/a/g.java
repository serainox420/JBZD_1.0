package com.google.gson.internal.a;

import com.google.gson.JsonSyntaxException;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
/* compiled from: MapTypeAdapterFactory.java */
/* loaded from: classes2.dex */
public final class g implements p {

    /* renamed from: a  reason: collision with root package name */
    final boolean f3640a;
    private final com.google.gson.internal.c b;

    public g(com.google.gson.internal.c cVar, boolean z) {
        this.b = cVar;
        this.f3640a = z;
    }

    @Override // com.google.gson.p
    public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
        Type b = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] b2 = com.google.gson.internal.b.b(b, com.google.gson.internal.b.e(b));
        return new a(dVar, b2[0], a(dVar, b2[0]), b2[1], dVar.a((com.google.gson.b.a) com.google.gson.b.a.a(b2[1])), this.b.a(aVar));
    }

    private o<?> a(com.google.gson.d dVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? n.f : dVar.a((com.google.gson.b.a) com.google.gson.b.a.a(type));
    }

    /* compiled from: MapTypeAdapterFactory.java */
    /* loaded from: classes2.dex */
    private final class a<K, V> extends o<Map<K, V>> {
        private final o<K> b;
        private final o<V> c;
        private final com.google.gson.internal.f<? extends Map<K, V>> d;

        @Override // com.google.gson.o
        public /* bridge */ /* synthetic */ void a(com.google.gson.stream.b bVar, Object obj) throws IOException {
            a(bVar, (Map) ((Map) obj));
        }

        public a(com.google.gson.d dVar, Type type, o<K> oVar, Type type2, o<V> oVar2, com.google.gson.internal.f<? extends Map<K, V>> fVar) {
            this.b = new m(dVar, oVar, type);
            this.c = new m(dVar, oVar2, type2);
            this.d = fVar;
        }

        @Override // com.google.gson.o
        /* renamed from: a */
        public Map<K, V> b(com.google.gson.stream.a aVar) throws IOException {
            JsonToken f = aVar.f();
            if (f == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            Map<K, V> a2 = this.d.a();
            if (f == JsonToken.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K b = this.b.b(aVar);
                    if (a2.put(b, this.c.b(aVar)) != null) {
                        throw new JsonSyntaxException("duplicate key: " + b);
                    }
                    aVar.b();
                }
                aVar.b();
                return a2;
            }
            aVar.c();
            while (aVar.e()) {
                com.google.gson.internal.e.f3682a.a(aVar);
                K b2 = this.b.b(aVar);
                if (a2.put(b2, this.c.b(aVar)) != null) {
                    throw new JsonSyntaxException("duplicate key: " + b2);
                }
            }
            aVar.d();
            return a2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void a(com.google.gson.stream.b bVar, Map<K, V> map) throws IOException {
            int i = 0;
            if (map == null) {
                bVar.f();
            } else if (!g.this.f3640a) {
                bVar.d();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    bVar.a(String.valueOf(entry.getKey()));
                    this.c.a(bVar, entry.getValue());
                }
                bVar.e();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    com.google.gson.i a2 = this.b.a(entry2.getKey());
                    arrayList.add(a2);
                    arrayList2.add(entry2.getValue());
                    z = (a2.g() || a2.h()) | z;
                }
                if (z) {
                    bVar.b();
                    while (i < arrayList.size()) {
                        bVar.b();
                        com.google.gson.internal.h.a((com.google.gson.i) arrayList.get(i), bVar);
                        this.c.a(bVar, arrayList2.get(i));
                        bVar.c();
                        i++;
                    }
                    bVar.c();
                    return;
                }
                bVar.d();
                while (i < arrayList.size()) {
                    bVar.a(a((com.google.gson.i) arrayList.get(i)));
                    this.c.a(bVar, arrayList2.get(i));
                    i++;
                }
                bVar.e();
            }
        }

        private String a(com.google.gson.i iVar) {
            if (iVar.i()) {
                com.google.gson.l m = iVar.m();
                if (m.p()) {
                    return String.valueOf(m.a());
                }
                if (m.o()) {
                    return Boolean.toString(m.f());
                }
                if (m.q()) {
                    return m.b();
                }
                throw new AssertionError();
            } else if (iVar.j()) {
                return "null";
            } else {
                throw new AssertionError();
            }
        }
    }
}
