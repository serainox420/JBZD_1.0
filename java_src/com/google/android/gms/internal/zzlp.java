package com.google.android.gms.internal;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.internal.zzlq;
import com.google.android.gms.internal.zzpb;
@zzme
/* loaded from: classes.dex */
public abstract class zzlp extends zzpj {
    protected final Context mContext;
    protected final zzlq.zza zzPQ;
    protected final zzpb.zza zzPR;
    protected zzmn zzPS;
    protected final Object zzPU;
    protected final Object zzrJ;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class zza extends Exception {
        private final int zzPY;

        public zza(String str, int i) {
            super(str);
            this.zzPY = i;
        }

        public int getErrorCode() {
            return this.zzPY;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzlp(Context context, zzpb.zza zzaVar, zzlq.zza zzaVar2) {
        super(true);
        this.zzrJ = new Object();
        this.zzPU = new Object();
        this.mContext = context;
        this.zzPR = zzaVar;
        this.zzPS = zzaVar.zzWm;
        this.zzPQ = zzaVar2;
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
    }

    protected abstract zzpb zzR(int i);

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        synchronized (this.zzrJ) {
            zzpk.zzbf("AdRendererBackgroundTask started.");
            int i = this.zzPR.errorCode;
            try {
                zzh(SystemClock.elapsedRealtime());
            } catch (zza e) {
                int errorCode = e.getErrorCode();
                if (errorCode == 3 || errorCode == -1) {
                    zzpk.zzbg(e.getMessage());
                } else {
                    zzpk.zzbh(e.getMessage());
                }
                if (this.zzPS == null) {
                    this.zzPS = new zzmn(errorCode);
                } else {
                    this.zzPS = new zzmn(errorCode, this.zzPS.zzKL);
                }
                zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzlp.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzlp.this.onStop();
                    }
                });
                i = errorCode;
            }
            final zzpb zzR = zzR(i);
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzlp.2
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zzlp.this.zzrJ) {
                        zzlp.this.zzn(zzR);
                    }
                }
            });
        }
    }

    protected abstract void zzh(long j) throws zza;

    protected void zzn(zzpb zzpbVar) {
        this.zzPQ.zzb(zzpbVar);
    }
}
