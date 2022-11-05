package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes2.dex */
public final class zzabh<L> {
    private volatile L mListener;
    private final zza zzaCX;
    private final zzb<L> zzaCY;

    /* loaded from: classes2.dex */
    private final class zza extends Handler {
        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z = true;
            if (message.what != 1) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zzax(z);
            zzabh.this.zzb((zzc) message.obj);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb<L> {
        private final L mListener;
        private final String zzaDa;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(L l, String str) {
            this.mListener = l;
            this.zzaDa = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            return this.mListener == zzbVar.mListener && this.zzaDa.equals(zzbVar.zzaDa);
        }

        public int hashCode() {
            return (System.identityHashCode(this.mListener) * 31) + this.zzaDa.hashCode();
        }
    }

    /* loaded from: classes2.dex */
    public interface zzc<L> {
        void zzs(L l);

        void zzwc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabh(Looper looper, L l, String str) {
        this.zzaCX = new zza(looper);
        this.mListener = (L) com.google.android.gms.common.internal.zzac.zzb(l, "Listener must not be null");
        this.zzaCY = new zzb<>(l, com.google.android.gms.common.internal.zzac.zzdr(str));
    }

    public void clear() {
        this.mListener = null;
    }

    public void zza(zzc<? super L> zzcVar) {
        com.google.android.gms.common.internal.zzac.zzb(zzcVar, "Notifier must not be null");
        this.zzaCX.sendMessage(this.zzaCX.obtainMessage(1, zzcVar));
    }

    void zzb(zzc<? super L> zzcVar) {
        Object obj = (L) this.mListener;
        if (obj == null) {
            zzcVar.zzwc();
            return;
        }
        try {
            zzcVar.zzs(obj);
        } catch (RuntimeException e) {
            zzcVar.zzwc();
            throw e;
        }
    }

    public boolean zztK() {
        return this.mListener != null;
    }

    public zzb<L> zzwW() {
        return this.zzaCY;
    }
}
