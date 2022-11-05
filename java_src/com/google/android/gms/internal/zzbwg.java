package com.google.android.gms.internal;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* loaded from: classes2.dex */
public class zzbwg<T> {
    final Type zzcrh;
    final Class<? super T> zzcsl;
    final int zzcsm;

    protected zzbwg() {
        this.zzcrh = zzp(getClass());
        this.zzcsl = (Class<? super T>) zzbvj.zzf(this.zzcrh);
        this.zzcsm = this.zzcrh.hashCode();
    }

    zzbwg(Type type) {
        this.zzcrh = zzbvj.zze((Type) zzbvi.zzw(type));
        this.zzcsl = (Class<? super T>) zzbvj.zzf(this.zzcrh);
        this.zzcsm = this.zzcrh.hashCode();
    }

    public static zzbwg<?> zzl(Type type) {
        return new zzbwg<>(type);
    }

    static Type zzp(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        return zzbvj.zze(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
    }

    public static <T> zzbwg<T> zzq(Class<T> cls) {
        return new zzbwg<>(cls);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzbwg) && zzbvj.zza(this.zzcrh, ((zzbwg) obj).zzcrh);
    }

    public final int hashCode() {
        return this.zzcsm;
    }

    public final String toString() {
        return zzbvj.zzg(this.zzcrh);
    }

    public final Class<? super T> zzadQ() {
        return this.zzcsl;
    }

    public final Type zzadR() {
        return this.zzcrh;
    }
}
