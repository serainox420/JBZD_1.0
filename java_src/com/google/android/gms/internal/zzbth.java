package com.google.android.gms.internal;

import android.content.Context;
import com.google.firebase.a;
import com.google.firebase.b;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class zzbth {
    private static final AtomicReference<zzbth> zzbWM = new AtomicReference<>();

    zzbth(Context context) {
    }

    public static zzbth zzabY() {
        return zzbWM.get();
    }

    public static zzbth zzcw(Context context) {
        zzbWM.compareAndSet(null, new zzbth(context));
        return zzbWM.get();
    }

    public Set<String> zzabZ() {
        return Collections.emptySet();
    }

    public void zzg(a aVar) {
    }

    public b zzjC(String str) {
        return null;
    }
}
