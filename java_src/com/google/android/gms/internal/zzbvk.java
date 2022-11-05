package com.google.android.gms.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public final class zzbvk {
    private final Map<Type, zzbum<?>> zzcpo;

    public zzbvk(Map<Type, zzbum<?>> map) {
        this.zzcpo = map;
    }

    private <T> zzbvp<T> zzc(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.7
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    return new TreeSet();
                }
            } : EnumSet.class.isAssignableFrom(cls) ? new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.8
                /* JADX WARN: Type inference failed for: r0v19, types: [T, java.util.EnumSet] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    if (!(type instanceof ParameterizedType)) {
                        String valueOf = String.valueOf(type.toString());
                        throw new zzbur(valueOf.length() != 0 ? "Invalid EnumSet type: ".concat(valueOf) : new String("Invalid EnumSet type: "));
                    }
                    Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                    if (type2 instanceof Class) {
                        return EnumSet.noneOf((Class) type2);
                    }
                    String valueOf2 = String.valueOf(type.toString());
                    throw new zzbur(valueOf2.length() != 0 ? "Invalid EnumSet type: ".concat(valueOf2) : new String("Invalid EnumSet type: "));
                }
            } : Set.class.isAssignableFrom(cls) ? new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.9
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    return new LinkedHashSet();
                }
            } : Queue.class.isAssignableFrom(cls) ? new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.10
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedList] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    return new LinkedList();
                }
            } : new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.11
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    return new ArrayList();
                }
            };
        } else if (!Map.class.isAssignableFrom(cls)) {
            return null;
        } else {
            return SortedMap.class.isAssignableFrom(cls) ? new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.12
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    return new TreeMap();
                }
            } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(zzbwg.zzl(((ParameterizedType) type).getActualTypeArguments()[0]).zzadQ())) ? new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.3
                /* JADX WARN: Type inference failed for: r0v0, types: [T, com.google.android.gms.internal.zzbvo] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    return new zzbvo();
                }
            } : new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.2
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    return new LinkedHashMap();
                }
            };
        }
    }

    private <T> zzbvp<T> zzd(final Type type, final Class<? super T> cls) {
        return new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.4
            private final zzbvs zzcpR = zzbvs.zzadD();

            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            @Override // com.google.android.gms.internal.zzbvp
            public T zzady() {
                try {
                    return this.zzcpR.zze(cls);
                } catch (Exception e) {
                    String valueOf = String.valueOf(type);
                    throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 116).append("Unable to invoke no-args constructor for ").append(valueOf).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), e);
                }
            }
        };
    }

    private <T> zzbvp<T> zzk(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.6
                /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    try {
                        return declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        String valueOf = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 30).append("Failed to invoke ").append(valueOf).append(" with no args").toString(), e2);
                    } catch (InvocationTargetException e3) {
                        String valueOf2 = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(valueOf2).length() + 30).append("Failed to invoke ").append(valueOf2).append(" with no args").toString(), e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public String toString() {
        return this.zzcpo.toString();
    }

    public <T> zzbvp<T> zzb(zzbwg<T> zzbwgVar) {
        final Type zzadR = zzbwgVar.zzadR();
        Class<? super T> zzadQ = zzbwgVar.zzadQ();
        final zzbum<?> zzbumVar = this.zzcpo.get(zzadR);
        if (zzbumVar != null) {
            return new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.1
                /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    return zzbumVar.zza(zzadR);
                }
            };
        }
        final zzbum<?> zzbumVar2 = this.zzcpo.get(zzadQ);
        if (zzbumVar2 != null) {
            return new zzbvp<T>() { // from class: com.google.android.gms.internal.zzbvk.5
                /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
                @Override // com.google.android.gms.internal.zzbvp
                public T zzady() {
                    return zzbumVar2.zza(zzadR);
                }
            };
        }
        zzbvp<T> zzk = zzk(zzadQ);
        if (zzk != null) {
            return zzk;
        }
        zzbvp<T> zzc = zzc(zzadR, zzadQ);
        return zzc == null ? zzd(zzadR, zzadQ) : zzc;
    }
}
