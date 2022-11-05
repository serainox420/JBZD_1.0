package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public final class zzaqe {
    private static zzaqe zzaXl;
    private final zzaqb zzaXm = new zzaqb();
    private final zzaqc zzaXn = new zzaqc();

    static {
        zza(new zzaqe());
    }

    private zzaqe() {
    }

    private static zzaqe zzDD() {
        zzaqe zzaqeVar;
        synchronized (zzaqe.class) {
            zzaqeVar = zzaXl;
        }
        return zzaqeVar;
    }

    public static zzaqb zzDE() {
        return zzDD().zzaXm;
    }

    public static zzaqc zzDF() {
        return zzDD().zzaXn;
    }

    protected static void zza(zzaqe zzaqeVar) {
        synchronized (zzaqe.class) {
            zzaXl = zzaqeVar;
        }
    }
}
