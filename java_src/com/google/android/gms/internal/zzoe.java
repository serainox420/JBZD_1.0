package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.zzof;
import com.google.android.gms.internal.zzpb;
@zzme
/* loaded from: classes.dex */
public class zzoe extends zzpj implements zzog, zzoj {
    private final Context mContext;
    private final String zzKW;
    private final zzpb.zza zzPR;
    private final zzol zzVr;
    private final zzoj zzVs;
    private final String zzVt;
    private final zzjq zzVu;
    private final long zzVv;
    private zzof zzVx;
    private int zzVw = 0;
    private int zzPY = 3;
    private final Object zzrJ = new Object();

    public zzoe(Context context, String str, String str2, zzjq zzjqVar, zzpb.zza zzaVar, zzol zzolVar, zzoj zzojVar, long j) {
        this.mContext = context;
        this.zzKW = str;
        this.zzVt = str2;
        this.zzVu = zzjqVar;
        this.zzPR = zzaVar;
        this.zzVr = zzolVar;
        this.zzVs = zzojVar;
        this.zzVv = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzec zzecVar, zzkb zzkbVar) {
        this.zzVr.zzjO().zza((zzoj) this);
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzKW)) {
                zzkbVar.zza(zzecVar, this.zzVt, this.zzVu.zzKn);
            } else {
                zzkbVar.zzd(zzecVar, this.zzVt);
            }
        } catch (RemoteException e) {
            zzpk.zzc("Fail to load ad from adapter.", e);
            zza(this.zzKW, 0);
        }
    }

    private void zzk(long j) {
        while (true) {
            synchronized (this.zzrJ) {
                if (this.zzVw != 0) {
                    this.zzVx = new zzof.zza().zzl(com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime() - j).zzae(1 == this.zzVw ? 6 : this.zzPY).zzaP(this.zzKW).zzaQ(this.zzVu.zzKq).zzjK();
                    return;
                } else if (!zzf(j)) {
                    this.zzVx = new zzof.zza().zzae(this.zzPY).zzl(com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime() - j).zzaP(this.zzKW).zzaQ(this.zzVu.zzKq).zzjK();
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
    }

    @Override // com.google.android.gms.internal.zzoj
    public void zza(String str, int i) {
        synchronized (this.zzrJ) {
            this.zzVw = 2;
            this.zzPY = i;
            this.zzrJ.notify();
        }
    }

    @Override // com.google.android.gms.internal.zzoj
    public void zzaO(String str) {
        synchronized (this.zzrJ) {
            this.zzVw = 1;
            this.zzrJ.notify();
        }
    }

    @Override // com.google.android.gms.internal.zzog
    public void zzad(int i) {
        zza(this.zzKW, 0);
    }

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        if (this.zzVr == null || this.zzVr.zzjO() == null || this.zzVr.zzjN() == null) {
            return;
        }
        final zzoi zzjO = this.zzVr.zzjO();
        zzjO.zza((zzoj) null);
        zzjO.zza((zzog) this);
        final zzec zzecVar = this.zzPR.zzTi.zzRy;
        final zzkb zzjN = this.zzVr.zzjN();
        try {
            if (zzjN.isInitialized()) {
                zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzoe.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzoe.this.zza(zzecVar, zzjN);
                    }
                });
            } else {
                zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzoe.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            zzjN.zza(com.google.android.gms.dynamic.zzd.zzA(zzoe.this.mContext), zzecVar, (String) null, zzjO, zzoe.this.zzVt);
                        } catch (RemoteException e) {
                            String valueOf = String.valueOf(zzoe.this.zzKW);
                            zzpk.zzc(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "), e);
                            zzoe.this.zza(zzoe.this.zzKW, 0);
                        }
                    }
                });
            }
        } catch (RemoteException e) {
            zzpk.zzc("Fail to check if adapter is initialized.", e);
            zza(this.zzKW, 0);
        }
        zzk(com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime());
        zzjO.zza((zzoj) null);
        zzjO.zza((zzog) null);
        if (this.zzVw == 1) {
            this.zzVs.zzaO(this.zzKW);
        } else {
            this.zzVs.zza(this.zzKW, this.zzPY);
        }
    }

    protected boolean zzf(long j) {
        long elapsedRealtime = this.zzVv - (com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            this.zzPY = 4;
            return false;
        }
        try {
            this.zzrJ.wait(elapsedRealtime);
            return true;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            this.zzPY = 5;
            return false;
        }
    }

    public zzof zzjH() {
        zzof zzofVar;
        synchronized (this.zzrJ) {
            zzofVar = this.zzVx;
        }
        return zzofVar;
    }

    public zzjq zzjI() {
        return this.zzVu;
    }

    @Override // com.google.android.gms.internal.zzog
    public void zzjJ() {
        zza(this.zzPR.zzTi.zzRy, this.zzVr.zzjN());
    }
}
