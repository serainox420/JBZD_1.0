package com.google.android.gms.internal;

import com.google.android.gms.nearby.messages.MessageListener;
import com.google.android.gms.nearby.messages.StatusCallback;
/* loaded from: classes2.dex */
class zzayr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C> zzayj<C> zza(C c, zzabh<C> zzabhVar) {
        if (c instanceof StatusCallback) {
            return new zzayo(zzabhVar);
        }
        if (c instanceof MessageListener) {
            return new zzayk(zzabhVar);
        }
        String valueOf = String.valueOf(c.getClass().getName());
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown callback of type ".concat(valueOf) : new String("Unknown callback of type "));
    }
}
