package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.v4.f.k;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgl;
import com.google.android.gms.internal.zzgp;
import com.google.android.gms.internal.zzgv;
import com.google.android.gms.internal.zzgw;
import com.google.android.gms.internal.zzgx;
import com.google.android.gms.internal.zzgy;
import com.google.android.gms.internal.zzgz;
import com.google.android.gms.internal.zzha;
import com.google.android.gms.internal.zzhc;
import com.google.android.gms.internal.zzhp;
import com.google.android.gms.internal.zzhq;
import com.google.android.gms.internal.zzhr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzke;
import com.google.android.gms.internal.zzkf;
import com.google.android.gms.internal.zzle;
import com.google.android.gms.internal.zzlw;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzqw;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzs extends zzb {
    private zzqw zzug;

    public zzs(Context context, zze zzeVar, zzeg zzegVar, String str, zzka zzkaVar, zzqh zzqhVar) {
        super(context, zzegVar, str, zzkaVar, zzqhVar, zzeVar);
    }

    private static zzgv zza(zzke zzkeVar) throws RemoteException {
        return new zzgv(zzkeVar.getHeadline(), zzkeVar.getImages(), zzkeVar.getBody(), zzkeVar.zzfQ() != null ? zzkeVar.zzfQ() : null, zzkeVar.getCallToAction(), zzkeVar.getStarRating(), zzkeVar.getStore(), zzkeVar.getPrice(), null, zzkeVar.getExtras(), zzkeVar.zzbF(), null);
    }

    private static zzgw zza(zzkf zzkfVar) throws RemoteException {
        return new zzgw(zzkfVar.getHeadline(), zzkfVar.getImages(), zzkfVar.getBody(), zzkfVar.zzfV() != null ? zzkfVar.zzfV() : null, zzkfVar.getCallToAction(), zzkfVar.getAdvertiser(), null, zzkfVar.getExtras(), zzkfVar.zzbF(), null);
    }

    private void zza(final zzgv zzgvVar) {
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzs.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (zzs.this.zzss.zzvB == null) {
                        return;
                    }
                    zzs.this.zzss.zzvB.zza(zzgvVar);
                } catch (RemoteException e) {
                    zzpk.zzc("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
                }
            }
        });
    }

    private void zza(final zzgw zzgwVar) {
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzs.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (zzs.this.zzss.zzvC == null) {
                        return;
                    }
                    zzs.this.zzss.zzvC.zza(zzgwVar);
                } catch (RemoteException e) {
                    zzpk.zzc("Could not call OnContentAdLoadedListener.onContentAdLoaded().", e);
                }
            }
        });
    }

    private void zza(final zzpb zzpbVar, final String str) {
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzs.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    zzs.this.zzss.zzvE.get(str).zza((zzgx) zzpbVar.zzWi);
                } catch (RemoteException e) {
                    zzpk.zzc("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
                }
            }
        });
    }

    public String getAdUnitId() {
        return this.zzss.zzvl;
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void pause() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void resume() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.internal.zzet
    public void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    public void zza(k<String, zzhs> kVar) {
        zzac.zzdj("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        this.zzss.zzvE = kVar;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void zza(zzgp zzgpVar) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    public void zza(zzgy zzgyVar) {
        if (this.zzug != null) {
            this.zzug.zzb(zzgyVar);
        }
    }

    public void zza(zzha zzhaVar) {
        if (this.zzss.zzvs.zzWa != null) {
            zzw.zzcQ().zzkx().zza(this.zzss.zzvr, this.zzss.zzvs, zzhaVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void zza(zzle zzleVar) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.ads.internal.zza
    public void zza(final zzpb.zza zzaVar, zzgl zzglVar) {
        if (zzaVar.zzvr != null) {
            this.zzss.zzvr = zzaVar.zzvr;
        }
        if (zzaVar.errorCode != -2) {
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzs.1
                @Override // java.lang.Runnable
                public void run() {
                    zzs.this.zzb(new zzpb(zzaVar, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        this.zzss.zzvO = 0;
        this.zzss.zzvq = zzw.zzcL().zza(this.zzss.zzqn, this, zzaVar, this.zzss.zzvm, null, this.zzsz, this, zzglVar);
        String valueOf = String.valueOf(this.zzss.zzvq.getClass().getName());
        zzpk.zzbf(valueOf.length() != 0 ? "AdRenderer: ".concat(valueOf) : new String("AdRenderer: "));
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(zzec zzecVar, zzgl zzglVar) {
        if (zzgd.zzEm.get().booleanValue() && zzgd.zzEn.get().booleanValue()) {
            zzlw zzlwVar = new zzlw(this.zzss.zzqn, this, this.zzss.zzvm, this.zzss.zzvn);
            zzlwVar.zziT();
            try {
                zzlwVar.zziU();
            } catch (Exception e) {
                zzpk.zzc("Initializing javascript failed", e);
                return false;
            }
        }
        return super.zza(zzecVar, zzglVar);
    }

    @Override // com.google.android.gms.ads.internal.zzb
    protected boolean zza(zzec zzecVar, zzpb zzpbVar, boolean z) {
        return this.zzsr.zzcy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(zzpb zzpbVar, zzpb zzpbVar2) {
        zzb((List<String>) null);
        if (!this.zzss.zzdq()) {
            throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
        }
        if (zzpbVar2.zzSn) {
            try {
                zzke zzhc = zzpbVar2.zzLj != null ? zzpbVar2.zzLj.zzhc() : null;
                zzkf zzhd = zzpbVar2.zzLj != null ? zzpbVar2.zzLj.zzhd() : null;
                if (zzhc != null && this.zzss.zzvB != null) {
                    zzgv zza = zza(zzhc);
                    zza.zzb(new zzgz(this.zzss.zzqn, this, this.zzss.zzvm, zzhc, zza));
                    zza(zza);
                } else if (zzhd == null || this.zzss.zzvC == null) {
                    zzpk.zzbh("No matching mapper/listener for retrieved native ad template.");
                    zzh(0);
                    return false;
                } else {
                    zzgw zza2 = zza(zzhd);
                    zza2.zzb(new zzgz(this.zzss.zzqn, this, this.zzss.zzvm, zzhd, zza2));
                    zza(zza2);
                }
            } catch (RemoteException e) {
                zzpk.zzc("Failed to get native ad mapper", e);
            }
        } else {
            zzha.zza zzaVar = zzpbVar2.zzWi;
            if ((zzaVar instanceof zzgw) && this.zzss.zzvC != null) {
                zza((zzgw) zzpbVar2.zzWi);
            } else if ((zzaVar instanceof zzgv) && this.zzss.zzvB != null) {
                zza((zzgv) zzpbVar2.zzWi);
            } else if (!(zzaVar instanceof zzgx) || this.zzss.zzvE == null || this.zzss.zzvE.get(((zzgx) zzaVar).getCustomTemplateId()) == null) {
                zzpk.zzbh("No matching listener for retrieved native ad template.");
                zzh(0);
                return false;
            } else {
                zza(zzpbVar2, ((zzgx) zzaVar).getCustomTemplateId());
            }
        }
        return super.zza(zzpbVar, zzpbVar2);
    }

    public void zzb(k<String, zzhr> kVar) {
        zzac.zzdj("setOnCustomClickListener must be called on the main UI thread.");
        this.zzss.zzvD = kVar;
    }

    public void zzb(zzhc zzhcVar) {
        zzac.zzdj("setNativeAdOptions must be called on the main UI thread.");
        this.zzss.zzvF = zzhcVar;
    }

    public void zzb(zzhp zzhpVar) {
        zzac.zzdj("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        this.zzss.zzvB = zzhpVar;
    }

    public void zzb(zzhq zzhqVar) {
        zzac.zzdj("setOnContentAdLoadedListener must be called on the main UI thread.");
        this.zzss.zzvC = zzhqVar;
    }

    public void zzb(List<String> list) {
        zzac.zzdj("setNativeTemplates must be called on the main UI thread.");
        this.zzss.zzvK = list;
    }

    public void zzc(zzqw zzqwVar) {
        this.zzug = zzqwVar;
    }

    public void zzct() {
        if (this.zzss.zzvs == null || this.zzug == null) {
            zzpk.zzbh("Request to enable ActiveView before adState is available.");
        } else {
            zzw.zzcQ().zzkx().zza(this.zzss.zzvr, this.zzss.zzvs, this.zzug.getView(), this.zzug);
        }
    }

    public k<String, zzhs> zzcu() {
        zzac.zzdj("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.zzss.zzvE;
    }

    public void zzcv() {
        if (this.zzug != null) {
            this.zzug.destroy();
            this.zzug = null;
        }
    }

    public void zzcw() {
        if (this.zzug == null || this.zzug.zzlG() == null || this.zzss.zzvF == null || this.zzss.zzvF.zzHe == null) {
            return;
        }
        this.zzug.zzlG().zzQ(this.zzss.zzvF.zzHe.zzAU);
    }

    public boolean zzcx() {
        return this.zzss.zzvs != null && this.zzss.zzvs.zzSn && this.zzss.zzvs.zzWc != null && this.zzss.zzvs.zzWc.zzKR;
    }

    public zzhr zzz(String str) {
        zzac.zzdj("getOnCustomClickListener must be called on the main UI thread.");
        return this.zzss.zzvD.get(str);
    }
}
