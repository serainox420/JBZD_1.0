package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzet;
/* loaded from: classes2.dex */
public class zzfl extends zzet.zza {
    private zzep zztk;

    @Override // com.google.android.gms.internal.zzet
    public void destroy() {
    }

    @Override // com.google.android.gms.internal.zzet
    public String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.zzet
    public void pause() {
    }

    @Override // com.google.android.gms.internal.zzet
    public void resume() {
    }

    @Override // com.google.android.gms.internal.zzet
    public void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.zzet
    public void stopLoading() {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzeg zzegVar) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzeo zzeoVar) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzep zzepVar) {
        this.zztk = zzepVar;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzev zzevVar) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzex zzexVar) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzfc zzfcVar) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzft zzftVar) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzgp zzgpVar) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzle zzleVar) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzli zzliVar, String str) {
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zznw zznwVar) {
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean zzb(zzec zzecVar) {
        zzqf.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzfl.1
            @Override // java.lang.Runnable
            public void run() {
                if (zzfl.this.zztk != null) {
                    try {
                        zzfl.this.zztk.onAdFailedToLoad(1);
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not notify onAdFailedToLoad event.", e);
                    }
                }
            }
        });
        return false;
    }

    @Override // com.google.android.gms.internal.zzet
    public IObjectWrapper zzbB() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzet
    public zzeg zzbC() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zzbE() {
    }

    @Override // com.google.android.gms.internal.zzet
    public zzfa zzbF() {
        return null;
    }
}
