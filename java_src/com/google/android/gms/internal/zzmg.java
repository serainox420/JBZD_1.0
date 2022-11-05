package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.internal.zzmf;
import com.google.android.gms.internal.zzmh;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzpb;
import com.openx.view.mraid.JSInterface;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzmg extends zzpj implements zzmh.zza {
    private final Context mContext;
    zzjr zzKY;
    private zzmk zzLo;
    zzmn zzPS;
    private Runnable zzPT;
    private final Object zzPU = new Object();
    private final zzmf.zza zzRl;
    private final zzmk.zza zzRm;
    zzpq zzRn;

    /* JADX INFO: Access modifiers changed from: package-private */
    @zzme
    /* loaded from: classes.dex */
    public static final class zza extends Exception {
        private final int zzPY;

        public zza(String str, int i) {
            super(str);
            this.zzPY = i;
        }

        public int getErrorCode() {
            return this.zzPY;
        }
    }

    public zzmg(Context context, zzmk.zza zzaVar, zzmf.zza zzaVar2) {
        this.zzRl = zzaVar2;
        this.mContext = context;
        this.zzRm = zzaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzd(int i, String str) {
        if (i == 3 || i == -1) {
            zzpk.zzbg(str);
        } else {
            zzpk.zzbh(str);
        }
        if (this.zzPS == null) {
            this.zzPS = new zzmn(i);
        } else {
            this.zzPS = new zzmn(i, this.zzPS.zzKL);
        }
        this.zzRl.zza(new zzpb.zza(this.zzLo != null ? this.zzLo : new zzmk(this.zzRm, -1L, null, null, null), this.zzPS, this.zzKY, null, i, -1L, this.zzPS.zzSr, null));
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
        synchronized (this.zzPU) {
            if (this.zzRn != null) {
                this.zzRn.cancel();
            }
        }
    }

    zzpq zza(zzqh zzqhVar, zzqp<zzmk> zzqpVar) {
        return zzmh.zza(this.mContext, zzqhVar, zzqpVar, this);
    }

    @Override // com.google.android.gms.internal.zzmh.zza
    public void zza(zzmn zzmnVar) {
        JSONObject jSONObject;
        zzpk.zzbf("Received ad response.");
        this.zzPS = zzmnVar;
        long elapsedRealtime = com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime();
        synchronized (this.zzPU) {
            this.zzRn = null;
        }
        com.google.android.gms.ads.internal.zzw.zzcQ().zzd(this.mContext, this.zzPS.zzRV);
        if (zzgd.zzDc.get().booleanValue()) {
            if (this.zzPS.zzSh) {
                com.google.android.gms.ads.internal.zzw.zzcQ().zzk(this.mContext, this.zzLo.zzvl);
            } else {
                com.google.android.gms.ads.internal.zzw.zzcQ().zzl(this.mContext, this.zzLo.zzvl);
            }
        }
        try {
            if (this.zzPS.errorCode != -2 && this.zzPS.errorCode != -3) {
                throw new zza(new StringBuilder(66).append("There was a problem getting an ad response. ErrorCode: ").append(this.zzPS.errorCode).toString(), this.zzPS.errorCode);
            }
            zzjm();
            zzeg zzb = this.zzLo.zzvr.zzzA != null ? zzb(this.zzLo) : null;
            com.google.android.gms.ads.internal.zzw.zzcQ().zzF(this.zzPS.zzSx);
            com.google.android.gms.ads.internal.zzw.zzcQ().zzG(this.zzPS.zzSK);
            if (!TextUtils.isEmpty(this.zzPS.zzSv)) {
                try {
                    jSONObject = new JSONObject(this.zzPS.zzSv);
                } catch (Exception e) {
                    zzpk.zzb("Error parsing the JSON for Active View.", e);
                }
                this.zzRl.zza(new zzpb.zza(this.zzLo, this.zzPS, this.zzKY, zzb, -2, elapsedRealtime, this.zzPS.zzSr, jSONObject));
                zzpo.zzXC.removeCallbacks(this.zzPT);
            }
            jSONObject = null;
            this.zzRl.zza(new zzpb.zza(this.zzLo, this.zzPS, this.zzKY, zzb, -2, elapsedRealtime, this.zzPS.zzSr, jSONObject));
            zzpo.zzXC.removeCallbacks(this.zzPT);
        } catch (zza e2) {
            zzd(e2.getErrorCode(), e2.getMessage());
            zzpo.zzXC.removeCallbacks(this.zzPT);
        }
    }

    protected zzeg zzb(zzmk zzmkVar) throws zza {
        zzeg[] zzegVarArr;
        zzeg[] zzegVarArr2;
        if (this.zzPS.zzzC) {
            for (zzeg zzegVar : zzmkVar.zzvr.zzzA) {
                if (zzegVar.zzzC) {
                    return new zzeg(zzegVar, zzmkVar.zzvr.zzzA);
                }
            }
        }
        if (this.zzPS.zzSq == null) {
            throw new zza("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] split = this.zzPS.zzSq.split(JSInterface.JSON_X);
        if (split.length != 2) {
            String valueOf = String.valueOf(this.zzPS.zzSq);
            throw new zza(valueOf.length() != 0 ? "Invalid ad size format from the ad response: ".concat(valueOf) : new String("Invalid ad size format from the ad response: "), 0);
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            for (zzeg zzegVar2 : zzmkVar.zzvr.zzzA) {
                float f = this.mContext.getResources().getDisplayMetrics().density;
                int i = zzegVar2.width == -1 ? (int) (zzegVar2.widthPixels / f) : zzegVar2.width;
                int i2 = zzegVar2.height == -2 ? (int) (zzegVar2.heightPixels / f) : zzegVar2.height;
                if (parseInt == i && parseInt2 == i2 && !zzegVar2.zzzC) {
                    return new zzeg(zzegVar2, zzmkVar.zzvr.zzzA);
                }
            }
            String valueOf2 = String.valueOf(this.zzPS.zzSq);
            throw new zza(valueOf2.length() != 0 ? "The ad size from the ad response was not one of the requested sizes: ".concat(valueOf2) : new String("The ad size from the ad response was not one of the requested sizes: "), 0);
        } catch (NumberFormatException e) {
            String valueOf3 = String.valueOf(this.zzPS.zzSq);
            throw new zza(valueOf3.length() != 0 ? "Invalid ad size number from the ad response: ".concat(valueOf3) : new String("Invalid ad size number from the ad response: "), 0);
        }
    }

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        String string;
        zzpk.zzbf("AdLoaderBackgroundTask started.");
        this.zzPT = new Runnable() { // from class: com.google.android.gms.internal.zzmg.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (zzmg.this.zzPU) {
                    if (zzmg.this.zzRn == null) {
                        return;
                    }
                    zzmg.this.onStop();
                    zzmg.this.zzd(2, "Timed out waiting for ad response.");
                }
            }
        };
        zzpo.zzXC.postDelayed(this.zzPT, zzgd.zzDL.get().longValue());
        long elapsedRealtime = com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime();
        if (zzgd.zzDK.get().booleanValue() && this.zzRm.zzRy.extras != null && (string = this.zzRm.zzRy.extras.getString("_ad")) != null) {
            this.zzLo = new zzmk(this.zzRm, elapsedRealtime, null, null, null);
            zza(zznd.zza(this.mContext, this.zzLo, string));
            return;
        }
        final zzqq zzqqVar = new zzqq();
        zzpn.zza(new Runnable() { // from class: com.google.android.gms.internal.zzmg.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (zzmg.this.zzPU) {
                    zzmg.this.zzRn = zzmg.this.zza(zzmg.this.zzRm.zzvn, zzqqVar);
                    if (zzmg.this.zzRn == null) {
                        zzmg.this.zzd(0, "Could not start the ad request service.");
                        zzpo.zzXC.removeCallbacks(zzmg.this.zzPT);
                    }
                }
            }
        });
        String zzD = com.google.android.gms.ads.internal.zzw.zzdl().zzD(this.mContext);
        String zzE = com.google.android.gms.ads.internal.zzw.zzdl().zzE(this.mContext);
        String zzF = com.google.android.gms.ads.internal.zzw.zzdl().zzF(this.mContext);
        com.google.android.gms.ads.internal.zzw.zzdl().zzh(this.mContext, zzF);
        this.zzLo = new zzmk(this.zzRm, elapsedRealtime, zzD, zzE, zzF);
        zzqqVar.zzg(this.zzLo);
    }

    protected void zzjm() throws zza {
        if (this.zzPS.errorCode == -3) {
            return;
        }
        if (TextUtils.isEmpty(this.zzPS.body)) {
            throw new zza("No fill from ad server.", 3);
        }
        com.google.android.gms.ads.internal.zzw.zzcQ().zzc(this.mContext, this.zzPS.zzRG);
        if (this.zzPS.zzSn) {
            try {
                this.zzKY = new zzjr(this.zzPS.body);
                com.google.android.gms.ads.internal.zzw.zzcQ().zzH(this.zzKY.zzKJ);
            } catch (JSONException e) {
                zzpk.zzb("Could not parse mediation config.", e);
                String valueOf = String.valueOf(this.zzPS.body);
                throw new zza(valueOf.length() != 0 ? "Could not parse mediation config: ".concat(valueOf) : new String("Could not parse mediation config: "), 0);
            }
        } else {
            com.google.android.gms.ads.internal.zzw.zzcQ().zzH(this.zzPS.zzKJ);
        }
        if (TextUtils.isEmpty(this.zzPS.zzRW) || !zzgd.zzFb.get().booleanValue()) {
            return;
        }
        zzpk.zzbf("Received cookie from server. Setting webview cookie in CookieManager.");
        CookieManager zzX = com.google.android.gms.ads.internal.zzw.zzcO().zzX(this.mContext);
        if (zzX == null) {
            return;
        }
        zzX.setCookie("googleads.g.doubleclick.net", this.zzPS.zzRW);
    }
}
