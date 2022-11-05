package com.google.gson.internal;

import com.google.gson.JsonIOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
/* compiled from: ConstructorConstructor.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Type, com.google.gson.e<?>> f3665a;

    public c(Map<Type, com.google.gson.e<?>> map) {
        this.f3665a = map;
    }

    public <T> f<T> a(com.google.gson.b.a<T> aVar) {
        final Type b = aVar.b();
        Class<? super T> a2 = aVar.a();
        final com.google.gson.e<?> eVar = this.f3665a.get(b);
        if (eVar != null) {
            return new f<T>() { // from class: com.google.gson.internal.c.1
                /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.f
                public T a() {
                    return eVar.a(b);
                }
            };
        }
        final com.google.gson.e<?> eVar2 = this.f3665a.get(a2);
        if (eVar2 != null) {
            return new f<T>() { // from class: com.google.gson.internal.c.7
                /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.f
                public T a() {
                    return eVar2.a(b);
                }
            };
        }
        f<T> a3 = a(a2);
        if (a3 == null) {
            f<T> a4 = a(b, a2);
            return a4 == null ? b(b, a2) : a4;
        }
        return a3;
    }

    private <T> f<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new f<T>() { // from class: com.google.gson.internal.c.8
                /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.f
                public T a() {
                    try {
                        return declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e2);
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    private <T> f<T> a(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new f<T>() { // from class: com.google.gson.internal.c.9
                    /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
                    @Override // com.google.gson.internal.f
                    public T a() {
                        return new TreeSet();
                    }
                };
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new f<T>() { // from class: com.google.gson.internal.c.10
                    /* JADX WARN: Type inference failed for: r0v9, types: [T, java.util.EnumSet] */
                    @Override // com.google.gson.internal.f
                    public T a() {
                        if (type instanceof ParameterizedType) {
                            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                            if (type2 instanceof Class) {
                                return EnumSet.noneOf((Class) type2);
                            }
                            throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                        }
                        throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                    }
                };
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new f<T>() { // from class: com.google.gson.internal.c.11
                    /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
                    @Override // com.google.gson.internal.f
                    public T a() {
                        return new LinkedHashSet();
                    }
                };
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new f<T>() { // from class: com.google.gson.internal.c.12
                    /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayDeque] */
                    @Override // com.google.gson.internal.f
                    public T a() {
                        return new ArrayDeque();
                    }
                };
            }
            return new f<T>() { // from class: com.google.gson.internal.c.13
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
                @Override // com.google.gson.internal.f
                public T a() {
                    return new ArrayList();
                }
            };
        } else if (Map.class.isAssignableFrom(cls)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                return new f<T>() { // from class: com.google.gson.internal.c.14
                    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.ConcurrentSkipListMap, T] */
                    @Override // com.google.gson.internal.f
                    public T a() {
                        return new ConcurrentSkipListMap();
                    }
                };
            }
            if (ConcurrentMap.class.isAssignableFrom(cls)) {
                return new f<T>() { // from class: com.google.gson.internal.c.2
                    /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.concurrent.ConcurrentHashMap] */
                    @Override // com.google.gson.internal.f
                    public T a() {
                        return new ConcurrentHashMap();
                    }
                };
            }
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new f<T>() { // from class: com.google.gson.internal.c.3
                    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
                    @Override // com.google.gson.internal.f
                    public T a() {
                        return new TreeMap();
                    }
                };
            }
            if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(com.google.gson.b.a.a(((ParameterizedType) type).getActualTypeArguments()[0]).a())) {
                return new f<T>() { // from class: com.google.gson.internal.c.4
                    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
                    @Override // com.google.gson.internal.f
                    public T a() {
                        return new LinkedHashMap();
                    }
                };
            }
            return new f<T>() { // from class: com.google.gson.internal.c.5
                /* JADX WARN: Type inference failed for: r0v0, types: [T, com.google.gson.internal.LinkedTreeMap] */
                @Override // com.google.gson.internal.f
                public T a() {
                    return new LinkedTreeMap();
                }
            };
        } else {
            return null;
        }
    }

    private <T> f<T> b(final Type type, final Class<? super T> cls) {
        return new f<T>() { // from class: com.google.gson.internal.c.6
            private final i d = i.a();

            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            @Override // com.google.gson.internal.f
            public T a() {
                try {
                    return this.d.a(cls);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Register an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    public String toString() {
        return this.f3665a.toString();
    }
}
