package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
public abstract class zzyo extends zzyp {
    protected final Handler mHandler;
    protected final long zzavP;
    protected final Runnable zzavQ;
    protected boolean zzavR;
    protected final com.google.android.gms.common.util.zze zzuP;

    /* loaded from: classes2.dex */
    private class zza implements Runnable {
        private zza() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zzyo.this.zzavR = false;
            zzyo.this.zzaq(zzyo.this.zzF(zzyo.this.zzuP.elapsedRealtime()));
        }
    }

    public zzyo(String str, com.google.android.gms.common.util.zze zzeVar, String str2, String str3) {
        this(str, zzeVar, str2, str3, 1000L);
    }

    public zzyo(String str, com.google.android.gms.common.util.zze zzeVar, String str2, String str3, long j) {
        super(str, str2, str3);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.zzuP = zzeVar;
        this.zzavQ = new zza();
        this.zzavP = j;
        zzaq(false);
    }

    public zzyo(String str, String str2, String str3) {
        this(str, com.google.android.gms.common.util.zzi.zzzc(), str2, str3);
    }

    protected abstract boolean zzF(long j);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzaq(boolean z) {
        if (this.zzavR != z) {
            this.zzavR = z;
            if (z) {
                this.mHandler.postDelayed(this.zzavQ, this.zzavP);
            } else {
                this.mHandler.removeCallbacks(this.zzavQ);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzyp
    public void zzuz() {
        zzaq(false);
    }
}
