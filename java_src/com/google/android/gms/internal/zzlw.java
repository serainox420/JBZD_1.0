package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzqp;
import java.lang.ref.WeakReference;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
@zzme
/* loaded from: classes.dex */
public class zzlw {
    private final Context mContext;
    private final com.google.android.gms.ads.internal.zzs zzGJ;
    private final zzaw zzGP;
    private zzjg zzQo;
    private zzji.zze zzQp;
    private zzjf zzQq;
    private boolean zzQr;
    private final zzqh zzuc;
    private static final long zzQl = TimeUnit.SECONDS.toMillis(60);
    private static final Object zztX = new Object();
    private static boolean zzQm = false;
    private static zzji zzQn = null;

    /* loaded from: classes2.dex */
    public static abstract class zza {
        public abstract void zze(zzjj zzjjVar);

        public void zzjd() {
        }
    }

    public zzlw(Context context, com.google.android.gms.ads.internal.zzs zzsVar, zzaw zzawVar, zzqh zzqhVar) {
        this.zzQr = false;
        this.mContext = context;
        this.zzGJ = zzsVar;
        this.zzGP = zzawVar;
        this.zzuc = zzqhVar;
        this.zzQr = zzgd.zzEm.get().booleanValue();
    }

    public zzlw(Context context, zzpb.zza zzaVar, com.google.android.gms.ads.internal.zzs zzsVar, zzaw zzawVar) {
        this(context, zzsVar, zzawVar, (zzaVar == null || zzaVar.zzTi == null) ? null : zzaVar.zzTi.zzvn);
    }

    private void zziV() {
        synchronized (zztX) {
            if (!zzQm) {
                zzQn = new zzji(this.mContext.getApplicationContext() != null ? this.mContext.getApplicationContext() : this.mContext, this.zzuc, zzgd.zzEj.get(), new zzpt<zzjf>() { // from class: com.google.android.gms.internal.zzlw.3
                    @Override // com.google.android.gms.internal.zzpt
                    /* renamed from: zza */
                    public void zzd(zzjf zzjfVar) {
                        com.google.android.gms.ads.internal.zzs zzsVar = (com.google.android.gms.ads.internal.zzs) new WeakReference(zzlw.this.zzGJ).get();
                        zzjfVar.zza(zzsVar, zzsVar, zzsVar, zzsVar, false, null, null, null, null);
                    }
                }, new zzji.zzb());
                zzQm = true;
            }
        }
    }

    private void zziW() {
        this.zzQp = new zzji.zze(zzjb().zzc(this.zzGP));
    }

    private void zziX() {
        this.zzQo = new zzjg();
    }

    private void zziY() throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        this.zzQq = zziZ().zza(this.mContext, this.zzuc, zzgd.zzEj.get(), this.zzGP, this.zzGJ.zzby()).get(zzQl, TimeUnit.MILLISECONDS);
        this.zzQq.zza(this.zzGJ, this.zzGJ, this.zzGJ, this.zzGJ, false, null, null, null, null);
    }

    public void zza(final zza zzaVar) {
        if (this.zzQr) {
            zzji.zze zzjc = zzjc();
            if (zzjc == null) {
                zzpk.zzbh("SharedJavascriptEngine not initialized");
                return;
            } else {
                zzjc.zza(new zzqp.zzc<zzjj>(this) { // from class: com.google.android.gms.internal.zzlw.1
                    @Override // com.google.android.gms.internal.zzqp.zzc
                    /* renamed from: zzb */
                    public void zzd(zzjj zzjjVar) {
                        zzaVar.zze(zzjjVar);
                    }
                }, new zzqp.zza(this) { // from class: com.google.android.gms.internal.zzlw.2
                    @Override // com.google.android.gms.internal.zzqp.zza
                    public void run() {
                        zzaVar.zzjd();
                    }
                });
                return;
            }
        }
        zzjf zzja = zzja();
        if (zzja == null) {
            zzpk.zzbh("JavascriptEngine not initialized");
        } else {
            zzaVar.zze(zzja);
        }
    }

    public void zziT() {
        if (this.zzQr) {
            zziV();
        } else {
            zziX();
        }
    }

    public void zziU() throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        if (this.zzQr) {
            zziW();
        } else {
            zziY();
        }
    }

    protected zzjg zziZ() {
        return this.zzQo;
    }

    protected zzjf zzja() {
        return this.zzQq;
    }

    protected zzji zzjb() {
        return zzQn;
    }

    protected zzji.zze zzjc() {
        return this.zzQp;
    }
}
