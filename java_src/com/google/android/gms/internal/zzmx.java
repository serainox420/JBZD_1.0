package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzmf;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzqp;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzmx extends zzpj {
    private final Context mContext;
    private final Object zzPU;
    private final zzmf.zza zzRl;
    private final zzmk.zza zzRm;
    private zzji.zzc zzTa;
    static final long zzSV = TimeUnit.SECONDS.toMillis(10);
    private static final Object zztX = new Object();
    static boolean zzSW = false;
    private static zzji zzQn = null;
    private static zzie zzSX = null;
    private static zzii zzSY = null;
    private static zzid zzSZ = null;

    /* loaded from: classes2.dex */
    public static class zza implements zzpt<zzjf> {
        @Override // com.google.android.gms.internal.zzpt
        /* renamed from: zza */
        public void zzd(zzjf zzjfVar) {
            zzmx.zzc(zzjfVar);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb implements zzpt<zzjf> {
        @Override // com.google.android.gms.internal.zzpt
        /* renamed from: zza */
        public void zzd(zzjf zzjfVar) {
            zzmx.zzb(zzjfVar);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc implements zzid {
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            String str = map.get("request_id");
            String valueOf = String.valueOf(map.get("errors"));
            zzpk.zzbh(valueOf.length() != 0 ? "Invalid request: ".concat(valueOf) : new String("Invalid request: "));
            zzmx.zzSY.zzac(str);
        }
    }

    public zzmx(Context context, zzmk.zza zzaVar, zzmf.zza zzaVar2) {
        super(true);
        this.zzPU = new Object();
        this.zzRl = zzaVar2;
        this.mContext = context;
        this.zzRm = zzaVar;
        synchronized (zztX) {
            if (!zzSW) {
                zzSY = new zzii();
                zzSX = new zzie(context.getApplicationContext(), zzaVar.zzvn);
                zzSZ = new zzc();
                zzQn = new zzji(this.mContext.getApplicationContext(), this.zzRm.zzvn, zzgd.zzBh.get(), new zzb(), new zza());
                zzSW = true;
            }
        }
    }

    private JSONObject zza(zzmk zzmkVar, String str) {
        zzni zzniVar;
        AdvertisingIdClient.Info info;
        Bundle bundle = zzmkVar.zzRy.extras.getBundle("sdk_less_server_data");
        if (bundle == null) {
            return null;
        }
        try {
            zzniVar = com.google.android.gms.ads.internal.zzw.zzcV().zzA(this.mContext).get();
        } catch (Exception e) {
            zzpk.zzc("Error grabbing device info: ", e);
            zzniVar = null;
        }
        JSONObject zza2 = zznd.zza(this.mContext, new zzna().zzf(zzmkVar).zza(zzniVar));
        if (zza2 == null) {
            return null;
        }
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(this.mContext);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e2) {
            zzpk.zzc("Cannot get advertising id info", e2);
            info = null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("request_id", str);
        hashMap.put("request_param", zza2);
        hashMap.put("data", bundle);
        if (info != null) {
            hashMap.put("adid", info.getId());
            hashMap.put("lat", Integer.valueOf(info.isLimitAdTrackingEnabled() ? 1 : 0));
        }
        try {
            return com.google.android.gms.ads.internal.zzw.zzcM().zzQ(hashMap);
        } catch (JSONException e3) {
            return null;
        }
    }

    protected static void zzb(zzjf zzjfVar) {
        zzjfVar.zza("/loadAd", zzSY);
        zzjfVar.zza("/fetchHttpRequest", zzSX);
        zzjfVar.zza("/invalidRequest", zzSZ);
    }

    protected static void zzc(zzjf zzjfVar) {
        zzjfVar.zzb("/loadAd", zzSY);
        zzjfVar.zzb("/fetchHttpRequest", zzSX);
        zzjfVar.zzb("/invalidRequest", zzSZ);
    }

    private zzmn zze(zzmk zzmkVar) {
        final String zzkL = com.google.android.gms.ads.internal.zzw.zzcM().zzkL();
        final JSONObject zza2 = zza(zzmkVar, zzkL);
        if (zza2 == null) {
            return new zzmn(0);
        }
        long elapsedRealtime = com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime();
        Future<JSONObject> zzab = zzSY.zzab(zzkL);
        zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzmx.2
            @Override // java.lang.Runnable
            public void run() {
                zzmx.this.zzTa = zzmx.zzQn.zzgO();
                zzmx.this.zzTa.zza(new zzqp.zzc<zzjj>() { // from class: com.google.android.gms.internal.zzmx.2.1
                    @Override // com.google.android.gms.internal.zzqp.zzc
                    /* renamed from: zzb */
                    public void zzd(zzjj zzjjVar) {
                        try {
                            zzjjVar.zza("AFMA_getAdapterLessMediationAd", zza2);
                        } catch (Exception e) {
                            zzpk.zzb("Error requesting an ad url", e);
                            zzmx.zzSY.zzac(zzkL);
                        }
                    }
                }, new zzqp.zza() { // from class: com.google.android.gms.internal.zzmx.2.2
                    @Override // com.google.android.gms.internal.zzqp.zza
                    public void run() {
                        zzmx.zzSY.zzac(zzkL);
                    }
                });
            }
        });
        try {
            JSONObject jSONObject = zzab.get(zzSV - (com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime() - elapsedRealtime), TimeUnit.MILLISECONDS);
            if (jSONObject == null) {
                return new zzmn(-1);
            }
            zzmn zza3 = zznd.zza(this.mContext, zzmkVar, jSONObject.toString());
            return (zza3.errorCode == -3 || !TextUtils.isEmpty(zza3.body)) ? zza3 : new zzmn(3);
        } catch (InterruptedException e) {
            return new zzmn(-1);
        } catch (CancellationException e2) {
            return new zzmn(-1);
        } catch (ExecutionException e3) {
            return new zzmn(0);
        } catch (TimeoutException e4) {
            return new zzmn(2);
        }
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
        synchronized (this.zzPU) {
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzmx.3
                @Override // java.lang.Runnable
                public void run() {
                    if (zzmx.this.zzTa != null) {
                        zzmx.this.zzTa.release();
                        zzmx.this.zzTa = null;
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        zzpk.zzbf("SdkLessAdLoaderBackgroundTask started.");
        String zzF = com.google.android.gms.ads.internal.zzw.zzdl().zzF(this.mContext);
        zzmk zzmkVar = new zzmk(this.zzRm, -1L, com.google.android.gms.ads.internal.zzw.zzdl().zzD(this.mContext), com.google.android.gms.ads.internal.zzw.zzdl().zzE(this.mContext), zzF);
        com.google.android.gms.ads.internal.zzw.zzdl().zzh(this.mContext, zzF);
        zzmn zze = zze(zzmkVar);
        final zzpb.zza zzaVar = new zzpb.zza(zzmkVar, zze, null, null, zze.errorCode, com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime(), zze.zzSr, null);
        zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzmx.1
            @Override // java.lang.Runnable
            public void run() {
                zzmx.this.zzRl.zza(zzaVar);
                if (zzmx.this.zzTa != null) {
                    zzmx.this.zzTa.release();
                    zzmx.this.zzTa = null;
                }
            }
        });
    }
}
