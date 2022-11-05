package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzadg;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgl;
import com.google.android.gms.internal.zzif;
import com.google.android.gms.internal.zzjc;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzle;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzmr;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpc;
import com.google.android.gms.internal.zzpd;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpn;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzqj;
import com.google.android.gms.internal.zzqm;
import com.google.android.gms.internal.zzqw;
import com.openx.view.mraid.JSInterface;
import java.util.ArrayList;
import java.util.UUID;
import java.util.concurrent.Callable;
@zzme
/* loaded from: classes.dex */
public abstract class zzb extends zza implements com.google.android.gms.ads.internal.overlay.zzh, com.google.android.gms.ads.internal.purchase.zzj, zzu, zzif, zzjs {
    protected transient boolean zzsA;
    protected final zzka zzsz;

    public zzb(Context context, zzeg zzegVar, String str, zzka zzkaVar, zzqh zzqhVar, zze zzeVar) {
        this(new zzx(context, zzegVar, str, zzqhVar), zzkaVar, null, zzeVar);
    }

    protected zzb(zzx zzxVar, zzka zzkaVar, zzt zztVar, zze zzeVar) {
        super(zzxVar, zztVar, zzeVar);
        this.zzsz = zzkaVar;
        this.zzsA = false;
    }

    private zzmk.zza zza(zzec zzecVar, Bundle bundle, zzpd zzpdVar) {
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo = this.zzss.zzqn.getApplicationInfo();
        try {
            packageInfo = zzadg.zzbi(this.zzss.zzqn).getPackageInfo(applicationInfo.packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        DisplayMetrics displayMetrics = this.zzss.zzqn.getResources().getDisplayMetrics();
        Bundle bundle2 = null;
        if (this.zzss.zzvo != null && this.zzss.zzvo.getParent() != null) {
            int[] iArr = new int[2];
            this.zzss.zzvo.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            int width = this.zzss.zzvo.getWidth();
            int height = this.zzss.zzvo.getHeight();
            int i3 = 0;
            if (this.zzss.zzvo.isShown() && i + width > 0 && i2 + height > 0 && i <= displayMetrics.widthPixels && i2 <= displayMetrics.heightPixels) {
                i3 = 1;
            }
            bundle2 = new Bundle(5);
            bundle2.putInt(JSInterface.JSON_X, i);
            bundle2.putInt(JSInterface.JSON_Y, i2);
            bundle2.putInt("width", width);
            bundle2.putInt("height", height);
            bundle2.putInt("visible", i3);
        }
        String zzki = zzw.zzcQ().zzki();
        this.zzss.zzvu = new zzpc(zzki, this.zzss.zzvl);
        this.zzss.zzvu.zzs(zzecVar);
        String zza = zzw.zzcM().zza(this.zzss.zzqn, this.zzss.zzvo, this.zzss.zzvr);
        long j = 0;
        if (this.zzss.zzvy != null) {
            try {
                j = this.zzss.zzvy.getValue();
            } catch (RemoteException e2) {
                zzpk.zzbh("Cannot get correlation id, default to 0.");
            }
        }
        String uuid = UUID.randomUUID().toString();
        Bundle zza2 = zzw.zzcQ().zza(this.zzss.zzqn, this, zzki);
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= this.zzss.zzvE.size()) {
                break;
            }
            arrayList.add(this.zzss.zzvE.b(i5));
            i4 = i5 + 1;
        }
        final boolean z = this.zzss.zzvz != null;
        final boolean z2 = this.zzss.zzvA != null && zzw.zzcQ().zzkz();
        final zzqm zza3 = zzpn.zza(new Callable<Boolean>() { // from class: com.google.android.gms.ads.internal.zzb.1
            @Override // java.util.concurrent.Callable
            /* renamed from: zzbX */
            public Boolean call() {
                return false;
            }
        });
        zzqm zza4 = zzpn.zza(new Callable<String>() { // from class: com.google.android.gms.ads.internal.zzb.2
            @Override // java.util.concurrent.Callable
            /* renamed from: zzbY */
            public String call() {
                CookieManager zzX;
                return (!zzgd.zzFb.get().booleanValue() || (zzX = zzw.zzcO().zzX(zzb.this.zzss.zzqn)) == null) ? "" : zzX.getCookie("googleads.g.doubleclick.net");
            }
        });
        zzqm zza5 = zzpn.zza(new Callable<String>() { // from class: com.google.android.gms.ads.internal.zzb.3
            @Override // java.util.concurrent.Callable
            /* renamed from: zzbY */
            public String call() {
                return zzb.this.zzss.zzvm.zzT().zzb(zzb.this.zzss.zzqn);
            }
        });
        String str = null;
        if (zzpdVar != null) {
            str = zzpdVar.zzkd();
        }
        final zzqj zzqjVar = new zzqj();
        zza3.zzc(new Runnable(this) { // from class: com.google.android.gms.ads.internal.zzb.4
            @Override // java.lang.Runnable
            public void run() {
                boolean z3 = false;
                try {
                    z3 = zza3.isDone() ? ((Boolean) zza3.get()).booleanValue() : false;
                } catch (InterruptedException e3) {
                    Thread.currentThread().interrupt();
                } catch (Exception e4) {
                    zzpk.zzb("Error receiving app streaming support", e4);
                }
                zzqjVar.zzh(new zzmr(z, z2, z3));
            }
        });
        return new zzmk.zza(bundle2, zzecVar, this.zzss.zzvr, this.zzss.zzvl, applicationInfo, packageInfo, zzki, zzw.zzcQ().getSessionId(), this.zzss.zzvn, zza2, this.zzss.zzvK, arrayList, bundle, zzw.zzcQ().zzkm(), displayMetrics.widthPixels, displayMetrics.heightPixels, displayMetrics.density, zza, j, uuid, zzgd.zzfs(), this.zzss.zzvk, this.zzss.zzvF, zzqjVar, this.zzss.zzdu(), zzw.zzcM().zzcq(), zzw.zzcM().zzcs(), zzw.zzcM().zzT(this.zzss.zzqn), zzw.zzcM().zzs(this.zzss.zzvo), this.zzss.zzqn instanceof Activity, zzw.zzcQ().zzkr(), zza4, str, zzw.zzcQ().zzkv(), zzw.zzdj().zzgr(), zzw.zzcM().zzkP(), zzw.zzcU().zzkY(), this.zzss.zzvH, zzw.zzcU().zzkZ(), zzjc.zzgC().asBundle(), zzw.zzcQ().zzm(this.zzss.zzqn, this.zzss.zzvl), zza5);
    }

