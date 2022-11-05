package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzjb;
@zzme
/* loaded from: classes.dex */
public class zzjd extends zzet.zza {
    private final zziw zzJc;
    private com.google.android.gms.ads.internal.zzm zzJh;
    private final zziy zzJu;
    private zzli zzJv;
    private String zzJw;
    private final String zzts;

    public zzjd(Context context, String str, zzka zzkaVar, zzqh zzqhVar, com.google.android.gms.ads.internal.zze zzeVar) {
        this(str, new zziw(context, zzkaVar, zzqhVar, zzeVar));
    }

    zzjd(String str, zziw zziwVar) {
        this.zzts = str;
        this.zzJc = zziwVar;
        this.zzJu = new zziy();
        com.google.android.gms.ads.internal.zzw.zzdb().zza(zziwVar);
    }

    private void zzgK() {
        if (this.zzJh == null || this.zzJv == null) {
            return;
        }
        this.zzJh.zza(this.zzJv, this.zzJw);
    }

    static boolean zzp(zzec zzecVar) {
        return zziz.zzj(zzecVar).contains("gw");
    }

    static boolean zzq(zzec zzecVar) {
        return zziz.zzj(zzecVar).contains("_ad");
    }

    void abort() {
        if (this.zzJh != null) {
            return;
        }
        this.zzJh = this.zzJc.zzag(this.zzts);
        this.zzJu.zzc(this.zzJh);
        zzgK();
    }

    @Override // com.google.android.gms.internal.zzet
    public void destroy() throws RemoteException {
        if (this.zzJh != null) {
            this.zzJh.destroy();
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public String getMediationAdapterClassName() throws RemoteException {
        if (this.zzJh != null) {
            return this.zzJh.getMediationAdapterClassName();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean isLoading() throws RemoteException {
        return this.zzJh != null && this.zzJh.isLoading();
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean isReady() throws RemoteException {
        return this.zzJh != null && this.zzJh.isReady();
    }

    @Override // com.google.android.gms.internal.zzet
    public void pause() throws RemoteException {
        if (this.zzJh != null) {
            this.zzJh.pause();
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void resume() throws RemoteException {
        if (this.zzJh != null) {
            this.zzJh.resume();
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void setManualImpressionsEnabled(boolean z) throws RemoteException {
        abort();
        if (this.zzJh != null) {
            this.zzJh.setManualImpressionsEnabled(z);
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void showInterstitial() throws RemoteException {
        if (this.zzJh != null) {
            this.zzJh.showInterstitial();
        } else {
            zzpk.zzbh("Interstitial ad must be loaded before showInterstitial().");
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void stopLoading() throws RemoteException {
        if (this.zzJh != null) {
            this.zzJh.stopLoading();
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzeg zzegVar) throws RemoteException {
        if (this.zzJh != null) {
            this.zzJh.zza(zzegVar);
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzeo zzeoVar) throws RemoteException {
        this.zzJu.zzIY = zzeoVar;
        if (this.zzJh != null) {
            this.zzJu.zzc(this.zzJh);
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzep zzepVar) throws RemoteException {
        this.zzJu.zztk = zzepVar;
        if (this.zzJh != null) {
            this.zzJu.zzc(this.zzJh);
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzev zzevVar) throws RemoteException {
        this.zzJu.zzIV = zzevVar;
        if (this.zzJh != null) {
            this.zzJu.zzc(this.zzJh);
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzex zzexVar) throws RemoteException {
        abort();
        if (this.zzJh != null) {
            this.zzJh.zza(zzexVar);
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzfc zzfcVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzft zzftVar) {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzgp zzgpVar) throws RemoteException {
        this.zzJu.zzIX = zzgpVar;
        if (this.zzJh != null) {
            this.zzJu.zzc(this.zzJh);
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzle zzleVar) throws RemoteException {
        this.zzJu.zzIW = zzleVar;
        if (this.zzJh != null) {
            this.zzJu.zzc(this.zzJh);
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzli zzliVar, String str) throws RemoteException {
        this.zzJv = zzliVar;
        this.zzJw = str;
        zzgK();
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zznw zznwVar) {
        this.zzJu.zzIZ = zznwVar;
        if (this.zzJh != null) {
            this.zzJu.zzc(this.zzJh);
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean zzb(zzec zzecVar) throws RemoteException {
        if (!zzp(zzecVar)) {
            abort();
        }
        if (zziz.zzl(zzecVar)) {
            abort();
        }
        if (zzecVar.zzza != null) {
            abort();
        }
        if (this.zzJh != null) {
            return this.zzJh.zzb(zzecVar);
        }
        zziz zzdb = com.google.android.gms.ads.internal.zzw.zzdb();
        if (zzq(zzecVar)) {
            zzdb.zzb(zzecVar, this.zzts);
        }
        zzjb.zza zza = zzdb.zza(zzecVar, this.zzts);
        if (zza == null) {
            abort();
            zzjc.zzgC().zzgG();
            return this.zzJh.zzb(zzecVar);
        }
        if (!zza.zzJl) {
            zza.load();
            zzjc.zzgC().zzgG();
        } else {
            zzjc.zzgC().zzgF();
        }
        this.zzJh = zza.zzJh;
        zza.zzJj.zza(this.zzJu);
        this.zzJu.zzc(this.zzJh);
        zzgK();
        return zza.zzJm;
    }

    @Override // com.google.android.gms.internal.zzet
    public IObjectWrapper zzbB() throws RemoteException {
        if (this.zzJh != null) {
            return this.zzJh.zzbB();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzet
    public zzeg zzbC() throws RemoteException {
        if (this.zzJh != null) {
            return this.zzJh.zzbC();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zzbE() throws RemoteException {
        if (this.zzJh != null) {
            this.zzJh.zzbE();
        } else {
            zzpk.zzbh("Interstitial ad must be loaded before pingManualTrackingUrl().");
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public zzfa zzbF() {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }
}
