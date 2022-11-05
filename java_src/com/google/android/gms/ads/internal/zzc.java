package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgl;
import com.google.android.gms.internal.zzgm;
import com.google.android.gms.internal.zzgp;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zzjj;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzkx;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzot;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzqw;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public abstract class zzc extends zzb implements zzi, zzkx {
    public zzc(Context context, zzeg zzegVar, String str, zzka zzkaVar, zzqh zzqhVar, zze zzeVar) {
        super(context, zzegVar, str, zzkaVar, zzqhVar, zzeVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzqw zza(zzpb.zza zzaVar, zzf zzfVar, zzot zzotVar) {
        zzqw zzqwVar = null;
        View nextView = this.zzss.zzvo.getNextView();
        if (nextView instanceof zzqw) {
            zzqwVar = (zzqw) nextView;
            if (zzgd.zzCI.get().booleanValue()) {
                zzpk.zzbf("Reusing webview...");
                zzqwVar.zza(this.zzss.zzqn, this.zzss.zzvr, this.zzsn);
            } else {
                zzqwVar.destroy();
                zzqwVar = null;
            }
        }
        if (zzqwVar == null) {
            if (nextView != null) {
                this.zzss.zzvo.removeView(nextView);
            }
            zzqwVar = zzw.zzcN().zza(this.zzss.zzqn, this.zzss.zzvr, false, false, this.zzss.zzvm, this.zzss.zzvn, this.zzsn, this, this.zzsv);
            if (this.zzss.zzvr.zzzA == null) {
                zzb(zzqwVar.getView());
            }
        }
        zzqw zzqwVar2 = zzqwVar;
        zzqwVar2.zzlv().zza(this, this, this, this, false, this, null, zzfVar, this, zzotVar);
        zza(zzqwVar2);
        zzqwVar2.zzbj(zzaVar.zzTi.zzRL);
        return zzqwVar2;
    }

    @Override // com.google.android.gms.internal.zzkx
    public void zza(int i, int i2, int i3, int i4) {
        zzbI();
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void zza(zzgp zzgpVar) {
        zzac.zzdj("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzss.zzvI = zzgpVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(zzjj zzjjVar) {
        zzjjVar.zza("/trackActiveViewUnit", new zzid() { // from class: com.google.android.gms.ads.internal.zzc.1
            @Override // com.google.android.gms.internal.zzid
            public void zza(zzqw zzqwVar, Map<String, String> map) {
                if (zzc.this.zzss.zzvs != null) {
                    zzc.this.zzsu.zza(zzc.this.zzss.zzvr, zzc.this.zzss.zzvs, zzqwVar.getView(), zzqwVar);
                } else {
                    zzpk.zzbh("Request to enable ActiveView before adState is available.");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public void zza(final zzpb.zza zzaVar, final zzgl zzglVar) {
        if (zzaVar.errorCode != -2) {
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzc.2
                @Override // java.lang.Runnable
                public void run() {
                    zzc.this.zzb(new zzpb(zzaVar, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        if (zzaVar.zzvr != null) {
            this.zzss.zzvr = zzaVar.zzvr;
        }
        if (!zzaVar.zzWm.zzSn || zzaVar.zzWm.zzzD) {
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzc.3
                @Override // java.lang.Runnable
                public void run() {
                    if (zzaVar.zzWm.zzSw && zzc.this.zzss.zzvI != null) {
                        String str = null;
                        if (zzaVar.zzWm.zzNJ != null) {
                            str = zzw.zzcM().zzaX(zzaVar.zzWm.zzNJ);
                        }
                        zzgm zzgmVar = new zzgm(zzc.this, str, zzaVar.zzWm.body);
                        zzc.this.zzss.zzvO = 1;
                        try {
                            zzc.this.zzsq = false;
                            zzc.this.zzss.zzvI.zza(zzgmVar);
                            return;
                        } catch (RemoteException e) {
                            zzpk.zzc("Could not call the onCustomRenderedAdLoadedListener.", e);
                            zzc.this.zzsq = true;
                        }
                    }
                    final zzf zzfVar = new zzf(zzc.this.zzss.zzqn, zzaVar);
                    zzqw zza = zzc.this.zza(zzaVar, zzfVar, r3);
                    zza.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.ads.internal.zzc.3.1
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            zzfVar.recordClick();
                            return false;
                        }
                    });
                    zza.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.ads.internal.zzc.3.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            zzfVar.recordClick();
                        }
                    });
                    zzc.this.zzss.zzvO = 0;
                    zzc.this.zzss.zzvq = zzw.zzcL().zza(zzc.this.zzss.zzqn, zzc.this, zzaVar, zzc.this.zzss.zzvm, zza, zzc.this.zzsz, zzc.this, zzglVar);
                }
            });
            return;
        }
        this.zzss.zzvO = 0;
        this.zzss.zzvq = zzw.zzcL().zza(this.zzss.zzqn, this, zzaVar, this.zzss.zzvm, null, this.zzsz, this, zzglVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(zzpb zzpbVar, zzpb zzpbVar2) {
        if (this.zzss.zzdq() && this.zzss.zzvo != null) {
            this.zzss.zzvo.zzdw().zzbb(zzpbVar2.zzSs);
        }
        return super.zza(zzpbVar, zzpbVar2);
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public void zzbZ() {
        onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public void zzc(View view) {
        this.zzss.zzvN = view;
        zzb(new zzpb(this.zzss.zzvt, null, null, null, null, null, null, null));
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public void zzca() {
        recordImpression();
        zzbE();
    }

    @Override // com.google.android.gms.internal.zzkx
    public void zzcb() {
        zzbG();
    }
}
