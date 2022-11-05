package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbwb;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbwe<T> extends zzbvc<T> {
    private final zzbvc<T> zzcpk;
    private final zzbuk zzcrg;
    private final Type zzcrh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbwe(zzbuk zzbukVar, zzbvc<T> zzbvcVar, Type type) {
        this.zzcrg = zzbukVar;
        this.zzcpk = zzbvcVar;
        this.zzcrh = type;
    }

    private Type zzb(Type type, Object obj) {
        return obj != null ? (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type : type;
    }

    @Override // com.google.android.gms.internal.zzbvc
    public void zza(zzbwj zzbwjVar, T t) throws IOException {
        zzbvc<T> zzbvcVar = this.zzcpk;
        Type zzb = zzb(this.zzcrh, t);
        if (zzb != this.zzcrh) {
            zzbvcVar = this.zzcrg.zza(zzbwg.zzl(zzb));
            if ((zzbvcVar instanceof zzbwb.zza) && !(this.zzcpk instanceof zzbwb.zza)) {
                zzbvcVar = this.zzcpk;
            }
        }
        zzbvcVar.zza(zzbwjVar, t);
    }

    @Override // com.google.android.gms.internal.zzbvc
    public T zzb(zzbwh zzbwhVar) throws IOException {
        return this.zzcpk.zzb(zzbwhVar);
    }
}
