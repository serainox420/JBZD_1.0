package com.google.android.gms.internal;
@zzme
/* loaded from: classes.dex */
public class zzel {
    private static final Object zztX = new Object();
    private static zzel zzzT;
    private final zzqe zzzU = new zzqe();
    private final zzek zzzV = new zzek(new zzeb(), new zzea(), new zzfj(), new zzht(), new zzny(), new zzlk(), new zzky());

    static {
        zza(new zzel());
    }

    protected zzel() {
    }

    protected static void zza(zzel zzelVar) {
        synchronized (zztX) {
            zzzT = zzelVar;
        }
    }

    private static zzel zzeS() {
        zzel zzelVar;
        synchronized (zztX) {
            zzelVar = zzzT;
        }
        return zzelVar;
    }

    public static zzqe zzeT() {
        return zzeS().zzzU;
    }

    public static zzek zzeU() {
        return zzeS().zzzV;
    }
}