    @Override // com.google.android.gms.internal.zzet
    public String getMediationAdapterClassName() {
        if (this.zzss.zzvs == null) {
            return null;
        }
        return this.zzss.zzvs.zzLk;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzdx
    public void onAdClicked() {
        if (this.zzss.zzvs == null) {
            zzpk.zzbh("Ad state was null when trying to ping click URLs.");
            return;
        }
        if (this.zzss.zzvs.zzWc != null && this.zzss.zzvs.zzWc.zzKF != null) {
            String zzF = zzw.zzdl().zzF(this.zzss.zzqn);
            zzw.zzdf().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, this.zzss.zzvs, this.zzss.zzvl, false, zza(zzF, this.zzss.zzvs.zzWc.zzKF));
            if (this.zzss.zzvs.zzWc.zzKF.size() > 0) {
                zzw.zzdl().zzf(this.zzss.zzqn, zzF);
            }
        }
        if (this.zzss.zzvs.zzLi != null && this.zzss.zzvs.zzLi.zzKs != null) {
            zzw.zzdf().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, this.zzss.zzvs, this.zzss.zzvl, false, this.zzss.zzvs.zzLi.zzKs);
        }
        super.onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzh
    public void onPause() {
        this.zzsu.zzl(this.zzss.zzvs);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzh
    public void onResume() {
        this.zzsu.zzm(this.zzss.zzvs);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void pause() {
        zzac.zzdj("pause must be called on the main UI thread.");
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzNH != null && this.zzss.zzdq()) {
            zzw.zzcO().zzl(this.zzss.zzvs.zzNH);
        }
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzLj != null) {
            try {
                this.zzss.zzvs.zzLj.pause();
            } catch (RemoteException e) {
                zzpk.zzbh("Could not pause mediation adapter.");
            }
        }
        this.zzsu.zzl(this.zzss.zzvs);
        this.zzsr.pause();
    }

