package com.google.android.gms.internal;

import java.lang.Thread;
/* loaded from: classes2.dex */
public interface zzbpt {
    public static final zzbpt zzcgl = new zzbpt() { // from class: com.google.android.gms.internal.zzbpt.1
        @Override // com.google.android.gms.internal.zzbpt
        public void zza(Thread thread, String str) {
            thread.setName(str);
        }

        @Override // com.google.android.gms.internal.zzbpt
        public void zza(Thread thread, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            thread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
        }

        @Override // com.google.android.gms.internal.zzbpt
        public void zza(Thread thread, boolean z) {
            thread.setDaemon(z);
        }
    };

    void zza(Thread thread, String str);

    void zza(Thread thread, Thread.UncaughtExceptionHandler uncaughtExceptionHandler);

    void zza(Thread thread, boolean z);
}
