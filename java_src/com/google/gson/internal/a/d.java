package com.google.gson.internal.a;

import com.google.gson.o;
import com.google.gson.p;
/* compiled from: JsonAdapterAnnotationTypeAdapterFactory.java */
/* loaded from: classes2.dex */
public final class d implements p {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.gson.internal.c f3638a;

    public d(com.google.gson.internal.c cVar) {
        this.f3638a = cVar;
    }

    @Override // com.google.gson.p
    public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
        com.google.gson.a.b bVar = (com.google.gson.a.b) aVar.a().getAnnotation(com.google.gson.a.b.class);
        if (bVar == null) {
            return null;
        }
        return (o<T>) a(this.f3638a, dVar, aVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o<?> a(com.google.gson.internal.c cVar, com.google.gson.d dVar, com.google.gson.b.a<?> aVar, com.google.gson.a.b bVar) {
        o<?> lVar;
        Object a2 = cVar.a(com.google.gson.b.a.b(bVar.a())).a();
        if (a2 instanceof o) {
            lVar = (o) a2;
        } else if (a2 instanceof p) {
            lVar = ((p) a2).a(dVar, aVar);
        } else if ((a2 instanceof com.google.gson.n) || (a2 instanceof com.google.gson.h)) {
            lVar = new l<>(a2 instanceof com.google.gson.n ? (com.google.gson.n) a2 : null, a2 instanceof com.google.gson.h ? (com.google.gson.h) a2 : null, dVar, aVar, null);
        } else {
            throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference.");
        }
        if (lVar != null) {
            return lVar.a();
        }
        return lVar;
    }
}