    public void recordImpression() {
        zza(this.zzss.zzvs, false);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void resume() {
        zzac.zzdj("resume must be called on the main UI thread.");
        zzqw zzqwVar = null;
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzNH != null) {
            zzqwVar = this.zzss.zzvs.zzNH;
        }
        if (zzqwVar != null && this.zzss.zzdq()) {
            zzw.zzcO().zzm(this.zzss.zzvs.zzNH);
        }
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzLj != null) {
            try {
                this.zzss.zzvs.zzLj.resume();
            } catch (RemoteException e) {
                zzpk.zzbh("Could not resume mediation adapter.");
            }
        }
        if (zzqwVar == null || !zzqwVar.zzlC()) {
            this.zzsr.resume();
        }
        this.zzsu.zzm(this.zzss.zzvs);
    }

    @Override // com.google.android.gms.internal.zzet
    public void showInterstitial() {
        throw new IllegalStateException("showInterstitial is not supported for current ad type");
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void zza(zzle zzleVar) {
        zzac.zzdj("setInAppPurchaseListener must be called on the main UI thread.");
        this.zzss.zzvz = zzleVar;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void zza(zzli zzliVar, String str) {
        zzac.zzdj("setPlayStorePurchaseParams must be called on the main UI thread.");
        this.zzss.zzvL = new com.google.android.gms.ads.internal.purchase.zzk(str);
        this.zzss.zzvA = zzliVar;
        if (zzw.zzcQ().zzkl() || zzliVar == null) {
            return;
        }
        new com.google.android.gms.ads.internal.purchase.zzc(this.zzss.zzqn, this.zzss.zzvA, this.zzss.zzvL).zziP();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(zzpb zzpbVar, boolean z) {
        if (zzpbVar == null) {
            zzpk.zzbh("Ad state was null when trying to ping impression URLs.");
            return;
        }
        super.zzc(zzpbVar);
        if (zzpbVar.zzWc != null && zzpbVar.zzWc.zzKG != null) {
            String zzF = zzw.zzdl().zzF(this.zzss.zzqn);
            zzw.zzdf().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, zzpbVar, this.zzss.zzvl, z, zza(zzF, zzpbVar.zzWc.zzKG));
            if (zzpbVar.zzWc.zzKG.size() > 0) {
                zzw.zzdl().zzg(this.zzss.zzqn, zzF);
            }
        }
        if (zzpbVar.zzLi == null || zzpbVar.zzLi.zzKt == null) {
            return;
        }
        zzw.zzdf().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, zzpbVar, this.zzss.zzvl, z, zzpbVar.zzLi.zzKt);
    }

    @Override // com.google.android.gms.internal.zzif
    public void zza(String str, ArrayList<String> arrayList) {
        com.google.android.gms.ads.internal.purchase.zzd zzdVar = new com.google.android.gms.ads.internal.purchase.zzd(str, arrayList, this.zzss.zzqn, this.zzss.zzvn.zzba);
        if (this.zzss.zzvz != null) {
            try {
                this.zzss.zzvz.zza(zzdVar);
                return;
            } catch (RemoteException e) {
                zzpk.zzbh("Could not start In-App purchase.");
                return;
            }
        }
        zzpk.zzbh("InAppPurchaseListener is not set. Try to launch default purchase flow.");
        if (!zzel.zzeT().zzaf(this.zzss.zzqn)) {
            zzpk.zzbh("Google Play Service unavailable, cannot launch default purchase flow.");
        } else if (this.zzss.zzvA == null) {
            zzpk.zzbh("PlayStorePurchaseListener is not set.");
        } else if (this.zzss.zzvL == null) {
            zzpk.zzbh("PlayStorePurchaseVerifier is not initialized.");
        } else if (this.zzss.zzvP) {
            zzpk.zzbh("An in-app purchase request is already in progress, abort");
        } else {
            this.zzss.zzvP = true;
            try {
                if (!this.zzss.zzvA.isValidPurchase(str)) {
                    this.zzss.zzvP = false;
                } else {
                    zzw.zzda().zza(this.zzss.zzqn, this.zzss.zzvn.zzYY, new GInAppPurchaseManagerInfoParcel(this.zzss.zzqn, this.zzss.zzvL, zzdVar, this));
                }
            } catch (RemoteException e2) {
                zzpk.zzbh("Could not start In-App purchase.");
                this.zzss.zzvP = false;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.purchase.zzj
    public void zza(String str, boolean z, int i, final Intent intent, com.google.android.gms.ads.internal.purchase.zzf zzfVar) {
        try {
            if (this.zzss.zzvA != null) {
                this.zzss.zzvA.zza(new com.google.android.gms.ads.internal.purchase.zzg(this.zzss.zzqn, str, z, i, intent, zzfVar));
            }
        } catch (RemoteException e) {
            zzpk.zzbh("Fail to invoke PlayStorePurchaseListener.");
        }
        zzpo.zzXC.postDelayed(new Runnable() { // from class: com.google.android.gms.ads.internal.zzb.5
            @Override // java.lang.Runnable
            public void run() {
                int zzd = zzw.zzda().zzd(intent);
                zzw.zzda();
                if (zzd == 0 && zzb.this.zzss.zzvs != null && zzb.this.zzss.zzvs.zzNH != null && zzb.this.zzss.zzvs.zzNH.zzlt() != null) {
                    zzb.this.zzss.zzvs.zzNH.zzlt().close();
                }
                zzb.this.zzss.zzvP = false;
            }
        }, 500L);
    }

    @Override // com.google.android.gms.ads.internal.zza
    public boolean zza(zzec zzecVar, zzgl zzglVar) {
        zzpd zzpdVar;
        if (!zzbM()) {
            return false;
        }
        Bundle zzV = zzw.zzcM().zzV(this.zzss.zzqn);
        this.zzsr.cancel();
        this.zzss.zzvO = 0;
        if (zzgd.zzEJ.get().booleanValue()) {
            zzpdVar = zzw.zzcQ().zzkw();
            zzw.zzdi().zza(this.zzss.zzqn, this.zzss.zzvn, this.zzss.zzvl, zzpdVar);
        } else {
            zzpdVar = null;
        }
        zzmk.zza zza = zza(zzecVar, zzV, zzpdVar);
        zzglVar.zzh("seq_num", zza.zzRB);
        zzglVar.zzh("request_id", zza.zzRL);
        zzglVar.zzh("session_id", zza.zzRC);
        if (zza.zzRz != null) {
            zzglVar.zzh("app_version", String.valueOf(zza.zzRz.versionCode));
        }
        this.zzss.zzvp = zzw.zzcI().zza(this.zzss.zzqn, zza, this);
        return true;
    }

    protected boolean zza(zzec zzecVar, zzpb zzpbVar, boolean z) {
        if (!z && this.zzss.zzdq()) {
            if (zzpbVar.zzKL > 0) {
                this.zzsr.zza(zzecVar, zzpbVar.zzKL);
            } else if (zzpbVar.zzWc != null && zzpbVar.zzWc.zzKL > 0) {
                this.zzsr.zza(zzecVar, zzpbVar.zzWc.zzKL);
            } else if (!zzpbVar.zzSn && zzpbVar.errorCode == 2) {
                this.zzsr.zzh(zzecVar);
            }
        }
        return this.zzsr.zzcy();
    }

    @Override // com.google.android.gms.ads.internal.zza
    boolean zza(zzpb zzpbVar) {
        zzec zzecVar;
        boolean z = false;
        if (this.zzst != null) {
            zzecVar = this.zzst;
            this.zzst = null;
        } else {
            zzecVar = zzpbVar.zzRy;
            if (zzecVar.extras != null) {
                z = zzecVar.extras.getBoolean("_noRefresh", false);
            }
        }
        return zza(zzecVar, zzpbVar, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public boolean zza(zzpb zzpbVar, zzpb zzpbVar2) {
        int i;
        int i2 = 0;
        if (zzpbVar != null && zzpbVar.zzLl != null) {
            zzpbVar.zzLl.zza((zzjs) null);
        }
        if (zzpbVar2.zzLl != null) {
            zzpbVar2.zzLl.zza(this);
        }
        if (zzpbVar2.zzWc != null) {
            i = zzpbVar2.zzWc.zzKS;
            i2 = zzpbVar2.zzWc.zzKT;
        } else {
            i = 0;
        }
        this.zzss.zzvM.zzk(i, i2);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlq.zza
    public void zzb(zzpb zzpbVar) {
        super.zzb(zzpbVar);
        if (zzpbVar.zzLi != null) {
            zzpk.zzbf("Disable the debug gesture detector on the mediation ad frame.");
            if (this.zzss.zzvo != null) {
                this.zzss.zzvo.zzdy();
            }
            zzpk.zzbf("Pinging network fill URLs.");
            zzw.zzdf().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, zzpbVar, this.zzss.zzvl, false, zzpbVar.zzLi.zzKu);
            if (zzpbVar.zzWc != null && zzpbVar.zzWc.zzKI != null && zzpbVar.zzWc.zzKI.size() > 0) {
                zzpk.zzbf("Pinging urls remotely");
                zzw.zzcM().zza(this.zzss.zzqn, zzpbVar.zzWc.zzKI);
            }
        } else {
            zzpk.zzbf("Enable the debug gesture detector on the admob ad frame.");
            if (this.zzss.zzvo != null) {
                this.zzss.zzvo.zzdx();
            }
        }
        if (zzpbVar.errorCode != 3 || zzpbVar.zzWc == null || zzpbVar.zzWc.zzKH == null) {
            return;
        }
        zzpk.zzbf("Pinging no fill URLs.");
        zzw.zzdf().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, zzpbVar, this.zzss.zzvl, false, zzpbVar.zzWc.zzKH);
    }

    protected boolean zzbM() {
        return zzw.zzcM().zze(this.zzss.zzqn, this.zzss.zzqn.getPackageName(), "android.permission.INTERNET") && zzw.zzcM().zzJ(this.zzss.zzqn);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzh
    public void zzbN() {
        this.zzsu.zzj(this.zzss.zzvs);
        this.zzsA = false;
        zzbG();
        this.zzss.zzvu.zzjX();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzh
    public void zzbO() {
        this.zzsA = true;
        zzbI();
    }

    @Override // com.google.android.gms.internal.zzjs
    public void zzbP() {
        onAdClicked();
    }

    @Override // com.google.android.gms.internal.zzjs
    public void zzbQ() {
        zzbN();
    }

    @Override // com.google.android.gms.internal.zzjs
    public void zzbR() {
        zzbD();
    }

    @Override // com.google.android.gms.internal.zzjs
    public void zzbS() {
        zzbO();
    }

    @Override // com.google.android.gms.internal.zzjs
    public void zzbT() {
        if (this.zzss.zzvs != null) {
            String str = this.zzss.zzvs.zzLk;
            zzpk.zzbh(new StringBuilder(String.valueOf(str).length() + 74).append("Mediation adapter ").append(str).append(" refreshed, but mediation adapters should never refresh.").toString());
        }
        zza(this.zzss.zzvs, true);
        zzbJ();
    }

    @Override // com.google.android.gms.internal.zzjs
    public void zzbU() {
        recordImpression();
    }

    @Override // com.google.android.gms.ads.internal.zzu
    public void zzbV() {
        zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.ads.internal.zzb.6
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzsr.pause();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.zzu
    public void zzbW() {
        zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.ads.internal.zzb.7
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzsr.resume();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public boolean zzc(zzec zzecVar) {
        return super.zzc(zzecVar) && !this.zzsA;
    }
}
