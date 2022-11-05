package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzcy;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzfa;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzot;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzqx;
import com.google.android.gms.internal.zzrb;
@zzme
/* loaded from: classes.dex */
public class zzg extends zzc implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private boolean zzsS;

    /* loaded from: classes2.dex */
    public class zza {
        public zza() {
        }

        public void onClick() {
            zzg.this.onAdClicked();
        }
    }

    public zzg(Context context, zzeg zzegVar, String str, zzka zzkaVar, zzqh zzqhVar, zze zzeVar) {
        super(context, zzegVar, str, zzkaVar, zzqhVar, zzeVar);
    }

    private zzeg zzb(zzpb.zza zzaVar) {
        AdSize zzeF;
        if (zzaVar.zzWm.zzzC) {
            return this.zzss.zzvr;
        }
        String str = zzaVar.zzWm.zzSq;
        if (str != null) {
            String[] split = str.split("[xX]");
            split[0] = split[0].trim();
            split[1] = split[1].trim();
            zzeF = new AdSize(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
        } else {
            zzeF = this.zzss.zzvr.zzeF();
        }
        return new zzeg(this.zzss.zzqn, zzeF);
    }

    private boolean zzb(zzpb zzpbVar, zzpb zzpbVar2) {
        if (zzpbVar2.zzSn) {
            View zzg = zzp.zzg(zzpbVar2);
            if (zzg == null) {
                zzpk.zzbh("Could not get mediation view");
                return false;
            }
            View nextView = this.zzss.zzvo.getNextView();
            if (nextView != null) {
                if (nextView instanceof zzqw) {
                    ((zzqw) nextView).destroy();
                }
                this.zzss.zzvo.removeView(nextView);
            }
            if (!zzp.zzh(zzpbVar2)) {
                try {
                    zzb(zzg);
                } catch (Throwable th) {
                    zzw.zzcQ().zza(th, "BannerAdManager.swapViews");
                    zzpk.zzc("Could not add mediation view to view hierarchy.", th);
                    return false;
                }
            }
        } else if (zzpbVar2.zzWe != null && zzpbVar2.zzNH != null) {
            zzpbVar2.zzNH.zza(zzpbVar2.zzWe);
            this.zzss.zzvo.removeAllViews();
            this.zzss.zzvo.setMinimumWidth(zzpbVar2.zzWe.widthPixels);
            this.zzss.zzvo.setMinimumHeight(zzpbVar2.zzWe.heightPixels);
            zzb(zzpbVar2.zzNH.getView());
        }
        if (this.zzss.zzvo.getChildCount() > 1) {
            this.zzss.zzvo.showNext();
        }
        if (zzpbVar != null) {
            View nextView2 = this.zzss.zzvo.getNextView();
            if (nextView2 instanceof zzqw) {
                ((zzqw) nextView2).zza(this.zzss.zzqn, this.zzss.zzvr, this.zzsn);
            } else if (nextView2 != null) {
                this.zzss.zzvo.removeView(nextView2);
            }
            this.zzss.zzdp();
        }
        this.zzss.zzvo.setVisibility(0);
        return true;
    }

    private void zze(final zzpb zzpbVar) {
        com.google.android.gms.common.util.zzt.zzzg();
        if (!this.zzss.zzdq()) {
            if (this.zzss.zzvN == null || zzpbVar.zzWa == null) {
                return;
            }
            this.zzsu.zza(this.zzss.zzvr, zzpbVar, this.zzss.zzvN);
        } else if (zzpbVar.zzNH == null) {
        } else {
            if (zzpbVar.zzWa != null) {
                this.zzsu.zza(this.zzss.zzvr, zzpbVar);
            }
            final zzcy zzcyVar = new zzcy(this.zzss.zzqn, zzpbVar.zzNH.getView());
            if (zzw.zzdl().zzjR()) {
                zzcyVar.zza(new zzov(this.zzss.zzqn, this.zzss.zzvl));
            }
            if (zzpbVar.zzdD()) {
                zzcyVar.zza(zzpbVar.zzNH);
            } else {
                zzpbVar.zzNH.zzlv().zza(new zzqx.zzc(this) { // from class: com.google.android.gms.ads.internal.zzg.3
                    @Override // com.google.android.gms.internal.zzqx.zzc
                    public void zzcf() {
                        zzcyVar.zza(zzpbVar.zzNH);
                    }
                });
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        zzf(this.zzss.zzvs);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        zzf(this.zzss.zzvs);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void setManualImpressionsEnabled(boolean z) {
        zzac.zzdj("setManualImpressionsEnabled must be called from the main thread.");
        this.zzsS = z;
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.internal.zzet
    public void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zzc
    public zzqw zza(zzpb.zza zzaVar, zzf zzfVar, zzot zzotVar) {
        if (this.zzss.zzvr.zzzA == null && this.zzss.zzvr.zzzC) {
            this.zzss.zzvr = zzb(zzaVar);
        }
        return super.zza(zzaVar, zzfVar, zzotVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zzb
    public void zza(zzpb zzpbVar, boolean z) {
        super.zza(zzpbVar, z);
        if (zzp.zzh(zzpbVar)) {
            zzp.zza(zzpbVar, new zza());
        }
    }

    @Override // com.google.android.gms.ads.internal.zzc, com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(zzpb zzpbVar, final zzpb zzpbVar2) {
        zzrb zzrbVar;
        if (!super.zza(zzpbVar, zzpbVar2)) {
            return false;
        }
        if (this.zzss.zzdq() && !zzb(zzpbVar, zzpbVar2)) {
            zzh(0);
            return false;
        }
        if (zzpbVar2.zzSF) {
            zzf(zzpbVar2);
            zzw.zzdk().zza((View) this.zzss.zzvo, (ViewTreeObserver.OnGlobalLayoutListener) this);
            zzw.zzdk().zza((View) this.zzss.zzvo, (ViewTreeObserver.OnScrollChangedListener) this);
            if (!zzpbVar2.zzWb) {
                final Runnable runnable = new Runnable() { // from class: com.google.android.gms.ads.internal.zzg.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzg.this.zzf(zzg.this.zzss.zzvs);
                    }
                };
                zzqx zzlv = zzpbVar2.zzNH != null ? zzpbVar2.zzNH.zzlv() : null;
                if (zzlv != null) {
                    zzlv.zza(new zzqx.zze(this) { // from class: com.google.android.gms.ads.internal.zzg.2
                        @Override // com.google.android.gms.internal.zzqx.zze
                        public void zzce() {
                            if (!zzpbVar2.zzWb) {
                                zzw.zzcM();
                                zzpo.zzb(runnable);
                            }
                        }
                    });
                }
            }
        } else if (!this.zzss.zzdr() || zzgd.zzEh.get().booleanValue()) {
            zza(zzpbVar2, false);
        }
        if (zzpbVar2.zzNH != null) {
            zzrbVar = zzpbVar2.zzNH.zzlG();
            zzqx zzlv2 = zzpbVar2.zzNH.zzlv();
            if (zzlv2 != null) {
                zzlv2.zzlT();
            }
        } else {
            zzrbVar = null;
        }
        if (this.zzss.zzvG != null && zzrbVar != null) {
            zzrbVar.zzQ(this.zzss.zzvG.zzAU);
        }
        zze(zzpbVar2);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public boolean zzb(zzec zzecVar) {
        return super.zzb(zze(zzecVar));
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public zzfa zzbF() {
        zzac.zzdj("getVideoController must be called from the main thread.");
        if (this.zzss.zzvs == null || this.zzss.zzvs.zzNH == null) {
            return null;
        }
        return this.zzss.zzvs.zzNH.zzlG();
    }

    @Override // com.google.android.gms.ads.internal.zzb
    protected boolean zzbM() {
        boolean z = true;
        if (!zzw.zzcM().zze(this.zzss.zzqn, this.zzss.zzqn.getPackageName(), "android.permission.INTERNET")) {
            zzel.zzeT().zza(this.zzss.zzvo, this.zzss.zzvr, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            z = false;
        }
        if (!zzw.zzcM().zzJ(this.zzss.zzqn)) {
            zzel.zzeT().zza(this.zzss.zzvo, this.zzss.zzvr, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            z = false;
        }
        if (!z && this.zzss.zzvo != null) {
            this.zzss.zzvo.setVisibility(0);
        }
        return z;
    }

    zzec zze(zzec zzecVar) {
        if (zzecVar.zzyY == this.zzsS) {
            return zzecVar;
        }
        return new zzec(zzecVar.versionCode, zzecVar.zzyT, zzecVar.extras, zzecVar.zzyU, zzecVar.zzyV, zzecVar.zzyW, zzecVar.zzyX, zzecVar.zzyY || this.zzsS, zzecVar.zzyZ, zzecVar.zzza, zzecVar.zzzb, zzecVar.zzzc, zzecVar.zzzd, zzecVar.zzze, zzecVar.zzzf, zzecVar.zzzg, zzecVar.zzzh, zzecVar.zzzi);
    }

    void zzf(zzpb zzpbVar) {
        if (zzpbVar != null && !zzpbVar.zzWb && this.zzss.zzvo != null && zzw.zzcM().zza(this.zzss.zzvo, this.zzss.zzqn) && this.zzss.zzvo.getGlobalVisibleRect(new Rect(), null)) {
            if (zzpbVar != null && zzpbVar.zzNH != null && zzpbVar.zzNH.zzlv() != null) {
                zzpbVar.zzNH.zzlv().zza((zzqx.zze) null);
            }
            zza(zzpbVar, false);
            zzpbVar.zzWb = true;
        }
    }
}
