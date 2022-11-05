package com.google.gson;

import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
/* compiled from: Gson.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.gson.b.a<?> f3611a = new com.google.gson.b.a<Object>() { // from class: com.google.gson.d.1
    };
    private final ThreadLocal<Map<com.google.gson.b.a<?>, a<?>>> b;
    private final Map<com.google.gson.b.a<?>, o<?>> c;
    private final List<p> d;
    private final com.google.gson.internal.c e;
    private final com.google.gson.internal.d f;
    private final c g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final com.google.gson.internal.a.d m;

    public d() {
        this(com.google.gson.internal.d.f3680a, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, LongSerializationPolicy.DEFAULT, Collections.emptyList());
    }

    d(com.google.gson.internal.d dVar, c cVar, Map<Type, e<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, LongSerializationPolicy longSerializationPolicy, List<p> list) {
        this.b = new ThreadLocal<>();
        this.c = new ConcurrentHashMap();
        this.e = new com.google.gson.internal.c(map);
        this.f = dVar;
        this.g = cVar;
        this.h = z;
        this.j = z3;
        this.i = z4;
        this.k = z5;
        this.l = z6;
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.google.gson.internal.a.n.Y);
        arrayList.add(com.google.gson.internal.a.h.f3642a);
        arrayList.add(dVar);
        arrayList.addAll(list);
        arrayList.add(com.google.gson.internal.a.n.D);
        arrayList.add(com.google.gson.internal.a.n.m);
        arrayList.add(com.google.gson.internal.a.n.g);
        arrayList.add(com.google.gson.internal.a.n.i);
        arrayList.add(com.google.gson.internal.a.n.k);
        o<Number> a2 = a(longSerializationPolicy);
        arrayList.add(com.google.gson.internal.a.n.a(Long.TYPE, Long.class, a2));
        arrayList.add(com.google.gson.internal.a.n.a(Double.TYPE, Double.class, a(z7)));
        arrayList.add(com.google.gson.internal.a.n.a(Float.TYPE, Float.class, b(z7)));
        arrayList.add(com.google.gson.internal.a.n.x);
        arrayList.add(com.google.gson.internal.a.n.o);
        arrayList.add(com.google.gson.internal.a.n.q);
        arrayList.add(com.google.gson.internal.a.n.a(AtomicLong.class, a(a2)));
        arrayList.add(com.google.gson.internal.a.n.a(AtomicLongArray.class, b(a2)));
        arrayList.add(com.google.gson.internal.a.n.s);
        arrayList.add(com.google.gson.internal.a.n.z);
        arrayList.add(com.google.gson.internal.a.n.F);
        arrayList.add(com.google.gson.internal.a.n.H);
        arrayList.add(com.google.gson.internal.a.n.a(BigDecimal.class, com.google.gson.internal.a.n.B));
        arrayList.add(com.google.gson.internal.a.n.a(BigInteger.class, com.google.gson.internal.a.n.C));
        arrayList.add(com.google.gson.internal.a.n.J);
        arrayList.add(com.google.gson.internal.a.n.L);
        arrayList.add(com.google.gson.internal.a.n.P);
        arrayList.add(com.google.gson.internal.a.n.R);
        arrayList.add(com.google.gson.internal.a.n.W);
        arrayList.add(com.google.gson.internal.a.n.N);
        arrayList.add(com.google.gson.internal.a.n.d);
        arrayList.add(com.google.gson.internal.a.c.f3637a);
        arrayList.add(com.google.gson.internal.a.n.U);
        arrayList.add(com.google.gson.internal.a.k.f3648a);
        arrayList.add(com.google.gson.internal.a.j.f3647a);
        arrayList.add(com.google.gson.internal.a.n.S);
        arrayList.add(com.google.gson.internal.a.a.f3633a);
        arrayList.add(com.google.gson.internal.a.n.b);
        arrayList.add(new com.google.gson.internal.a.b(this.e));
        arrayList.add(new com.google.gson.internal.a.g(this.e, z2));
        this.m = new com.google.gson.internal.a.d(this.e);
        arrayList.add(this.m);
        arrayList.add(com.google.gson.internal.a.n.Z);
        arrayList.add(new com.google.gson.internal.a.i(this.e, cVar, dVar, this.m));
        this.d = Collections.unmodifiableList(arrayList);
    }

    private o<Number> a(boolean z) {
        return z ? com.google.gson.internal.a.n.v : new o<Number>() { // from class: com.google.gson.d.2
            @Override // com.google.gson.o
            /* renamed from: a */
            public Double b(com.google.gson.stream.a aVar) throws IOException {
                if (aVar.f() == JsonToken.NULL) {
                    aVar.j();
                    return null;
                }
                return Double.valueOf(aVar.k());
            }

            @Override // com.google.gson.o
            public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
                if (number == null) {
                    bVar.f();
                    return;
                }
                d.a(number.doubleValue());
                bVar.a(number);
            }
        };
    }

    private o<Number> b(boolean z) {
        return z ? com.google.gson.internal.a.n.u : new o<Number>() { // from class: com.google.gson.d.3
            @Override // com.google.gson.o
            /* renamed from: a */
            public Float b(com.google.gson.stream.a aVar) throws IOException {
                if (aVar.f() == JsonToken.NULL) {
                    aVar.j();
                    return null;
                }
                return Float.valueOf((float) aVar.k());
            }

            @Override // com.google.gson.o
            public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
                if (number == null) {
                    bVar.f();
                    return;
                }
                d.a(number.floatValue());
                bVar.a(number);
            }
        };
    }

    static void a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private static o<Number> a(LongSerializationPolicy longSerializationPolicy) {
        return longSerializationPolicy == LongSerializationPolicy.DEFAULT ? com.google.gson.internal.a.n.t : new o<Number>() { // from class: com.google.gson.d.4
            @Override // com.google.gson.o
            /* renamed from: a */
            public Number b(com.google.gson.stream.a aVar) throws IOException {
                if (aVar.f() == JsonToken.NULL) {
                    aVar.j();
                    return null;
                }
                return Long.valueOf(aVar.l());
            }

            @Override // com.google.gson.o
            public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
                if (number == null) {
                    bVar.f();
                } else {
                    bVar.b(number.toString());
                }
            }
        };
    }

    private static o<AtomicLong> a(final o<Number> oVar) {
        return new o<AtomicLong>() { // from class: com.google.gson.d.5
            @Override // com.google.gson.o
            public void a(com.google.gson.stream.b bVar, AtomicLong atomicLong) throws IOException {
                o.this.a(bVar, Long.valueOf(atomicLong.get()));
            }

            @Override // com.google.gson.o
            /* renamed from: a */
            public AtomicLong b(com.google.gson.stream.a aVar) throws IOException {
                return new AtomicLong(((Number) o.this.b(aVar)).longValue());
            }
        }.a();
    }

    private static o<AtomicLongArray> b(final o<Number> oVar) {
        return new o<AtomicLongArray>() { // from class: com.google.gson.d.6
            @Override // com.google.gson.o
            public void a(com.google.gson.stream.b bVar, AtomicLongArray atomicLongArray) throws IOException {
                bVar.b();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    o.this.a(bVar, Long.valueOf(atomicLongArray.get(i)));
                }
                bVar.c();
            }

            @Override // com.google.gson.o
            /* renamed from: a */
            public AtomicLongArray b(com.google.gson.stream.a aVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(Long.valueOf(((Number) o.this.b(aVar)).longValue()));
                }
                aVar.b();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i = 0; i < size; i++) {
                    atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
                }
                return atomicLongArray;
            }
        }.a();
    }

    public <T> o<T> a(com.google.gson.b.a<T> aVar) {
        HashMap hashMap;
        o<T> oVar = (o<T>) this.c.get(aVar == null ? f3611a : aVar);
        if (oVar == null) {
            Map<com.google.gson.b.a<?>, a<?>> map = this.b.get();
            boolean z = false;
            if (map == null) {
                HashMap hashMap2 = new HashMap();
                this.b.set(hashMap2);
                hashMap = hashMap2;
                z = true;
            } else {
                hashMap = map;
            }
            oVar = hashMap.get(aVar);
            if (oVar == null) {
                try {
                    a<?> aVar2 = new a<>();
                    hashMap.put(aVar, aVar2);
                    for (p pVar : this.d) {
                        oVar = pVar.a(this, aVar);
                        if (oVar != null) {
                            aVar2.a((o<?>) oVar);
                            this.c.put(aVar, oVar);
                            hashMap.remove(aVar);
                            if (z) {
                                this.b.remove();
                            }
                        }
                    }
                    throw new IllegalArgumentException("GSON cannot handle " + aVar);
                } catch (Throwable th) {
                    hashMap.remove(aVar);
                    if (z) {
                        this.b.remove();
                    }
                    throw th;
                }
            }
        }
        return oVar;
    }

    public <T> o<T> a(p pVar, com.google.gson.b.a<T> aVar) {
        if (!this.d.contains(pVar)) {
            pVar = this.m;
        }
        boolean z = false;
        for (p pVar2 : this.d) {
            if (!z) {
                if (pVar2 == pVar) {
                    z = true;
                }
            } else {
                o<T> a2 = pVar2.a(this, aVar);
                if (a2 != null) {
                    return a2;
                }
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public <T> o<T> a(Class<T> cls) {
        return a((com.google.gson.b.a) com.google.gson.b.a.b(cls));
    }

    public String a(Object obj) {
        return obj == null ? a((i) j.f3689a) : a(obj, obj.getClass());
    }

    public String a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void a(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            a(obj, type, a(com.google.gson.internal.h.a(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public void a(Object obj, Type type, com.google.gson.stream.b bVar) throws JsonIOException {
        o a2 = a((com.google.gson.b.a) com.google.gson.b.a.a(type));
        boolean g = bVar.g();
        bVar.b(true);
        boolean h = bVar.h();
        bVar.c(this.i);
        boolean i = bVar.i();
        bVar.d(this.h);
        try {
            try {
                a2.a(bVar, obj);
            } catch (IOException e) {
                throw new JsonIOException(e);
            }
        } finally {
            bVar.b(g);
            bVar.c(h);
            bVar.d(i);
        }
    }

    public String a(i iVar) {
        StringWriter stringWriter = new StringWriter();
        a(iVar, stringWriter);
        return stringWriter.toString();
    }

    public void a(i iVar, Appendable appendable) throws JsonIOException {
        try {
            a(iVar, a(com.google.gson.internal.h.a(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public com.google.gson.stream.b a(Writer writer) throws IOException {
        if (this.j) {
            writer.write(")]}'\n");
        }
        com.google.gson.stream.b bVar = new com.google.gson.stream.b(writer);
        if (this.k) {
            bVar.c("  ");
        }
        bVar.d(this.h);
        return bVar;
    }

    public com.google.gson.stream.a a(Reader reader) {
        com.google.gson.stream.a aVar = new com.google.gson.stream.a(reader);
        aVar.a(this.l);
        return aVar;
    }

    public void a(i iVar, com.google.gson.stream.b bVar) throws JsonIOException {
        boolean g = bVar.g();
        bVar.b(true);
        boolean h = bVar.h();
        bVar.c(this.i);
        boolean i = bVar.i();
        bVar.d(this.h);
        try {
            try {
                com.google.gson.internal.h.a(iVar, bVar);
            } catch (IOException e) {
                throw new JsonIOException(e);
            }
        } finally {
            bVar.b(g);
            bVar.c(h);
            bVar.d(i);
        }
    }

    public <T> T a(String str, Class<T> cls) throws JsonSyntaxException {
        return (T) com.google.gson.internal.g.a((Class) cls).cast(a(str, (Type) cls));
    }

    public <T> T a(String str, Type type) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return (T) a((Reader) new StringReader(str), type);
    }

    public <T> T a(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        com.google.gson.stream.a a2 = a(reader);
        T t = (T) a(a2, type);
        a(t, a2);
        return t;
    }

    private static void a(Object obj, com.google.gson.stream.a aVar) {
        if (obj != null) {
            try {
                if (aVar.f() != JsonToken.END_DOCUMENT) {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
    }

    public <T> T a(com.google.gson.stream.a aVar, Type type) throws JsonIOException, JsonSyntaxException {
        boolean z = true;
        boolean q = aVar.q();
        aVar.a(true);
        try {
            try {
                aVar.f();
                z = false;
                T b = a((com.google.gson.b.a) com.google.gson.b.a.a(type)).b(aVar);
                aVar.a(q);
                return b;
            } catch (EOFException e) {
                if (!z) {
                    throw new JsonSyntaxException(e);
                }
                aVar.a(q);
                return null;
            } catch (IOException e2) {
                throw new JsonSyntaxException(e2);
            } catch (IllegalStateException e3) {
                throw new JsonSyntaxException(e3);
            }
        } catch (Throwable th) {
            aVar.a(q);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Gson.java */
    /* loaded from: classes2.dex */
    public static class a<T> extends o<T> {

        /* renamed from: a  reason: collision with root package name */
        private o<T> f3616a;

        a() {
        }

        public void a(o<T> oVar) {
            if (this.f3616a != null) {
                throw new AssertionError();
            }
            this.f3616a = oVar;
        }

        @Override // com.google.gson.o
        public T b(com.google.gson.stream.a aVar) throws IOException {
            if (this.f3616a == null) {
                throw new IllegalStateException();
            }
            return this.f3616a.b(aVar);
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, T t) throws IOException {
            if (this.f3616a == null) {
                throw new IllegalStateException();
            }
            this.f3616a.a(bVar, t);
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.h + "factories:" + this.d + ",instanceCreators:" + this.e + "}";
    }
}
