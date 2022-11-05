package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.security.NetworkSecurityPolicy;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.zzdd;
import com.google.android.gms.internal.zzpm;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
@zzme
/* loaded from: classes.dex */
public class zzpe implements zzdd.zzb, zzpm.zzb {
    private Context mContext;
    private String zzIA;
    private final String zzWD;
    private final zzpf zzWE;
    private String zzWM;
    private String zzWN;
    private zzcs zzsu;
    private zzqh zztt;
    private final Object zzrJ = new Object();
    private BigInteger zzWF = BigInteger.ONE;
    private final HashSet<zzpc> zzWG = new HashSet<>();
    private final HashMap<String, zzph> zzWH = new HashMap<>();
    private boolean zzWI = false;
    private boolean zzUe = true;
    private int zzWJ = 0;
    private boolean zztZ = false;
    private zzgf zzWK = null;
    private boolean zzUf = true;
    private boolean zzUg = true;
    private zzde zzWL = null;
    private zzdc zzxP = null;
    private Boolean zzWO = null;
    private boolean zzWP = false;
    private boolean zzWQ = false;
    private boolean zzUo = false;
    private boolean zzWR = false;
    private String zzWS = "";
    private long zzWT = 0;
    private long zzWU = 0;
    private long zzWV = 0;
    private int zzWW = -1;
    private final AtomicInteger zzWX = new AtomicInteger(0);

    public zzpe(zzpo zzpoVar) {
        this.zzWD = zzpoVar.zzkM();
        this.zzWE = new zzpf(this.zzWD);
    }

