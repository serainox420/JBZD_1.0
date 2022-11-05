package com.google.gson.internal.a;

import com.google.gson.internal.a.i;
import com.google.gson.o;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypeAdapterRuntimeTypeWrapper.java */
/* loaded from: classes2.dex */
public final class m<T> extends o<T> {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.gson.d f3651a;
    private final o<T> b;
    private final Type c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(com.google.gson.d dVar, o<T> oVar, Type type) {
        this.f3651a = dVar;
        this.b = oVar;
        this.c = type;
    }

    @Override // com.google.gson.o
    public T b(com.google.gson.stream.a aVar) throws IOException {
        return this.b.b(aVar);
    }

    @Override // com.google.gson.o
    public void a(com.google.gson.stream.b bVar, T t) throws IOException {
        o<T> oVar = this.b;
        Type a2 = a(this.c, t);
        if (a2 != this.c) {
            oVar = this.f3651a.a((com.google.gson.b.a) com.google.gson.b.a.a(a2));
            if ((oVar instanceof i.a) && !(this.b instanceof i.a)) {
                oVar = this.b;
            }
        }
        oVar.a(bVar, t);
    }

    private Type a(Type type, Object obj) {
        if (obj != null) {
            if (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) {
                return obj.getClass();
            }
            return type;
        }
        return type;
    }
}
