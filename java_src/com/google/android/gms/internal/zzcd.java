package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
public interface zzcd {

    /* loaded from: classes2.dex */
    public interface zza {
        public static final zza zzrn = new zza() { // from class: com.google.android.gms.internal.zzcd.zza.1
            @Override // com.google.android.gms.internal.zzcd.zza
            public Handler zza(Looper looper) {
                return new Handler(looper);
            }
        };

        Handler zza(Looper looper);
    }
}
