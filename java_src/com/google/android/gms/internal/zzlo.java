package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzlq;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzqx;
import java.util.concurrent.atomic.AtomicBoolean;
@zzme
/* loaded from: classes.dex */
public abstract class zzlo implements zzpq<Void>, zzqx.zza {
    protected final Context mContext;
    protected final zzqw zzIs;
    protected final zzlq.zza zzPQ;
    protected final zzpb.zza zzPR;
    protected zzmn zzPS;
    private Runnable zzPT;
    protected final Object zzPU = new Object();
    private AtomicBoolean zzPV = new AtomicBoolean(true);

    /* JADX INFO: Access modifiers changed from: protected */
    public zzlo(Context context, zzpb.zza zzaVar, zzqw zzqwVar, zzlq.zza zzaVar2) {
        this.mContext = context;
        this.zzPR = zzaVar;
        this.zzPS = this.zzPR.zzWm;
        this.zzIs = zzqwVar;
        this.zzPQ = zzaVar2;
    }

    private zzpb zzR(int i) {
        zzmk zzmkVar = this.zzPR.zzTi;
        return new zzpb(zzmkVar.zzRy, this.zzIs, this.zzPS.zzKF, i, this.zzPS.zzKG, this.zzPS.zzSp, this.zzPS.orientation, this.zzPS.zzKL, zzmkVar.zzRB, this.zzPS.zzSn, null, null, null, null, null, this.zzPS.zzSo, this.zzPR.zzvr, this.zzPS.zzSm, this.zzPR.zzWg, this.zzPS.zzSr, this.zzPS.zzSs, this.zzPR.zzWa, null, this.zzPS.zzSC, this.zzPS.zzSD, this.zzPS.zzSE, this.zzPS.zzSF, this.zzPS.zzSG, null, this.zzPS.zzKI, this.zzPS.zzSJ);
    }

    @Override // com.google.android.gms.internal.zzpq
    public void cancel() {
        if (!this.zzPV.getAndSet(false)) {
            return;
        }
        this.zzIs.stopLoading();
        com.google.android.gms.ads.internal.zzw.zzcO().zzl(this.zzIs);
        zzQ(-1);
        zzpo.zzXC.removeCallbacks(this.zzPT);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzQ(int i) {
        if (i != -2) {
            this.zzPS = new zzmn(i, this.zzPS.zzKL);
        }
        this.zzIs.zzlq();
        this.zzPQ.zzb(zzR(i));
    }

    @Override // com.google.android.gms.internal.zzqx.zza
    public void zza(zzqw zzqwVar, boolean z) {
        int i = 0;
        zzpk.zzbf("WebView finished loading.");
        if (!this.zzPV.getAndSet(false)) {
            return;
        }
        if (z) {
            i = -2;
        }
        zzQ(i);
        zzpo.zzXC.removeCallbacks(this.zzPT);
    }

    @Override // com.google.android.gms.internal.zzpq
    /* renamed from: zziN */
    public final Void zziP() {
        com.google.android.gms.common.internal.zzac.zzdj("Webview render task needs to be called on UI thread.");
        this.zzPT = new Runnable() { // from class: com.google.android.gms.internal.zzlo.1
            @Override // java.lang.Runnable
            public void run() {
                if (!zzlo.this.zzPV.get()) {
                    return;
                }
                zzpk.e("Timed out waiting for WebView to finish loading.");
                zzlo.this.cancel();
            }
        };
        zzpo.zzXC.postDelayed(this.zzPT, zzgd.zzDM.get().longValue());
        zziO();
        return null;
    }

    protected abstract void zziO();
}
