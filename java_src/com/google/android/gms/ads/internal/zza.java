package com.google.android.gms.ads.internal;

import android.os.Debug;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.zzx;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzcs;
import com.google.android.gms.internal.zzdx;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzeo;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.internal.zzfa;
import com.google.android.gms.internal.zzfc;
import com.google.android.gms.internal.zzfr;
import com.google.android.gms.internal.zzft;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzgl;
import com.google.android.gms.internal.zzgp;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzle;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzlq;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzmf;
import com.google.android.gms.internal.zznq;
import com.google.android.gms.internal.zznw;
import com.google.android.gms.internal.zzoo;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpc;
import com.google.android.gms.internal.zzpg;
import com.google.android.gms.internal.zzph;
import com.google.android.gms.internal.zzpk;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;
@zzme
/* loaded from: classes.dex */
public abstract class zza extends zzet.zza implements com.google.android.gms.ads.internal.overlay.zzq, zzdx, zzhz, zzlq.zza, zzmf.zza, zzpg {
    protected zzgl zzsn;
    protected zzgj zzso;
    protected zzgj zzsp;
    protected boolean zzsq = false;
    protected final zzt zzsr;
    protected final zzx zzss;
    protected transient zzec zzst;
    protected final zzcs zzsu;
    protected final zze zzsv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(zzx zzxVar, zzt zztVar, zze zzeVar) {
        this.zzss = zzxVar;
        this.zzsr = zztVar == null ? new zzt(this) : zztVar;
        this.zzsv = zzeVar;
        zzw.zzcM().zzK(this.zzss.zzqn);
        zzw.zzcQ().zzc(this.zzss.zzqn, this.zzss.zzvn);
        zzw.zzcR().initialize(this.zzss.zzqn);
        this.zzsu = zzw.zzcQ().zzkx();
        zzw.zzcP().initialize(this.zzss.zzqn);
        zzbz();
    }

    private zzec zza(zzec zzecVar) {
        return (!com.google.android.gms.common.util.zzj.zzbb(this.zzss.zzqn) || zzecVar.zzzb == null) ? zzecVar : new zzed(zzecVar).zza(null).zzeC();
    }