    public Resources getResources() {
        if (this.zztt.zzYY) {
            return this.mContext.getResources();
        }
        try {
            DynamiteModule zza = DynamiteModule.zza(this.mContext, DynamiteModule.zzaRU, ModuleDescriptor.MODULE_ID);
            if (zza == null) {
                return null;
            }
            return zza.zzBS().getResources();
        } catch (DynamiteModule.zza e) {
            zzpk.zzc("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public String getSessionId() {
        return this.zzWD;
    }

    public void zzF(boolean z) {
        synchronized (this.zzrJ) {
            if (this.zzUf != z) {
                zzpm.zze(this.mContext, z);
            }
            this.zzUf = z;
            zzde zzH = zzH(this.mContext);
            if (zzH != null && !zzH.isAlive()) {
                zzpk.zzbg("start fetching content...");
                zzH.zzej();
            }
        }
    }

    public void zzG(boolean z) {
        synchronized (this.zzrJ) {
            if (this.zzUg != z) {
                zzpm.zze(this.mContext, z);
            }
            zzpm.zze(this.mContext, z);
            this.zzUg = z;
            zzde zzH = zzH(this.mContext);
            if (zzH != null && !zzH.isAlive()) {
                zzpk.zzbg("start fetching content...");
                zzH.zzej();
            }
        }
    }

    public zzde zzH(Context context) {
        if (!zzgd.zzCc.get().booleanValue()) {
            return null;
        }
        com.google.android.gms.common.util.zzt.zzzg();
        if (!zzgd.zzCk.get().booleanValue() && !zzgd.zzCi.get().booleanValue()) {
            return null;
        }
        if (zzkg() && zzkh()) {
            return null;
        }
        synchronized (this.zzrJ) {
            if (Looper.getMainLooper() == null || context == null) {
                return null;
            }
            if (this.zzxP == null) {
                this.zzxP = new zzdc();
            }
            if (this.zzWL == null) {
                this.zzWL = new zzde(this.zzxP, zzmc.zzb(this.mContext, this.zztt));
            }
            this.zzWL.zzej();
            return this.zzWL;
        }
    }

    public void zzH(boolean z) {
        this.zzWR = z;
    }

    public void zzI(boolean z) {
        synchronized (this.zzrJ) {
            this.zzWP = z;
        }
    }

    public Bundle zza(Context context, zzpg zzpgVar, String str) {
        Bundle bundle;
        synchronized (this.zzrJ) {
            bundle = new Bundle();
            bundle.putBundle("app", this.zzWE.zzo(context, str));
            Bundle bundle2 = new Bundle();
            for (String str2 : this.zzWH.keySet()) {
                bundle2.putBundle(str2, this.zzWH.get(str2).toBundle());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzpc> it = this.zzWG.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toBundle());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            zzpgVar.zza(this.zzWG);
            this.zzWG.clear();
        }
        return bundle;
    }

    public void zza(zzpc zzpcVar) {
        synchronized (this.zzrJ) {
            this.zzWG.add(zzpcVar);
        }
    }

    public void zza(Boolean bool) {
        synchronized (this.zzrJ) {
            this.zzWO = bool;
        }
    }

    public void zza(String str, zzph zzphVar) {
        synchronized (this.zzrJ) {
            this.zzWH.put(str, zzphVar);
        }
    }

    public void zza(Throwable th, String str) {
        zzmc.zzb(this.mContext, this.zztt).zza(th, str);
    }

    public Future zzaU(String str) {
        Future zzp;
        synchronized (this.zzrJ) {
            if (str != null) {
                if (!str.equals(this.zzWM)) {
                    this.zzWM = str;
                    zzp = zzpm.zzp(this.mContext, str);
                }
            }
            zzp = null;
        }
        return zzp;
    }

    public Future zzaV(String str) {
        Future zzq;
        synchronized (this.zzrJ) {
            if (str != null) {
                if (!str.equals(this.zzWN)) {
                    this.zzWN = str;
                    zzq = zzpm.zzq(this.mContext, str);
                }
            }
            zzq = null;
        }
        return zzq;
    }

    Future zzah(int i) {
        Future zza;
        synchronized (this.zzrJ) {
            this.zzWW = i;
            zza = zzpm.zza(this.mContext, i);
        }
        return zza;
    }

    public void zzb(HashSet<zzpc> hashSet) {
        synchronized (this.zzrJ) {
            this.zzWG.addAll(hashSet);
        }
    }

    public Future zzc(Context context, boolean z) {
        Future future;
        synchronized (this.zzrJ) {
            if (z != this.zzUe) {
                this.zzUe = z;
                future = zzpm.zzc(context, z);
            } else {
                future = null;
            }
        }
        return future;
    }

    @TargetApi(23)
    public void zzc(Context context, zzqh zzqhVar) {
        synchronized (this.zzrJ) {
            if (!this.zztZ) {
                this.mContext = context.getApplicationContext();
                this.zztt = zzqhVar;
                com.google.android.gms.ads.internal.zzw.zzcP().zza(this);
                zzpm.zza(context, this);
                zzpm.zzb(context, this);
                zzpm.zzc(context, this);
                zzpm.zzd(context, this);
                zzpm.zze(context, this);
                zzpm.zzf(context, this);
                zzpm.zzg(context, this);
                zzpm.zzh(context, this);
                zzpm.zzi(context, this);
                zzky();
                this.zzIA = com.google.android.gms.ads.internal.zzw.zzcM().zzu(context, zzqhVar.zzba);
                if (com.google.android.gms.common.util.zzt.zzzp() && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    this.zzWQ = true;
                }
                this.zzsu = new zzcs(context.getApplicationContext(), this.zztt, com.google.android.gms.ads.internal.zzw.zzcM().zzd(context, zzqhVar));
                zzkA();
                com.google.android.gms.ads.internal.zzw.zzda().zzv(this.mContext);
                this.zztZ = true;
            }
        }
    }

    public Future zzd(Context context, boolean z) {
        Future future;
        synchronized (this.zzrJ) {
            if (z != this.zzUo) {
                this.zzUo = z;
                future = zzpm.zzf(context, z);
            } else {
                future = null;
            }
        }
        return future;
    }

    @Override // com.google.android.gms.internal.zzpm.zzb
    public void zzh(Bundle bundle) {
        synchronized (this.zzrJ) {
            this.zzUe = bundle.getBoolean("use_https", this.zzUe);
            this.zzWJ = bundle.getInt("webview_cache_version", this.zzWJ);
            if (bundle.containsKey("content_url_opted_out")) {
                zzF(bundle.getBoolean("content_url_opted_out"));
            }
            if (bundle.containsKey("content_url_hashes")) {
                this.zzWM = bundle.getString("content_url_hashes");
            }
            this.zzUo = bundle.getBoolean("auto_collect_location", this.zzUo);
            if (bundle.containsKey("content_vertical_opted_out")) {
                zzG(bundle.getBoolean("content_vertical_opted_out"));
            }
            if (bundle.containsKey("content_vertical_hashes")) {
                this.zzWN = bundle.getString("content_vertical_hashes");
            }
            this.zzWS = bundle.containsKey("app_settings_json") ? bundle.getString("app_settings_json") : this.zzWS;
            this.zzWT = bundle.getLong("app_settings_last_update_ms", this.zzWT);
            this.zzWU = bundle.getLong("app_last_background_time_ms", this.zzWU);
            this.zzWW = bundle.getInt("request_in_session_count", this.zzWW);
            this.zzWV = bundle.getLong("first_ad_req_time_ms", this.zzWV);
        }
    }

    public void zzk(Context context, String str) {
        zzpm.zzr(context, str);
    }

    @Override // com.google.android.gms.internal.zzdd.zzb
    public void zzk(boolean z) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis();
        if (!z) {
            zzo(currentTimeMillis);
            zzah(this.zzWE.zzku());
        } else if (currentTimeMillis - this.zzWU > zzgd.zzCR.get().longValue()) {
            this.zzWE.zzai(-1);
        } else {
            this.zzWE.zzai(this.zzWW);
        }
    }

    void zzkA() {
        try {
            this.zzWK = com.google.android.gms.ads.internal.zzw.zzcT().zza(new zzge(this.mContext, this.zztt.zzba));
        } catch (IllegalArgumentException e) {
            zzpk.zzc("Cannot initialize CSI reporter.", e);
        }
    }

    public void zzkB() {
        this.zzWX.incrementAndGet();
    }

    public void zzkC() {
        this.zzWX.decrementAndGet();
    }

    public int zzkD() {
        return this.zzWX.get();
    }

    public boolean zzkg() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzUf;
        }
        return z;
    }

    public boolean zzkh() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzUg;
        }
        return z;
    }

    public String zzki() {
        String bigInteger;
        synchronized (this.zzrJ) {
            bigInteger = this.zzWF.toString();
            this.zzWF = this.zzWF.add(BigInteger.ONE);
        }
        return bigInteger;
    }

    public zzpf zzkj() {
        zzpf zzpfVar;
        synchronized (this.zzrJ) {
            zzpfVar = this.zzWE;
        }
        return zzpfVar;
    }

    public zzgf zzkk() {
        zzgf zzgfVar;
        synchronized (this.zzrJ) {
            zzgfVar = this.zzWK;
        }
        return zzgfVar;
    }

    public boolean zzkl() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzWI;
            this.zzWI = true;
        }
        return z;
    }

    public boolean zzkm() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzUe || this.zzWQ;
        }
        return z;
    }

    public String zzkn() {
        String str;
        synchronized (this.zzrJ) {
            str = this.zzIA;
        }
        return str;
    }

    public String zzko() {
        String str;
        synchronized (this.zzrJ) {
            str = this.zzWM;
        }
        return str;
    }

    public String zzkp() {
        String str;
        synchronized (this.zzrJ) {
            str = this.zzWN;
        }
        return str;
    }

    public Boolean zzkq() {
        Boolean bool;
        synchronized (this.zzrJ) {
            bool = this.zzWO;
        }
        return bool;
    }

    public boolean zzkr() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzUo;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzks() {
        long j;
        synchronized (this.zzrJ) {
            j = this.zzWU;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long zzkt() {
        long j;
        synchronized (this.zzrJ) {
            j = this.zzWV;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzku() {
        int i;
        synchronized (this.zzrJ) {
            i = this.zzWW;
        }
        return i;
    }

    public boolean zzkv() {
        return this.zzWR;
    }

    public zzpd zzkw() {
        zzpd zzpdVar;
        synchronized (this.zzrJ) {
            zzpdVar = new zzpd(this.zzWS, this.zzWT);
        }
        return zzpdVar;
    }

    public zzcs zzkx() {
        return this.zzsu;
    }

    public void zzky() {
        zzmc.zzb(this.mContext, this.zztt);
    }

    public boolean zzkz() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzWP;
        }
        return z;
    }

    public void zzl(Context context, String str) {
        zzpm.zzs(context, str);
    }

    public boolean zzm(Context context, String str) {
        return zzpm.zzt(context, str);
    }

    public Future zzn(Context context, String str) {
        Future zza;
        this.zzWT = com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis();
        synchronized (this.zzrJ) {
            if (str != null) {
                if (!str.equals(this.zzWS)) {
                    this.zzWS = str;
                    zza = zzpm.zza(context, str, this.zzWT);
                }
            }
            zza = null;
        }
        return zza;
    }

    Future zzo(long j) {
        Future zza;
        synchronized (this.zzrJ) {
            this.zzWU = j;
            zza = zzpm.zza(this.mContext, j);
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Future zzp(long j) {
        Future zzb;
        synchronized (this.zzrJ) {
            this.zzWV = j;
            zzb = zzpm.zzb(this.mContext, j);
        }
        return zzb;
    }
}
