package com.google.gson.internal;

import com.google.gson.o;
import com.google.gson.p;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
/* compiled from: Excluder.java */
/* loaded from: classes2.dex */
public final class d implements p, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final d f3680a = new d();
    private boolean e;
    private double b = -1.0d;
    private int c = 136;
    private boolean d = true;
    private List<com.google.gson.a> f = Collections.emptyList();
    private List<com.google.gson.a> g = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public d clone() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.gson.p
    public <T> o<T> a(final com.google.gson.d dVar, final com.google.gson.b.a<T> aVar) {
        Class<? super T> a2 = aVar.a();
        final boolean a3 = a((Class<?>) a2, true);
        final boolean a4 = a((Class<?>) a2, false);
        if (a3 || a4) {
            return new o<T>() { // from class: com.google.gson.internal.d.1
                private o<T> f;

                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.google.gson.o
                public T b(com.google.gson.stream.a aVar2) throws IOException {
                    if (a4) {
                        aVar2.n();
                        return null;
                    }
                    return b().b(aVar2);
                }

                @Override // com.google.gson.o
                public void a(com.google.gson.stream.b bVar, T t) throws IOException {
                    if (a3) {
                        bVar.f();
                    } else {
                        b().a(bVar, t);
                    }
                }

                private o<T> b() {
                    o<T> oVar = this.f;
                    if (oVar != 0) {
                        return oVar;
                    }
                    o<T> a5 = dVar.a(d.this, aVar);
                    this.f = a5;
                    return a5;
                }
            };
        }
        return null;
    }

    public boolean a(Field field, boolean z) {
        com.google.gson.a.a aVar;
        if ((this.c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.b == -1.0d || a((com.google.gson.a.d) field.getAnnotation(com.google.gson.a.d.class), (com.google.gson.a.e) field.getAnnotation(com.google.gson.a.e.class))) && !field.isSynthetic()) {
            if (this.e && ((aVar = (com.google.gson.a.a) field.getAnnotation(com.google.gson.a.a.class)) == null || (!z ? !aVar.b() : !aVar.a()))) {
                return true;
            }
            if ((this.d || !b(field.getType())) && !a(field.getType())) {
                List<com.google.gson.a> list = z ? this.f : this.g;
                if (!list.isEmpty()) {
                    com.google.gson.b bVar = new com.google.gson.b(field);
                    for (com.google.gson.a aVar2 : list) {
                        if (aVar2.a(bVar)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    public boolean a(Class<?> cls, boolean z) {
        if (this.b == -1.0d || a((com.google.gson.a.d) cls.getAnnotation(com.google.gson.a.d.class), (com.google.gson.a.e) cls.getAnnotation(com.google.gson.a.e.class))) {
            if ((this.d || !b(cls)) && !a(cls)) {
                for (com.google.gson.a aVar : z ? this.f : this.g) {
                    if (aVar.a(cls)) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    private boolean a(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean b(Class<?> cls) {
        return cls.isMemberClass() && !c(cls);
    }

    private boolean c(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean a(com.google.gson.a.d dVar, com.google.gson.a.e eVar) {
        return a(dVar) && a(eVar);
    }

    private boolean a(com.google.gson.a.d dVar) {
        return dVar == null || dVar.a() <= this.b;
    }

    private boolean a(com.google.gson.a.e eVar) {
        return eVar == null || eVar.a() > this.b;
    }
}
