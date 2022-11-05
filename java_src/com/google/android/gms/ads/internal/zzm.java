package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.Window;
import com.facebook.internal.NativeProtocol;
import com.google.ads.mediation.a;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzcy;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgl;
import com.google.android.gms.internal.zzih;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzjq;
import com.google.android.gms.internal.zzjr;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzmn;
import com.google.android.gms.internal.zznd;
import com.google.android.gms.internal.zzoo;
import com.google.android.gms.internal.zzot;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzqx;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzm extends zzc implements zzih, zzin.zza {
    protected transient boolean zztB;
    private int zztC;
    private boolean zztD;
    private float zztE;
    private final zzov zztF;

    @zzme
    /* loaded from: classes.dex */
    private class zza extends zzpj {
        private final int zztH;

        public zza(int i) {
            this.zztH = i;
        }

        @Override // com.google.android.gms.internal.zzpj
        public void onStop() {
        }

        @Override // com.google.android.gms.internal.zzpj
        public void zzco() {
            zzn zznVar = new zzn(zzm.this.zzss.zztK, zzm.this.zzcl(), zzm.this.zztD, zzm.this.zztE, zzm.this.zzss.zztK ? this.zztH : -1);
            int requestedOrientation = zzm.this.zzss.zzvs.zzNH.getRequestedOrientation();
            final AdOverlayInfoParcel adOverlayInfoParcel = new AdOverlayInfoParcel(zzm.this, zzm.this, zzm.this, zzm.this.zzss.zzvs.zzNH, requestedOrientation == -1 ? zzm.this.zzss.zzvs.orientation : requestedOrientation, zzm.this.zzss.zzvn, zzm.this.zzss.zzvs.zzSs, zznVar);
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzm.zza.1
                @Override // java.lang.Runnable
                public void run() {
                    zzw.zzcK().zza(zzm.this.zzss.zzqn, adOverlayInfoParcel);
                }
            });
        }
    }

    public zzm(Context context, zzeg zzegVar, String str, zzka zzkaVar, zzqh zzqhVar, zze zzeVar) {
        super(context, zzegVar, str, zzkaVar, zzqhVar, zzeVar);
        this.zztC = -1;
        this.zztB = false;
        this.zztF = zzw.zzdl().zzjT() ? new zzov(context, str) : null;
    }

    static zzpb.zza zzc(zzpb.zza zzaVar) {
        try {
            String jSONObject = zznd.zzb(zzaVar.zzWm).toString();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(a.AD_UNIT_ID_PARAMETER, zzaVar.zzTi.zzvl);
            zzjq zzjqVar = new zzjq(jSONObject, null, Collections.singletonList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), jSONObject2.toString(), null, Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList());
            zzmn zzmnVar = zzaVar.zzWm;
            zzjr zzjrVar = new zzjr(Collections.singletonList(zzjqVar), zzgd.zzDM.get().longValue(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), zzmnVar.zzKI, zzmnVar.zzKJ, "", -1L, 0, 1, null, 0, -1, -1L, false);
            return new zzpb.zza(zzaVar.zzTi, new zzmn(zzaVar.zzTi, zzmnVar.zzNJ, zzmnVar.body, Collections.emptyList(), Collections.emptyList(), zzmnVar.zzSm, true, zzmnVar.zzSo, Collections.emptyList(), zzmnVar.zzKL, zzmnVar.orientation, zzmnVar.zzSq, zzmnVar.zzSr, zzmnVar.zzSs, zzmnVar.zzSt, zzmnVar.zzSu, null, zzmnVar.zzSw, zzmnVar.zzzB, zzmnVar.zzRG, zzmnVar.zzSx, zzmnVar.zzSy, zzmnVar.zzSB, zzmnVar.zzzC, zzmnVar.zzzD, null, Collections.emptyList(), Collections.emptyList(), zzmnVar.zzSF, zzmnVar.zzSG, zzmnVar.zzRV, zzmnVar.zzRW, zzmnVar.zzKI, zzmnVar.zzKJ, zzmnVar.zzSH, null, zzmnVar.zzSJ, zzmnVar.zzSK, zzmnVar.zzSh), zzjrVar, zzaVar.zzvr, zzaVar.errorCode, zzaVar.zzWg, zzaVar.zzWh, null);
        } catch (JSONException e) {
            zzpk.zzb("Unable to generate ad state for an interstitial ad with pooling.", e);
            return zzaVar;
        }
    }

    private void zzc(Bundle bundle) {
        zzw.zzcM().zzb(this.zzss.zzqn, this.zzss.zzvn.zzba, "gmob-apps", bundle, false);
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.internal.zzet
    public void showInterstitial() {
        zzac.zzdj("showInterstitial must be called on the main UI thread.");
        if (this.zzss.zzvs == null) {
            zzpk.zzbh("The interstitial has not loaded.");
            return;
        }
        if (zzgd.zzDx.get().booleanValue()) {
            String packageName = this.zzss.zzqn.getApplicationContext() != null ? this.zzss.zzqn.getApplicationContext().getPackageName() : this.zzss.zzqn.getPackageName();
            if (!this.zztB) {
                zzpk.zzbh("It is not recommended to show an interstitial before onAdLoaded completes.");
                Bundle bundle = new Bundle();
                bundle.putString(AdDatabaseHelper.COLUMN_APPID, packageName);
                bundle.putString(NativeProtocol.WEB_DIALOG_ACTION, "show_interstitial_before_load_finish");
                zzc(bundle);
            }
            if (!zzw.zzcM().zzP(this.zzss.zzqn)) {
                zzpk.zzbh("It is not recommended to show an interstitial when app is not in foreground.");
                Bundle bundle2 = new Bundle();
                bundle2.putString(AdDatabaseHelper.COLUMN_APPID, packageName);
                bundle2.putString(NativeProtocol.WEB_DIALOG_ACTION, "show_interstitial_app_not_in_foreground");
                zzc(bundle2);
            }
        }
        if (this.zzss.zzdr()) {
            return;
        }
        if (this.zzss.zzvs.zzSn && this.zzss.zzvs.zzLj != null) {
            try {
                this.zzss.zzvs.zzLj.showInterstitial();
            } catch (RemoteException e) {
                zzpk.zzc("Could not show interstitial.", e);
                zzcm();
            }
        } else if (this.zzss.zzvs.zzNH == null) {
            zzpk.zzbh("The interstitial failed to load.");
        } else if (this.zzss.zzvs.zzNH.zzlz()) {
            zzpk.zzbh("The interstitial is already showing.");
        } else {
            this.zzss.zzvs.zzNH.zzK(true);
            if (this.zzss.zzvs.zzWa != null) {
                this.zzsu.zza(this.zzss.zzvr, this.zzss.zzvs);
            }
            com.google.android.gms.common.util.zzt.zzzg();
            final zzpb zzpbVar = this.zzss.zzvs;
            if (zzpbVar.zzdD()) {
                new zzcy(this.zzss.zzqn, zzpbVar.zzNH.getView()).zza(zzpbVar.zzNH);
            } else {
                zzpbVar.zzNH.zzlv().zza(new zzqx.zzc() { // from class: com.google.android.gms.ads.internal.zzm.1
                    @Override // com.google.android.gms.internal.zzqx.zzc
                    public void zzcf() {
                        new zzcy(zzm.this.zzss.zzqn, zzpbVar.zzNH.getView()).zza(zzpbVar.zzNH);
                    }
                });
            }
            Bitmap zzQ = this.zzss.zztK ? zzw.zzcM().zzQ(this.zzss.zzqn) : null;
            this.zztC = zzw.zzdh().zzb(zzQ);
            if (zzgd.zzEa.get().booleanValue() && zzQ != null) {
                new zza(this.zztC).zziP();
                return;
            }
            zzn zznVar = new zzn(this.zzss.zztK, zzcl(), false, BitmapDescriptorFactory.HUE_RED, -1);
            int requestedOrientation = this.zzss.zzvs.zzNH.getRequestedOrientation();
            if (requestedOrientation == -1) {
                requestedOrientation = this.zzss.zzvs.orientation;
            }
            zzw.zzcK().zza(this.zzss.zzqn, new AdOverlayInfoParcel(this, this, this, this.zzss.zzvs.zzNH, requestedOrientation, this.zzss.zzvn, this.zzss.zzvs.zzSs, zznVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zzc
    public zzqw zza(zzpb.zza zzaVar, zzf zzfVar, zzot zzotVar) {
        zzqw zza2 = zzw.zzcN().zza(this.zzss.zzqn, this.zzss.zzvr, false, false, this.zzss.zzvm, this.zzss.zzvn, this.zzsn, this, this.zzsv);
        zza2.zzlv().zza(this, null, this, this, zzgd.zzCv.get().booleanValue(), this, this, zzfVar, null, zzotVar);
        zza(zza2);
        zza2.zzbj(zzaVar.zzTi.zzRL);
        zzin.zza(zza2, this);
        return zza2;
    }

    @Override // com.google.android.gms.ads.internal.zzc, com.google.android.gms.ads.internal.zza
    public void zza(zzpb.zza zzaVar, zzgl zzglVar) {
        boolean z = true;
        if (!zzgd.zzDc.get().booleanValue()) {
            super.zza(zzaVar, zzglVar);
        } else if (zzaVar.errorCode != -2) {
            super.zza(zzaVar, zzglVar);
        } else {
            Bundle bundle = zzaVar.zzTi.zzRy.zzzd.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
            boolean z2 = bundle == null || !bundle.containsKey("gw");
            if (zzaVar.zzWm.zzSn) {
                z = false;
            }
            if (z2 && z) {
                this.zzss.zzvt = zzc(zzaVar);
            }
            super.zza(this.zzss.zzvt, zzglVar);
        }
    }

    @Override // com.google.android.gms.internal.zzih
    public void zza(boolean z, float f) {
        this.zztD = z;
        this.zztE = f;
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(zzec zzecVar, zzgl zzglVar) {
        if (this.zzss.zzvs != null) {
            zzpk.zzbh("An interstitial is already loading. Aborting.");
            return false;
        }
        return super.zza(zzecVar, zzglVar);
    }

    @Override // com.google.android.gms.ads.internal.zzb
    protected boolean zza(zzec zzecVar, zzpb zzpbVar, boolean z) {
        if (this.zzss.zzdq() && zzpbVar.zzNH != null) {
            zzw.zzcO().zzl(zzpbVar.zzNH);
        }
        return this.zzsr.zzcy();
    }

    @Override // com.google.android.gms.ads.internal.zzc, com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(zzpb zzpbVar, zzpb zzpbVar2) {
        if (!super.zza(zzpbVar, zzpbVar2)) {
            return false;
        }
        if (!this.zzss.zzdq() && this.zzss.zzvN != null && zzpbVar2.zzWa != null) {
            this.zzsu.zza(this.zzss.zzvr, zzpbVar2, this.zzss.zzvN);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.zzin.zza
    public void zzb(zzoo zzooVar) {
        if (this.zzss.zzvs != null) {
            if (this.zzss.zzvs.zzSE != null) {
                zzw.zzcM().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, this.zzss.zzvs.zzSE);
            }
            if (this.zzss.zzvs.zzSC != null) {
                zzooVar = this.zzss.zzvs.zzSC;
            }
        }
        zza(zzooVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public void zzbG() {
        zzcm();
        super.zzbG();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public void zzbJ() {
        super.zzbJ();
        this.zztB = true;
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.overlay.zzh
    public void zzbN() {
        super.zzbN();
        if (zzw.zzdl().zzjT()) {
            this.zztF.zzC(false);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.overlay.zzh
    public void zzbO() {
        zzqx zzlv;
        recordImpression();
        super.zzbO();
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzNH != null && (zzlv = this.zzss.zzvs.zzNH.zzlv()) != null) {
            zzlv.zzlT();
        }
        if (zzw.zzdl().zzjT()) {
            zzw.zzdl().zza(this.zzss.zzqn, this.zzss.zzvl, zzw.zzdl().zzC(this.zzss.zzqn));
            this.zztF.zzC(true);
        }
    }

    protected boolean zzcl() {
        Window window;
        if (!(this.zzss.zzqn instanceof Activity) || (window = ((Activity) this.zzss.zzqn).getWindow()) == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        return (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
    }

    public void zzcm() {
        zzw.zzdh().zzb(Integer.valueOf(this.zztC));
        if (this.zzss.zzdq()) {
            this.zzss.zzdn();
            this.zzss.zzvs = null;
            this.zzss.zztK = false;
            this.zztB = false;
        }
    }

    @Override // com.google.android.gms.internal.zzin.zza
    public void zzcn() {
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzWf != null) {
            zzw.zzcM().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, this.zzss.zzvs.zzWf);
        }
        zzbK();
    }

    @Override // com.google.android.gms.internal.zzih
    public void zzg(boolean z) {
        this.zzss.zztK = z;
    }
}
