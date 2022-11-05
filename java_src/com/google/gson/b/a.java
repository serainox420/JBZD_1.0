package com.google.gson.b;

import com.google.gson.internal.b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* compiled from: TypeToken.java */
/* loaded from: classes2.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final Class<? super T> f3610a;
    final Type b;
    final int c;

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        this.b = a(getClass());
        this.f3610a = (Class<? super T>) b.e(this.b);
        this.c = this.b.hashCode();
    }

    a(Type type) {
        this.b = b.d((Type) com.google.gson.internal.a.a(type));
        this.f3610a = (Class<? super T>) b.e(this.b);
        this.c = this.b.hashCode();
    }

    static Type a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        return b.d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public final Class<? super T> a() {
        return this.f3610a;
    }

    public final Type b() {
        return this.b;
    }

    public final int hashCode() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b.a(this.b, ((a) obj).b);
    }

    public final String toString() {
        return b.f(this.b);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> b(Class<T> cls) {
        return new a<>(cls);
    }
}
