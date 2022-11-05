package com.google.android.gms.internal;

import com.google.firebase.auth.a;
import com.google.firebase.auth.c;
import com.google.firebase.auth.f;
import com.google.firebase.auth.g;
import com.google.firebase.auth.h;
/* loaded from: classes2.dex */
public class zzbna {
    public static zzbmx zza(a aVar) {
        com.google.android.gms.common.internal.zzac.zzw(aVar);
        if (g.class.isAssignableFrom(aVar.getClass())) {
            return g.a((g) aVar);
        }
        if (c.class.isAssignableFrom(aVar.getClass())) {
            return c.a((c) aVar);
        }
        if (h.class.isAssignableFrom(aVar.getClass())) {
            return h.a((h) aVar);
        }
        if (!f.class.isAssignableFrom(aVar.getClass())) {
            throw new IllegalArgumentException("Unsupported credential type.");
        }
        return f.a((f) aVar);
    }
}
