package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewTreeObserver;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzqx;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzly {
    private final Context mContext;
    private final com.google.android.gms.ads.internal.zzs zzGJ;
    private final zzaw zzGP;
    private final zzpb.zza zzPR;
    private ViewTreeObserver.OnGlobalLayoutListener zzQV;
    private ViewTreeObserver.OnScrollChangedListener zzQW;
    private final zzgl zzsn;
    private final Object zzrJ = new Object();
    private int zzvR = -1;
    private int zzvS = -1;
    private zzpz zzvT = new zzpz(200);

    public zzly(Context context, zzaw zzawVar, zzpb.zza zzaVar, zzgl zzglVar, com.google.android.gms.ads.internal.zzs zzsVar) {
        this.mContext = context;
        this.zzGP = zzawVar;
        this.zzPR = zzaVar;
        this.zzsn = zzglVar;
        this.zzGJ = zzsVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewTreeObserver.OnGlobalLayoutListener zza(final WeakReference<zzqw> weakReference) {
        if (this.zzQV == null) {
            this.zzQV = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.gms.internal.zzly.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    zzly.this.zza((WeakReference<zzqw>) weakReference, false);
                }
            };
        }
        return this.zzQV;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(WeakReference<zzqw> weakReference, boolean z) {
        zzqw zzqwVar;
        if (weakReference == null || (zzqwVar = weakReference.get()) == null || zzqwVar.getView() == null) {
            return;
        }
        if (z && !this.zzvT.tryAcquire()) {
            return;
        }
        int[] iArr = new int[2];
        zzqwVar.getView().getLocationOnScreen(iArr);
        int zzc = zzel.zzeT().zzc(this.mContext, iArr[0]);
        int zzc2 = zzel.zzeT().zzc(this.mContext, iArr[1]);
        synchronized (this.zzrJ) {
            if (this.zzvR != zzc || this.zzvS != zzc2) {
                this.zzvR = zzc;
                this.zzvS = zzc2;
                zzqwVar.zzlv().zza(this.zzvR, this.zzvS, !z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewTreeObserver.OnScrollChangedListener zzb(final WeakReference<zzqw> weakReference) {
        if (this.zzQW == null) {
            this.zzQW = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.zzly.4
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public void onScrollChanged() {
                    zzly.this.zza((WeakReference<zzqw>) weakReference, true);
                }
            };
        }
        return this.zzQW;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzj(zzqw zzqwVar) {
        zzqx zzlv = zzqwVar.zzlv();
        zzlv.zza("/video", zzic.zzHQ);
        zzlv.zza("/videoMeta", zzic.zzHR);
        zzlv.zza("/precache", zzic.zzHT);
        zzlv.zza("/delayPageLoaded", zzic.zzHW);
        zzlv.zza("/instrument", zzic.zzHU);
        zzlv.zza("/log", zzic.zzHL);
        zzlv.zza("/videoClicked", zzic.zzHM);
        zzlv.zza("/trackActiveViewUnit", new zzid() { // from class: com.google.android.gms.internal.zzly.2
            @Override // com.google.android.gms.internal.zzid
            public void zza(zzqw zzqwVar2, Map<String, String> map) {
                zzly.this.zzGJ.zzct();
            }
        });
    }

    public zzqm<zzqw> zze(final JSONObject jSONObject) {
        final zzqj zzqjVar = new zzqj();
        com.google.android.gms.ads.internal.zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzly.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final zzqw zzjj = zzly.this.zzjj();
                    zzly.this.zzGJ.zzc(zzjj);
                    WeakReference weakReference = new WeakReference(zzjj);
                    zzjj.zzlv().zza(zzly.this.zza(weakReference), zzly.this.zzb(weakReference));
                    zzly.this.zzj(zzjj);
                    zzjj.zzlv().zza(new zzqx.zzb() { // from class: com.google.android.gms.internal.zzly.1.1
                        @Override // com.google.android.gms.internal.zzqx.zzb
                        public void zzk(zzqw zzqwVar) {
                            zzjj.zza("google.afma.nativeAds.renderVideo", jSONObject);
                        }
                    });
                    zzjj.zzlv().zza(new zzqx.zza() { // from class: com.google.android.gms.internal.zzly.1.2
                        @Override // com.google.android.gms.internal.zzqx.zza
                        public void zza(zzqw zzqwVar, boolean z) {
                            zzly.this.zzGJ.zzcw();
                            zzqjVar.zzh(zzqwVar);
                        }
                    });
                    zzjj.loadUrl(zzgd.zzEl.get());
                } catch (Exception e) {
                    zzpk.zzc("Exception occurred while getting video view", e);
                    zzqjVar.zzh(null);
                }
            }
        });
        return zzqjVar;
    }

    zzqw zzjj() {
        return com.google.android.gms.ads.internal.zzw.zzcN().zza(this.mContext, zzeg.zzk(this.mContext), false, false, this.zzGP, this.zzPR.zzTi.zzvn, this.zzsn, null, this.zzGJ.zzby());
    }
}
