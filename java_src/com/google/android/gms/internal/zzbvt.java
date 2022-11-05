package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class zzbvt<E> extends zzbvc<Object> {
    public static final zzbvd zzcqF = new zzbvd() { // from class: com.google.android.gms.internal.zzbvt.1
        @Override // com.google.android.gms.internal.zzbvd
        public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
            Type zzadR = zzbwgVar.zzadR();
            if ((zzadR instanceof GenericArrayType) || ((zzadR instanceof Class) && ((Class) zzadR).isArray())) {
                Type zzh = zzbvj.zzh(zzadR);
                return new zzbvt(zzbukVar, zzbukVar.zza(zzbwg.zzl(zzh)), zzbvj.zzf(zzh));
            }
            return null;
        }
    };
    private final Class<E> zzcqG;
    private final zzbvc<E> zzcqH;

    public zzbvt(zzbuk zzbukVar, zzbvc<E> zzbvcVar, Class<E> cls) {
        this.zzcqH = new zzbwe(zzbukVar, zzbvcVar, cls);
        this.zzcqG = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.zzbvc
    public void zza(zzbwj zzbwjVar, Object obj) throws IOException {
        if (obj == null) {
            zzbwjVar.zzadP();
            return;
        }
        zzbwjVar.zzadL();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.zzcqH.zza(zzbwjVar, Array.get(obj, i));
        }
        zzbwjVar.zzadM();
    }

    @Override // com.google.android.gms.internal.zzbvc
    public Object zzb(zzbwh zzbwhVar) throws IOException {
        if (zzbwhVar.zzadF() == zzbwi.NULL) {
            zzbwhVar.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        zzbwhVar.beginArray();
        while (zzbwhVar.hasNext()) {
            arrayList.add(this.zzcqH.zzb(zzbwhVar));
        }
        zzbwhVar.endArray();
        Object newInstance = Array.newInstance((Class<?>) this.zzcqG, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }
}
