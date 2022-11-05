package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public final class zzbvw implements zzbvd {
    private final zzbvk zzcpc;

    public zzbvw(zzbvk zzbvkVar) {
        this.zzcpc = zzbvkVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbvc<?> zza(zzbvk zzbvkVar, zzbuk zzbukVar, zzbwg<?> zzbwgVar, zzbve zzbveVar) {
        Class<?> value = zzbveVar.value();
        if (zzbvc.class.isAssignableFrom(value)) {
            return (zzbvc) zzbvkVar.zzb(zzbwg.zzq(value)).zzady();
        }
        if (!zzbvd.class.isAssignableFrom(value)) {
            throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
        }
        return ((zzbvd) zzbvkVar.zzb(zzbwg.zzq(value)).zzady()).zza(zzbukVar, zzbwgVar);
    }

    @Override // com.google.android.gms.internal.zzbvd
    public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
        zzbve zzbveVar = (zzbve) zzbwgVar.zzadQ().getAnnotation(zzbve.class);
        if (zzbveVar == null) {
            return null;
        }
        return (zzbvc<T>) zza(this.zzcpc, zzbukVar, zzbwgVar, zzbveVar);
    }
}
