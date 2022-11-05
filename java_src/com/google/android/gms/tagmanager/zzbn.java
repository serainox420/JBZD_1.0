package com.google.android.gms.tagmanager;
/* loaded from: classes2.dex */
interface zzbn<T> {

    /* loaded from: classes2.dex */
    public enum zza {
        NOT_AVAILABLE,
        IO_ERROR,
        SERVER_ERROR,
        SERVER_UNAVAILABLE_ERROR
    }

    void onSuccess(T t);

    void zza(zza zzaVar);
}
