package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.internal.zzabh;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class zzabi {
    private final Set<zzabh<?>> zzasL = Collections.newSetFromMap(new WeakHashMap());

    public static <L> zzabh.zzb<L> zza(L l, String str) {
        com.google.android.gms.common.internal.zzac.zzb(l, "Listener must not be null");
        com.google.android.gms.common.internal.zzac.zzb(str, "Listener type must not be null");
        com.google.android.gms.common.internal.zzac.zzh(str, "Listener type must not be empty");
        return new zzabh.zzb<>(l, str);
    }

    public static <L> zzabh<L> zzb(L l, Looper looper, String str) {
        com.google.android.gms.common.internal.zzac.zzb(l, "Listener must not be null");
        com.google.android.gms.common.internal.zzac.zzb(looper, "Looper must not be null");
        com.google.android.gms.common.internal.zzac.zzb(str, "Listener type must not be null");
        return new zzabh<>(looper, l, str);
    }

    public void release() {
        for (zzabh<?> zzabhVar : this.zzasL) {
            zzabhVar.clear();
        }
        this.zzasL.clear();
    }

    public <L> zzabh<L> zza(L l, Looper looper, String str) {
        zzabh<L> zzb = zzb(l, looper, str);
        this.zzasL.add(zzb);
        return zzb;
    }

    public <L> zzabh<L> zzb(L l, Looper looper) {
        return zza(l, looper, "NO_TYPE");
    }
}