    private TimerTask zza(final Timer timer, final CountDownLatch countDownLatch) {
        return new TimerTask() { // from class: com.google.android.gms.ads.internal.zza.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (zzgd.zzEB.get().intValue() != countDownLatch.getCount()) {
                    zzpk.zzbf("Stopping method tracing");
                    Debug.stopMethodTracing();
                    if (countDownLatch.getCount() == 0) {
                        timer.cancel();
                        return;
                    }
                }
                String concat = String.valueOf(zza.this.zzss.zzqn.getPackageName()).concat("_adsTrace_");
                try {
                    zzpk.zzbf("Starting method tracing");
                    countDownLatch.countDown();
                    Debug.startMethodTracing(new StringBuilder(String.valueOf(concat).length() + 20).append(concat).append(zzw.zzcS().currentTimeMillis()).toString(), zzgd.zzEC.get().intValue());
                } catch (Exception e) {
                    zzpk.zzc("Exception occurred while starting method tracing.", e);
                }
            }
        };
    }

    private void zzbz() {
        if (zzgd.zzEz.get().booleanValue()) {
            Timer timer = new Timer();
            timer.schedule(zza(timer, new CountDownLatch(zzgd.zzEB.get().intValue())), 0L, zzgd.zzEA.get().longValue());
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void destroy() {
        zzac.zzdj("destroy must be called on the main UI thread.");
        this.zzsr.cancel();
        this.zzsu.zzk(this.zzss.zzvs);
        this.zzss.destroy();
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean isLoading() {
        return this.zzsq;
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean isReady() {
        zzac.zzdj("isLoaded must be called on the main UI thread.");
        return this.zzss.zzvp == null && this.zzss.zzvq == null && this.zzss.zzvs != null;
    }

    @Override // com.google.android.gms.internal.zzdx
    public void onAdClicked() {
        if (this.zzss.zzvs == null) {
            zzpk.zzbh("Ad state was null when trying to ping click URLs.");
            return;
        }
        zzpk.zzbf("Pinging click URLs.");
        if (this.zzss.zzvu != null) {
            this.zzss.zzvu.zzjW();
        }
        if (this.zzss.zzvs.zzKF != null) {
            String zzF = zzw.zzdl().zzF(this.zzss.zzqn);
            zzw.zzcM().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, zza(zzF, this.zzss.zzvs.zzKF));
            if (this.zzss.zzvs.zzKF.size() > 0) {
                zzw.zzdl().zzf(this.zzss.zzqn, zzF);
            }
        }
        if (this.zzss.zzvv == null) {
            return;
        }
        try {
            this.zzss.zzvv.onAdClicked();
        } catch (RemoteException e) {
            zzpk.zzc("Could not notify onAdClicked event.", e);
        }
    }

    @Override // com.google.android.gms.internal.zzhz
    public void onAppEvent(String str, String str2) {
        if (this.zzss.zzvx != null) {
            try {
                this.zzss.zzvx.onAppEvent(str, str2);
            } catch (RemoteException e) {
                zzpk.zzc("Could not call the AppEventListener.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void pause() {
        zzac.zzdj("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.zzet
    public void resume() {
        zzac.zzdj("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.zzet
    public void setManualImpressionsEnabled(boolean z) {
        throw new UnsupportedOperationException("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
    }

    @Override // com.google.android.gms.internal.zzet
    public void setUserId(String str) {
        zzpk.zzbh("RewardedVideoAd.setUserId() is deprecated. Please do not call this method.");
    }

    @Override // com.google.android.gms.internal.zzet
    public void stopLoading() {
        zzac.zzdj("stopLoading must be called on the main UI thread.");
        this.zzsq = false;
        this.zzss.zzi(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<String> zza(String str, List<String> list) {
        if (str == null) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str2 : list) {
            arrayList.add(zze(str, str2));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzeg zzegVar) {
        zzac.zzdj("setAdSize must be called on the main UI thread.");
        this.zzss.zzvr = zzegVar;
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzNH != null && this.zzss.zzvO == 0) {
            this.zzss.zzvs.zzNH.zza(zzegVar);
        }
        if (this.zzss.zzvo == null) {
            return;
        }
        if (this.zzss.zzvo.getChildCount() > 1) {
            this.zzss.zzvo.removeView(this.zzss.zzvo.getNextView());
        }
        this.zzss.zzvo.setMinimumWidth(zzegVar.widthPixels);
        this.zzss.zzvo.setMinimumHeight(zzegVar.heightPixels);
        this.zzss.zzvo.requestLayout();
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzeo zzeoVar) {
        zzac.zzdj("setAdListener must be called on the main UI thread.");
        this.zzss.zzvv = zzeoVar;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzep zzepVar) {
        zzac.zzdj("setAdListener must be called on the main UI thread.");
        this.zzss.zzvw = zzepVar;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzev zzevVar) {
        zzac.zzdj("setAppEventListener must be called on the main UI thread.");
        this.zzss.zzvx = zzevVar;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzex zzexVar) {
        zzac.zzdj("setCorrelationIdProvider must be called on the main UI thread");
        this.zzss.zzvy = zzexVar;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzfc zzfcVar) {
        zzac.zzdj("setIconAdOptions must be called on the main UI thread.");
        this.zzss.zzvH = zzfcVar;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzft zzftVar) {
        zzac.zzdj("setVideoOptions must be called on the main UI thread.");
        this.zzss.zzvG = zzftVar;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzgp zzgpVar) {
        throw new IllegalStateException("setOnCustomRenderedAdLoadedListener is not supported for current ad type");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzle zzleVar) {
        throw new IllegalStateException("setInAppPurchaseListener is not supported for current ad type");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzli zzliVar, String str) {
        throw new IllegalStateException("setPlayStorePurchaseParams is not supported for current ad type");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zznw zznwVar) {
        zzac.zzdj("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzss.zzvJ = zznwVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(zzoo zzooVar) {
        if (this.zzss.zzvJ == null) {
            return;
        }
        String str = "";
        int i = 1;
        if (zzooVar != null) {
            try {
                str = zzooVar.type;
                i = zzooVar.zzVP;
            } catch (RemoteException e) {
                zzpk.zzc("Could not call RewardedVideoAdListener.onRewarded().", e);
                return;
            }
        }
        this.zzss.zzvJ.zza(new zznq(str, i));
    }

    @Override // com.google.android.gms.internal.zzmf.zza
    public void zza(zzpb.zza zzaVar) {
        if (zzaVar.zzWm.zzSr != -1 && !TextUtils.isEmpty(zzaVar.zzWm.zzSA)) {
            long zzw = zzw(zzaVar.zzWm.zzSA);
            if (zzw != -1) {
                this.zzsn.zza(this.zzsn.zzc(zzw + zzaVar.zzWm.zzSr), "stc");
            }
        }
        this.zzsn.zzX(zzaVar.zzWm.zzSA);
        this.zzsn.zza(this.zzso, "arf");
        this.zzsp = this.zzsn.zzfB();
        this.zzsn.zzh("gqi", zzaVar.zzWm.zzSB);
        this.zzss.zzvp = null;
        this.zzss.zzvt = zzaVar;
        zza(zzaVar, this.zzsn);
    }

    protected abstract void zza(zzpb.zza zzaVar, zzgl zzglVar);

    @Override // com.google.android.gms.internal.zzpg
    public void zza(HashSet<zzpc> hashSet) {
        this.zzss.zza(hashSet);
    }

    protected abstract boolean zza(zzec zzecVar, zzgl zzglVar);

    boolean zza(zzpb zzpbVar) {
        return false;
    }

    protected abstract boolean zza(zzpb zzpbVar, zzpb zzpbVar2);

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzb(View view) {
        zzx.zza zzaVar = this.zzss.zzvo;
        if (zzaVar != null) {
            zzaVar.addView(view, zzw.zzcO().zzkT());
        }
    }

    @Override // com.google.android.gms.internal.zzlq.zza
    public void zzb(zzpb zzpbVar) {
        this.zzsn.zza(this.zzsp, "awr");
        this.zzss.zzvq = null;
        if (zzpbVar.errorCode != -2 && zzpbVar.errorCode != 3) {
            zzw.zzcQ().zzb(this.zzss.zzdm());
        }
        if (zzpbVar.errorCode == -1) {
            this.zzsq = false;
            return;
        }
        if (zza(zzpbVar)) {
            zzpk.zzbf("Ad refresh scheduled.");
        }
        if (zzpbVar.errorCode != -2) {
            zzh(zzpbVar.errorCode);
            return;
        }
        if (this.zzss.zzvM == null) {
            this.zzss.zzvM = new zzph(this.zzss.zzvl);
        }
        this.zzsu.zzj(this.zzss.zzvs);
        if (zza(this.zzss.zzvs, zzpbVar)) {
            this.zzss.zzvs = zzpbVar;
            this.zzss.zzdv();
            this.zzsn.zzh("is_mraid", this.zzss.zzvs.zzdD() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
            this.zzsn.zzh("is_mediation", this.zzss.zzvs.zzSn ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
            if (this.zzss.zzvs.zzNH != null && this.zzss.zzvs.zzNH.zzlv() != null) {
                this.zzsn.zzh("is_delay_pl", this.zzss.zzvs.zzNH.zzlv().zzlR() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
            }
            this.zzsn.zza(this.zzso, "ttc");
            if (zzw.zzcQ().zzkk() != null) {
                zzw.zzcQ().zzkk().zza(this.zzsn);
            }
            if (this.zzss.zzdq()) {
                zzbJ();
            }
        }
        if (zzpbVar.zzKI == null) {
            return;
        }
        zzw.zzcM().zza(this.zzss.zzqn, zzpbVar.zzKI);
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean zzb(zzec zzecVar) {
        zzac.zzdj("loadAd must be called on the main UI thread.");
        zzw.zzcR().zzev();
        if (zzgd.zzCX.get().booleanValue()) {
            zzec.zzi(zzecVar);
        }
        zzec zza = zza(zzecVar);
        if (this.zzss.zzvp != null || this.zzss.zzvq != null) {
            if (this.zzst != null) {
                zzpk.zzbh("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
            } else {
                zzpk.zzbh("Loading already in progress, saving this object for future refreshes.");
            }
            this.zzst = zza;
            return false;
        }
        zzpk.zzbg("Starting ad request.");
        zzbA();
        this.zzso = this.zzsn.zzfB();
        if (!zza.zzyW) {
            String valueOf = String.valueOf(zzel.zzeT().zzad(this.zzss.zzqn));
            zzpk.zzbg(new StringBuilder(String.valueOf(valueOf).length() + 71).append("Use AdRequest.Builder.addTestDevice(\"").append(valueOf).append("\") to get test ads on this device.").toString());
        }
        this.zzsr.zzg(zza);
        this.zzsq = zza(zza, this.zzsn);
        return this.zzsq;
    }

    public void zzbA() {
        this.zzsn = new zzgl(zzgd.zzBZ.get().booleanValue(), "load_ad", this.zzss.zzvr.zzzy);
        this.zzso = new zzgj(-1L, null, null);
        this.zzsp = new zzgj(-1L, null, null);
    }

    @Override // com.google.android.gms.internal.zzet
    public IObjectWrapper zzbB() {
        zzac.zzdj("getAdFrame must be called on the main UI thread.");
        return com.google.android.gms.dynamic.zzd.zzA(this.zzss.zzvo);
    }

    @Override // com.google.android.gms.internal.zzet
    public zzeg zzbC() {
        zzac.zzdj("getAdSize must be called on the main UI thread.");
        if (this.zzss.zzvr == null) {
            return null;
        }
        return new zzfr(this.zzss.zzvr);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public void zzbD() {
        zzbH();
    }

    @Override // com.google.android.gms.internal.zzet
    public void zzbE() {
        zzac.zzdj("recordManualImpression must be called on the main UI thread.");
        if (this.zzss.zzvs == null) {
            zzpk.zzbh("Ad state was null when trying to ping manual tracking URLs.");
            return;
        }
        zzpk.zzbf("Pinging manual tracking URLs.");
        if (this.zzss.zzvs.zzSp == null || this.zzss.zzvs.zzWk) {
            return;
        }
        zzw.zzcM().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, this.zzss.zzvs.zzSp);
        this.zzss.zzvs.zzWk = true;
        zzbL();
    }

    @Override // com.google.android.gms.internal.zzet
    public zzfa zzbF() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzbG() {
        zzpk.zzbg("Ad closing.");
        if (this.zzss.zzvw != null) {
            try {
                this.zzss.zzvw.onAdClosed();
            } catch (RemoteException e) {
                zzpk.zzc("Could not call AdListener.onAdClosed().", e);
            }
        }
        if (this.zzss.zzvJ != null) {
            try {
                this.zzss.zzvJ.onRewardedVideoAdClosed();
            } catch (RemoteException e2) {
                zzpk.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdClosed().", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzbH() {
        zzpk.zzbg("Ad leaving application.");
        if (this.zzss.zzvw != null) {
            try {
                this.zzss.zzvw.onAdLeftApplication();
            } catch (RemoteException e) {
                zzpk.zzc("Could not call AdListener.onAdLeftApplication().", e);
            }
        }
        if (this.zzss.zzvJ != null) {
            try {
                this.zzss.zzvJ.onRewardedVideoAdLeftApplication();
            } catch (RemoteException e2) {
                zzpk.zzc("Could not call  RewardedVideoAdListener.onRewardedVideoAdLeftApplication().", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzbI() {
        zzpk.zzbg("Ad opening.");
        if (this.zzss.zzvw != null) {
            try {
                this.zzss.zzvw.onAdOpened();
            } catch (RemoteException e) {
                zzpk.zzc("Could not call AdListener.onAdOpened().", e);
            }
        }
        if (this.zzss.zzvJ != null) {
            try {
                this.zzss.zzvJ.onRewardedVideoAdOpened();
            } catch (RemoteException e2) {
                zzpk.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdOpened().", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzbJ() {
        zzpk.zzbg("Ad finished loading.");
        this.zzsq = false;
        if (this.zzss.zzvw != null) {
            try {
                this.zzss.zzvw.onAdLoaded();
            } catch (RemoteException e) {
                zzpk.zzc("Could not call AdListener.onAdLoaded().", e);
            }
        }
        if (this.zzss.zzvJ != null) {
            try {
                this.zzss.zzvJ.onRewardedVideoAdLoaded();
            } catch (RemoteException e2) {
                zzpk.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdLoaded().", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzbK() {
        if (this.zzss.zzvJ == null) {
            return;
        }
        try {
            this.zzss.zzvJ.onRewardedVideoStarted();
        } catch (RemoteException e) {
            zzpk.zzc("Could not call RewardedVideoAdListener.onVideoStarted().", e);
        }
    }

    public void zzbL() {
        zzd(this.zzss.zzvs);
    }

    public zze zzby() {
        return this.zzsv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzc(zzpb zzpbVar) {
        if (zzpbVar == null) {
            zzpk.zzbh("Ad state was null when trying to ping impression URLs.");
            return;
        }
        zzpk.zzbf("Pinging Impression URLs.");
        if (this.zzss.zzvu != null) {
            this.zzss.zzvu.zzjV();
        }
        if (zzpbVar.zzKG == null || zzpbVar.zzWj) {
            return;
        }
        String zzF = zzw.zzdl().zzF(this.zzss.zzqn);
        zzw.zzcM().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, zza(zzF, zzpbVar.zzKG));
        zzpbVar.zzWj = true;
        zzd(zzpbVar);
        if (zzpbVar.zzKG.size() <= 0) {
            return;
        }
        zzw.zzdl().zzg(this.zzss.zzqn, zzF);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzc(zzec zzecVar) {
        if (this.zzss.zzvo == null) {
            return false;
        }
        ViewParent parent = this.zzss.zzvo.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        return zzw.zzcM().zza(view, view.getContext());
    }

    public void zzd(zzec zzecVar) {
        if (zzc(zzecVar)) {
            zzb(zzecVar);
            return;
        }
        zzpk.zzbg("Ad is not visible. Not refreshing ad.");
        this.zzsr.zzh(zzecVar);
    }

    protected void zzd(zzpb zzpbVar) {
        if (zzpbVar == null || TextUtils.isEmpty(zzpbVar.zzSJ) || zzpbVar.zzWl || !zzw.zzcU().zzkZ()) {
            return;
        }
        zzpk.zzbf("Sending troubleshooting signals to the server.");
        zzw.zzcU().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, zzpbVar.zzSJ, this.zzss.zzvl);
        zzpbVar.zzWl = true;
    }

    protected String zze(String str, String str2) {
        return (str == null || TextUtils.isEmpty(str2)) ? str2 : zzw.zzcM().zzc(str2, "fbs_aeid", str).toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzh(int i) {
        zzpk.zzbh(new StringBuilder(30).append("Failed to load ad: ").append(i).toString());
        this.zzsq = false;
        if (this.zzss.zzvw != null) {
            try {
                this.zzss.zzvw.onAdFailedToLoad(i);
            } catch (RemoteException e) {
                zzpk.zzc("Could not call AdListener.onAdFailedToLoad().", e);
            }
        }
        if (this.zzss.zzvJ != null) {
            try {
                this.zzss.zzvJ.onRewardedVideoAdFailedToLoad(i);
            } catch (RemoteException e2) {
                zzpk.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdFailedToLoad().", e2);
            }
        }
    }

    long zzw(String str) {
        int indexOf = str.indexOf("ufe");
        int indexOf2 = str.indexOf(44, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        try {
            return Long.parseLong(str.substring(indexOf + 4, indexOf2));
        } catch (IndexOutOfBoundsException e) {
            zzpk.zzbh("Invalid index for Url fetch time in CSI latency info.");
            return -1L;
        } catch (NumberFormatException e2) {
            zzpk.zzbh("Cannot find valid format of Url fetch time in CSI latency info.");
            return -1L;
        }
    }
}
