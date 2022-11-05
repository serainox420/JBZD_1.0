package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public abstract class zzbvc<T> {
    public abstract void zza(zzbwj zzbwjVar, T t) throws IOException;

    public final zzbuq zzaO(T t) {
        try {
            zzbvy zzbvyVar = new zzbvy();
            zza(zzbvyVar, t);
            return zzbvyVar.zzadJ();
        } catch (IOException e) {
            throw new zzbur(e);
        }
    }

    public abstract T zzb(zzbwh zzbwhVar) throws IOException;
}
